# $OpenBSD: Port.pm,v 1.3 2016/04/26 17:24:38 tsg Exp $
#
# Copyright (c) 2015 Giannis Tsaraias <tsg@openbsd.org>
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

package OpenBSD::PortGen::Port;

use 5.012;
use warnings;

use Cwd;
use File::Path qw( make_path );
use JSON::PP;
use Text::Wrap;

use OpenBSD::PortGen::License qw( is_good pretty_license );
use OpenBSD::PortGen::Utils qw( add_to_new_ports base_dir fetch ports_dir );

sub new
{
	my ( $class, %args ) = @_;
	my $self = bless {%args}, $class;
	return $self;
}

sub get
{
	return fetch( shift->base_url() . shift );
}

sub get_json
{
	return decode_json( shift->get(shift) );
}

sub get_json_file
{
	my ( $self, $file ) = @_;

	open my $h, '<', $file or die $!;
	my $data = do { local $/ = undef; <$h> };
	return decode_json $data;
}

sub set_descr
{
	my ( $self, $text ) = @_;

	$self->{descr} = $self->_format_descr($text);
}

sub write_descr
{
	my $self = shift;

	my $text = $self->{descr};

	if ( not -d 'pkg' ) {
		mkdir 'pkg' or die $!;
	}

	open my $descr, '>', 'pkg/DESCR'
	    or die $!;

	say $descr $text;
}

sub _format_descr
{
	my ( $self, $text ) = @_;

	return 'No description available for this module.'
	    if not $text or $text =~ /^\s*$/;

	$text =~ s/^ *//mg;
	$text =~ s/^\s*|\s*$//g;

	my $lines = split /\n/, $text;

	if ( $lines > 5 ) {
		my @paragraphs = split /\n\n/, $text;
		$text = $paragraphs[0];
	}

	local $Text::Wrap::columns = 80;
	return Text::Wrap::wrap( '', '', $text );
}

sub set_comment
{
	my ( $self, $comment ) = @_;

	unless ($comment) {
		$self->{COMMENT} = 'no comment available';
		return;
	}

	$comment =~ s/\n/ /g;
	$self->{full_comment} = $comment if length $comment > 60;
	$self->{COMMENT} = $self->_format_comment($comment);
}

sub set_distname
{
	my ( $self, $distname ) = @_;

	my $prefix = $self->ecosystem_prefix();

	# use foo-bar instead of foo-foo-bar as PKGNAME
	if ( $distname =~ /^$prefix/ ) {
		$self->{PKGNAME}  = ( $distname =~ s/^$prefix//r );
		$self->{DISTNAME} = $prefix . '${PKGNAME}';
	} else {
		$self->{DISTNAME} = $distname;
	}
}

sub set_license
{
	my ( $self, $license ) = @_;

	if ( is_good($license) ) {
		$self->{PERMIT_PACKAGE_CDROM} = 'Yes';
	} else {
		$self->{PERMIT_PACKAGE_CDROM} = 'unknown license';
		$self->{PERMIT_PACKAGE_FTP}   = 'unknown license';
		$self->{PERMIT_DISTFILES_FTP} = 'unknown license';
	}

	$self->{license} = pretty_license($license);
}

sub set_modules
{
	my ( $self, $modules ) = @_;

	$self->{MODULES} = $modules;
}

sub set_categories
{
	my ( $self, $categories ) = @_;

	$self->{CATEGORIES} = $categories;
}

sub set_build_deps
{
	my ( $self, $build_deps ) = @_;

	# Makefile.template is missing a tab for BUILD_DEPENDS
	# and we want the port to be pretty, so add one
	$self->{BUILD_DEPENDS} = "\t" . $build_deps if $build_deps;
}

sub set_run_deps
{
	my ( $self, $run_deps ) = @_;

	$self->{RUN_DEPENDS} = $run_deps;
}

sub set_test_deps
{
	my ( $self, $test_deps ) = @_;

	$self->{TEST_DEPENDS} = $test_deps;
}

sub set_other
{
	my ( $self, $var, $value ) = @_;

	$self->{$var} = $value;
}

sub get_other
{
	my ( $self, $var ) = @_;

	return $self->{$var};
}

sub write_makefile
{
	my $self = shift;

	open my $tmpl, '<',
	    ports_dir() . '/infrastructure/templates/Makefile.template'
	    or die $!;
	open my $mk, '>', 'Makefile' or die $!;

	my $output = "# \$OpenBSD\$\n";
	my %vars_found;

	# such a mess, should fix
	while ( defined( my $line = <$tmpl> ) ) {
		my ( $value, $other_stuff );

		# copy MAINTAINER line as is
		if ( $line =~ /^MAINTAINER/ ) {
			$output .= $line and next;
		}

		if ( $line =~ /(^#?([A-Z_]+)\s+\??=\s+)/ ) {
			next unless defined $self->{$2};
			$vars_found{$2} = 1;

			( $value, $other_stuff ) = ( $self->{$2}, $1 );

			$other_stuff =~ s/^#//;
			$other_stuff =~ s/(\?\?\?|$)/$value\n/;

			# handle cases where replacing '???' isn't enough
			if ( $other_stuff =~ /^PERMIT_PACKAGE_CDROM/ ) {
				$output .= "# $self->{license}\n";
			} elsif ( $other_stuff =~ /_DEPENDS/ ) {
				$other_stuff = "\n" . $other_stuff;
			} elsif ( $other_stuff =~ /^COMMENT/ ) {
				$output .= "# original: $self->{full_comment}\n"
				    if $self->{full_comment};
			} elsif ( $other_stuff =~ /^WANTLIB/ ) {
				$other_stuff =~ s/=/+=/;
			}

			$output .= $other_stuff;
		}

		$output .= $line if $line =~ /^\s+$/;
	}

	# also write variables not found in the template
	my @unwritten_vars;

	for my $var ( keys %{$self} ) {
		next unless $self->{$var};
		next unless $var eq uc $var;
		push @unwritten_vars, $var unless $vars_found{$var};
	}

	# the ordering should be consistent between runs
	@unwritten_vars = sort @unwritten_vars;

	for my $var (@unwritten_vars) {

		# temp fix, should make saner
		my $tabs = length $var > 11 ? "\t" : "\t\t";
		$output .= "\n$var =$tabs$self->{$var}\n";
	}

	$output .= "\n.include <bsd.port.mk>\n";
	$output =~ s/\n{2,}/\n\n/g;

	print $mk $output;
}

sub _format_comment
{
	my ( $self, $text ) = @_;

	return unless $text;

	$text =~ s/^(a|an) //i;
	$text =~ s/\n/ /g;
	$text =~ s/\.$//;
	$text =~ s/\s+$//;

	# Max comment length is 60. Try to cut it, but print full
	# version in Makefile for the porter to edit as needed.
	$text =~ s/ \S+$// while length $text > 60;

	return $text;
}

sub _make
{
	my $self = shift;
	system( 'make', @_ );
	return $? >> 8;
}

sub make_clean
{
	my $self = shift;
	return $self->_make('clean');
}

sub make_fetch
{
	my $self = shift;
	return $self->_make('fetch-all');
}

sub make_makesum
{
	shift->_make('makesum');
}

sub make_checksum
{
	shift->_make('checksum');
}

sub make_extract
{
	shift->_make('extract');
}

sub make_configure
{
	shift->_make('configure');
}

sub make_fake
{
	shift->_make('fake');
}

sub make_plist
{
	shift->_make('plist');
}

sub make_show
{
	my ( $self, $var ) = @_;
	chomp( my $output = qx{ make show=$var } );
	return $output;
}

sub make_portdir
{
	my ( $self, $name ) = @_;

	my $portdir = base_dir() . "/$name";
	make_path($portdir) unless -e $portdir;

	return $portdir;
}

sub make_port
{
	my ( $self, $di, $vi ) = @_;

	my $old_cwd  = getcwd();
	my $portname = $self->name_new_port($di);
	my $portdir  = $self->make_portdir($portname);
	chdir $portdir or die "couldn't chdir to $portdir: $!";

	$self->fill_in_makefile( $di, $vi );
	$self->write_makefile();

	$self->make_fetch();
	$self->make_makesum();
	$self->make_checksum();
	$self->make_extract();
	my $wrksrc = $self->make_show('WRKSRC');

	# children can override this to set any variables
	# that require extracted distfiles
	$self->postextract( $di, $wrksrc );

	$self->set_other( 'CONFIGURE_STYLE',
		$self->get_config_style( $di, $wrksrc ) );
	$self->write_makefile();

	$self->make_configure();

	my $deps = $self->get_deps( $di, $wrksrc );
	$self->set_build_deps( $deps->{build} );
	$self->set_run_deps( $deps->{run} );
	$self->set_test_deps( $deps->{test} );
	$self->write_makefile();

	# sometimes a make_fake() is not enough, need to run it more than
	# once to figure out which CONFIGURE_STYLE actually works
	$self->try_building();

	$self->make_plist();
	$self->write_descr();
	chdir $old_cwd or die "couldn't chdir to $old_cwd: $!";

	return add_to_new_ports($portdir);
}

sub port
{
	my ( $self, $module ) = @_;

	my $di = eval { $self->get_dist_info($module) };

	unless ($di) {
		warn "couldn't find dist for $module";
		return;
	}

	my $vi = eval { $self->get_ver_info($module) };

	unless ($vi) {
		warn "couldn't get version info for $module";
		return;
	}

	return $self->make_port( $di, $vi );
}

1;
