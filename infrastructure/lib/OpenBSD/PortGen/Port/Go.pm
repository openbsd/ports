# $OpenBSD: Go.pm,v 1.5 2020/06/26 23:26:04 abieber Exp $
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
	my ($dist, $mods) = $self->_go_mod_info($json);
	$json->{License} = $self->_go_lic_info($module);

	$json->{Dist} = $dist if @$dist > 0;
	$json->{Mods} = $mods if @$mods > 0;

	return $json;
}

sub _run
{
	my ($self, $dir, @cmd) = @_;
	my $fh;

	my $pid = open($fh, "-|");
	if (!defined $pid) {
		 die "unable to fork";
	}

	if ($pid == 0) {
		chdir $dir or die "Unable to chdir '$dir': $!";
		$ENV{GOPATH} = "$dir/go";
		$ENV{GO111MODULE} = "on";
		# Outputs: "dep version"
		$DB::inhibit_exit = 0;
		exec @cmd;
		die "exec didn't work: $?";
	}

	my @output = <$fh>;
	chomp @output;
	my $c = join(" ", @cmd);
	close $fh or die "Unable to close pipe '$c': $!";
	return @output;
}

sub _go_mod_info
{
	my ($self, $json) = @_;
	my $dir = tempdir(CLEANUP => 0);

	my $mod = $self->get("$json->{Module}/\@v/$json->{Version}.mod");
	my ($module) = $mod =~ /\bmodule\s+(.*?)\s/;

	unless ( $json->{Module} eq $module ) {
		my $msg = "Module $json->{Module} doesn't match $module";
		croak $msg;
	}

	open my $fh, '>', $dir . "/go.mod" or die $!;
	print $fh $mod;
	close $fh;

	# Outputs: "dep version"
	my @raw_deps = $self->_run($dir, qw(go list -m all));
	my @deps;
	my $all_deps = {};
	foreach my $dep (@raw_deps) {
		next if $dep eq $json->{Module};
		if ($dep =~ m/=>/) {
			foreach my $d (split(/ => /, $dep)) {
				my $smod = $self->_go_mod_normalize($d);
				push @deps, $smod unless defined $all_deps->{$smod};
				$all_deps->{$smod} = 1;
			}
		} else {
			my $nmod = $self->_go_mod_normalize($dep);
			push @deps, $nmod unless defined $all_deps->{$nmod};
			$all_deps->{$nmod} = 1;
		}
	}

	# Outputs: "dep@version subdep@version"
	my @raw_mods =  $self->_run($dir, qw(go mod graph));
	my @mods;

	foreach my $mod (@raw_mods) {
		carp Dumper $mod if ($mod =~ m/markbates/);
		foreach my $m (split(/ /, $mod)) {
			$m =~ s/@/ /;
			$m = $self->_go_mod_normalize($m);
			if (! defined $all_deps->{$m}) {
				push @mods, $m unless $m eq $json->{Module};
				$all_deps->{$m} = 1;
			}
		}
	}

	foreach my $fl ( \@deps, \@mods ) {
		next unless @$fl > 0; # if there aren't any, don't try
		my @s = map {
			my @f = split(/ /, $_);
			[$f[0], $f[1]];
		} @$fl;
		my ($length) = sort { $b <=> $a } map { length $_->[0] } @s;
		my $n = ( 1 + int $length / 8 );
		@s = map {
			my $tabs = "\t" x ( $n - int( length($_->[0]) / 8 ) );
			"\t$_->[0]$tabs $_->[1]"
		} @s;
		@$fl = @s;
	}


	@deps = sort @deps;
	@mods = sort @mods;

	return ( \@deps, \@mods );
}

sub _go_mod_normalize
{
	my ( $self, $line) = @_;
	chomp $line;
	$line =~ s/\p{Upper}/!\L$&/g;
	$line =~ s/\s+/ /g;
	return $line;
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

	$self->set_other( MODGO_MODULES  => "\\\n" . join(" \\\n", @{$di->{Dist}})) if $di->{Dist};
	$self->set_other( MODGO_MODFILES => "\\\n" . join(" \\\n", @{$di->{Mods}})) if $di->{Mods};
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
