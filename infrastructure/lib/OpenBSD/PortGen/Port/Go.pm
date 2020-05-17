# $OpenBSD: Go.pm,v 1.2 2020/05/17 14:33:04 abieber Exp $
#
# Copyright (c) 2019 Aaron Bieber <abieber@openbsd.org>
#
# Permission to use, copy, modify, and distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
# WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
# ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
# WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
# ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
# OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

package OpenBSD::PortGen::Port::Go;

use 5.028;
use utf8;
use warnings;
use strict;
use warnings  qw(FATAL utf8);    # fatalize encoding glitches
use open      qw(:std :encoding(UTF-8)); # undeclared streams in UTF-8
use OpenBSD::PackageName;
use OpenBSD::PortGen::Utils qw( fetch );

use parent 'OpenBSD::PortGen::Port';

use Carp;
use Cwd;
use File::Temp qw/ tempdir /;
use Data::Dumper;

use OpenBSD::PortGen::Dependency;

my $license_map = {
	'BSD-2-Clause' => 'BSD',
	'BSD-3-Clause' => 'BSD3',
};

sub ecosystem_prefix
{
	my $self = shift;
	return '';
}

sub base_url
{
	my $self = shift;
	return 'https://proxy.golang.org/';
}

sub _go_lic_info
{
	my ( $self, $module ) = @_;
	my $html = fetch("https://pkg.go.dev/mod/" . $module);
	my $license = "unknown";
	if ($html =~ m/<a.+tab=licenses.+>(.+)<\/a>/) {
		$license = $1;
		$license = $license_map->{$license} || $license;
	}
	return $license;
}

sub _go_determine_name
{
	# Some modules end in "v1" or "v2", if we find one of these, we need
	# to set PKGNAME to something up a level
	my ( $self, $module ) = @_;
	my $json = $self->get_json( $module . '/@latest' );

	if ($json->{Version} =~ m/incompatible/) {
		my $msg = "${module} $json->{Version} is incompatible with Go modules.";
		croak $msg;
	}

	if ($module =~ m/v\d$/) {
		$json->{Name}   = ( split '/', $module )[-2];
	} else {
		$json->{Name}   = ( split '/', $module )[-1];
	}

	$json->{Module} = $module;

	return $json;
}

sub get_dist_info
{
	my ( $self, $module ) = @_;

	my $json = $self->_go_determine_name($module);

	my %mods;
	for ( $self->_go_mod_graph($json) ) {
		my ($direct, $ephemeral) = @{$_};

		for my $d ( $direct, $ephemeral ) {
			next unless $d->{Version};
			$mods{ $d->{Module} }{ $d->{Version} } ||= $d;
		}
	}

	# Filter dependencies to the one with the highest version
	foreach my $mod ( sort keys %mods ) {
		# Sort semver numerically then the rest alphanumeric.
		# This is overkill for sorting, but I already wrote it
		my @versions =
		    map { $_->[0] }
		    sort {
		        $a->[1] <=> $b->[1]
		     || $a->[2] <=> $b->[2]
		     || $a->[3] <=> $b->[3]
		     || $a->[4] cmp $b->[4]
		    }
		    map { $_->[1] =~ s/^v//; $_ }
		    map { [ $_, split /[\.\+-]/, $_, 4 ] }
		    keys %{ $mods{$mod} };

		push @{ $json->{Dist} }, $mods{$mod}{ $versions[-1] };
		push @{ $json->{Mods} }, map { $mods{$mod}{$_} } @versions;
	}

	$json->{License} = $self->_go_lic_info($module);

	return $json;
}

sub _go_mod_graph
{
	my ($self, $json) = @_;
	my $dir = tempdir(CLEANUP => 0);

	my $mod = $self->get("$json->{Module}/\@v/$json->{Version}.mod");
	my ($module) = $mod =~ /\bmodule\s+(.*?)\s/;
	#my ($module) = $mod =~ /\bmodule\s+(.*)\n/;
	#$module =~ s/\s+$//;
	unless ( $json->{Module} eq $module ) {
		my $msg = "Module $json->{Module} doesn't match $module";
		warn "$msg\n";
		croak $msg;
	}

	{
		open my $fh, '>', $dir . "/go.mod" or die $!;
		print $fh $mod;
		close $fh;
	}

	my $old_cwd = getcwd();
	chdir $dir or die "Unable to chdir '$dir': $!";

	my @mods;
	{
		# Outputs: "direct_dep ephemeral_dep"
		local $ENV{GOPATH} = "$dir/go";
		open my $fh, '-|', qw< go mod graph >
		    or die "Unable to spawn 'go mod path': $!";
		@mods = readline $fh;
		close $fh
		    or die "Error closing pipe to 'go mod path': $!";
	}

	chdir $old_cwd or die "Unable to chdir '$old_cwd': $!";

	chomp @mods;

	# parse the graph into pairs of hashrefs
	return map { [
	    map {
	        my ($m, $v) = split /@/;
	        { Module => $m, Version => $v };
	    } split /\s/
	] } grep { $_ } @mods;
}

sub get_ver_info
{
	my ( $self, $module ) = @_;
	my $version_list = $self->get( $module . '/@v/list' );
	my $version = "v0.0.0";
	my $ret;

	# If list isn't populated, it's likely that upstream doesn't follow
	# semver, this means we will have to fallback to @latest to get the
	# version information.
	if ($version_list eq "") {
		$ret = $self->get_json( $module . '/@latest' );
	} else {
		my @parts = split("\n", $version_list);
		for my $v ( @parts ) {
			my $a = OpenBSD::PackageName::version->from_string($version);
			my $b = OpenBSD::PackageName::version->from_string($v);
			if ($a->compare($b)) {
				$version = $v;
			}
		}
		$ret = { Module => $module, Version => $version };
	}

	return $ret;
}

sub name_new_port
{
	my ( $self, $di ) = @_;

	my $name = $di->{Name};
	$name = $self->SUPER::name_new_port($name);
	$name = "go/$name" unless $name =~ m{/};

	return $name;
}

sub fill_in_makefile
{
	my ( $self, $di, $vi ) = @_;

	$self->set_modules('lang/go');
	$self->set_comment("todo");
	$self->set_descr("TODO");

	$self->set_license($di->{License});

	$self->set_other( MODGO_MODNAME => $di->{Module} );
	$self->set_other( MODGO_VERSION => $di->{Version} );
	$self->set_distname($di->{Name} . '-${MODGO_VERSION}');

	my @parts = split("-", $di->{Version});
	if (@parts > 1) {
		$self->set_pkgname($di->{Name} . "-" . $parts[1])
		    if $parts[1] =~ m/\d{6}/;
	} else {
		$parts[0] =~ s/^v//;
		$self->set_pkgname($di->{Name} . "-" . $parts[0]);
	}

	my @dist = map { [ $_->{Module}, $_->{Version} ] }
	    @{ $di->{Dist} || [] };
	my @mods = map { [ $_->{Module}, $_->{Version} ] }
	    @{ $di->{Mods} };

	# Turn the deps into tab separated columns
	foreach my $s ( \@dist, \@mods ) {
		next unless @{$s}; # if there aren't any, don't try
		my ($length) = sort { $b <=> $a } map { length $_->[0] } @$s;
		my $n = ( 1 + int $length / 8 );
		@{$s} = map {
		    ( my $l = $_->[0] ) =~ s/\p{Upper}/!\L$&/g;
		    my $tabs = "\t" x ( $n - int( length($l) / 8 ) );
		    "$l$tabs $_->[1]"
		 } @{$s};
	}

	$self->set_other( MODGO_MODULES  => \@dist ) if @dist;
	$self->set_other( MODGO_MODFILES => \@mods ) if @mods;
}

sub try_building
{
	my $self = shift;
	$self->make_fake();
}

sub postextract
{
}

sub get_deps
{
	my ( $self, $di, $wrksrc ) = @_;
	my $deps = OpenBSD::PortGen::Dependency->new();

	return $deps->format;
}

sub get_config_style
{
}

1;
