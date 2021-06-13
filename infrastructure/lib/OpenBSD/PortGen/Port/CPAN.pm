# $OpenBSD: CPAN.pm,v 1.9 2021/06/13 19:00:06 afresh1 Exp $
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

package OpenBSD::PortGen::Port::CPAN;

use 5.012;
use warnings;

use parent 'OpenBSD::PortGen::Port';

use File::Find qw( find );
use OpenBSD::PortGen::Dependency;
use OpenBSD::PortGen::Utils qw( fetch module_in_ports );

sub ecosystem_prefix
{
	my $self = shift;
	return 'p5-';
}

sub base_url
{
	my $self = shift;
	return 'https://fastapi.metacpan.org/v1/';
}

sub get_dist_info
{
	my ( $self, $module ) = @_;

	my $dist = $self->get_dist_for_module($module);

	return $self->get_json("release/$dist");
}

sub get_ver_info
{
	return 1;
}

sub get_dist_for_module
{
	my ( $self, $module ) = @_;

	return $self->get_json("module/$module?fields=distribution")
	    ->{distribution};
}

sub name_new_port
{
	my ( $self, $di ) = @_;

	my $name = $self->SUPER::name_new_port(
	    ref $di ? $di->{metadata}->{name} : $di );
	$name =~ s/::/-/g;
	$name = "cpan/$name" unless $name =~ m{/};

	return $name;
}

sub needs_author
{
	my ( $self, $di ) = @_;

	my $mirror = 'http://www.cpan.org';

	# one module used 'src/foo.tar.gz', we only need foo.tar.gz
	my ($file) = $di->{archive} =~ /([^\/]+)$/;

	$file = "$1/$file" if $file =~ /^(\w+)-/;

	return !fetch("$mirror/modules/by-module/$file");
}

sub get_config_style
{
	my ( $self, $di, $wrksrc ) = @_;

	if ( $di->{metadata}->{generated_by} =~ /Module::Install/
		|| -e "$wrksrc/inc/Module/Install.pm" )
	{
		return 'modinst';
	}

	for my $dep ( @{ $di->{dependency} } ) {
		return 'modbuild' if $dep->{module} eq 'Module::Build';
		return 'modbuild tiny'
		    if $dep->{module} eq 'Module::Build::Tiny';
	}

	return;
}

sub get_deps
{
	my ( $self, $di, $wrksrc ) = @_;
	my $deps = OpenBSD::PortGen::Dependency->new();

	if ( -e "$wrksrc/MYMETA.json" ) {
		my $meta = $self->get_json_file("$wrksrc/MYMETA.json");
		$di = $meta if defined $meta;
	} else {
		$di = $di->{metadata};
	}

	for my $phase (qw/ build runtime configure test /) {
		next unless $di->{prereqs}{$phase};

		for my $relation (qw/ requires recommends /) {
			next if $relation eq 'recommends' and $phase ne 'test';

			while ( my ( $module, $req ) =
				each %{ $di->{prereqs}{$phase}{$relation} } )
			{
				next if $self->is_in_base($module);
				next if $module eq 'Module::Build::Tiny';

				my $dist = $self->get_dist_for_module($module);
				my $port = module_in_ports( $dist, 'p5-' )
				    || $self->name_new_port($dist);

				$req =~ s/^v//;
				$req =~ s/0+$/0/;

				if (       $phase eq 'configure'
					|| $phase eq 'build' )
				{
					$deps->add_build( $port, ">=$req" );
				} elsif ( $phase eq 'runtime' ) {
					$deps->add_run( $port, ">=$req" );
				} elsif ( $phase eq 'test' ) {
					$deps->add_test( $port, ">=$req" );
				}

				# don't have it in tree, port it
				if ( $port =~ m{^cpan/} ) {
					my $o =
					    OpenBSD::PortGen::Port::CPAN->new();
					$o->port($module);
					$self->add_notice( $o->notices );
				}
			}
		}
	}

	return $deps->format();
}

sub read_descr
{
	my ( $self, $path ) = @_;

	open my $readme, '<', "$path/README" or return;
	my $descr = do { local $/ = undef; <$readme> };

	if ( $descr =~ /^DESCRIPTION\n(.+?)^\p{Upper}+/ms ) {
		return $1 unless $1 =~ /^\s+$/;
	}

	if ( $descr =~ /^SYNOPSIS\n(.+?)^\p{Upper}+/ms ) {
		return $1 unless $1 =~ /^\s+$/;
	}

	return;
}

sub fill_in_makefile
{
	my ( $self, $di, $vi ) = @_;

	$self->set_comment( $di->{abstract} );
	$self->pick_distfile( $di->{archive} );
	$self->set_license(
		$di->{metadata}->{license}[0] eq 'unknown'
		? ''
		: $di->{metadata}->{license}[0]
	);
	$self->set_modules('cpan');

	# It's common for perl ports to have a version that starts with a v.
	# However, that's not a valid PKGNAME.
	$self->set_other( PKGNAME => 'p5-${DISTNAME:S/-v/-/}' )
	    if not $self->get_other('PKGNAME')
	       and ( $di->{version} || '' ) =~ /^v/;

	$self->set_other( 'CPAN_AUTHOR', $di->{author} )
	    if $self->needs_author($di);
}

sub postextract
{
	my ( $self, $di, $wrksrc ) = @_;

	$self->set_descr( $self->read_descr($wrksrc) || $di->{abstract} );
	$self->_find_hidden_test_deps($wrksrc);

	if ( $self->_uses_xs($wrksrc) ) {
		$self->set_other( 'WANTLIB', 'perl' );
	} else {
		$self->set_other( 'PKG_ARCH', '*' );
	}
}

sub try_building
{
	my $self = shift;

	if ( $self->make_fake() and $self->get_other('CONFIGURE_STYLE') ) {
		warn
"* * * Warning: failed to build with CONFIGURE_STYLE, trying without * * *";
		$self->set_other( 'CONFIGURE_STYLE', undef );
		$self->write_makefile();
		$self->make_clean();
		!$self->make_fake() or die 'cannot build port';
	}
}

sub is_in_base
{
	my ( $self, $module ) = @_;

	return 1 if $module eq 'perl';

	$module .= '.pm';
	$module =~ s{::}{/}g;

	for (@INC) {
		next unless m{/usr/libdata/};
		return 1 if -e "$_/$module";
	}

	return;
}

# Some testfiles skip tests because the required modules are not
# available. Those modules are not always listed as dependencies, so
# manually check if there are testfiles skipping tests and warn the
# porter about them.
sub _find_hidden_test_deps
{
	my ( $self, $path ) = @_;

	return unless -d "$path/t";

	find( sub { $self->_test_skips($File::Find::name) }, "$path/t" );
}

sub _test_skips
{
	my ( $self, $file ) = @_;

	# not a testfile
	return unless $file =~ /\.t$/;

	open my $fh, '<', $file or die $!;

	while (<$fh>) {
		if (/plan skip_all/) {
			$self->add_notice(
				"Possible hidden test dependency in: $file");
			return;
		}
	}
}

sub _uses_xs
{
	my ( $self, $dir ) = @_;
	my $found_xs = 0;

	find(
		sub {
			if ( -d && /^(inc|t|xt)$/ ) {
				$File::Find::prune = 1;
				return;
			}
			$found_xs = 1 if -f && /\.xs$/;
		},
		$dir
	);

	return $found_xs;
}

1;
