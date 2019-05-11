# $OpenBSD: PyPI.pm,v 1.11 2019/05/11 19:36:27 afresh1 Exp $
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

package OpenBSD::PortGen::Port::PyPI;

use 5.012;
use warnings;

use parent 'OpenBSD::PortGen::Port';

use OpenBSD::PortGen::Dependency;
use OpenBSD::PortGen::Utils qw( module_in_ports );

sub ecosystem_prefix
{
	my $self = shift;
	return 'py-';
}

sub base_url
{
	my $self = shift;
	return 'https://pypi.python.org/pypi/';
}

sub get_dist_info
{
	my ( $self, $module ) = @_;

	return $self->get_json( $module . '/json' );
}

sub get_ver_info
{
	return 1;
}

sub name_new_port
{
	my ( $self, $di ) = @_;

	my $name = ref $di ? $di->{info}{name} : $di;
	$name =~ s/^python-/py-/;

	$name = $self->SUPER::name_new_port($name);
	$name = "pypi/$name" unless $name =~ m{/};

	return $name;
}

sub fill_in_makefile
{
	my ( $self, $di, $vi ) = @_;

	$self->set_other( 'MODPY_PI',         'Yes' );
	$self->set_other( 'MODPY_SETUPTOOLS', 'Yes' );
	$self->set_comment( $di->{info}{summary} );
	$self->set_other( 'MODPY_EGG_VERSION', $di->{info}{version} );
	$self->set_distname( "$di->{info}{name}" . '-${MODPY_EGG_VERSION}' );
	my $pkgname = $di->{info}->{name};
	my $to_lower = $pkgname =~ /\p{Upper}/ ? ':L' : '';
	if ($pkgname =~ /^python-/) {
		$self->set_pkgname("\${DISTNAME:S/^python-/py-/$to_lower}");
	}
	elsif ($pkgname !~ /^py-/) {
		$self->set_pkgname("py-\${DISTNAME$to_lower}");
	}
	$self->set_modules('lang/python');
	$self->set_other( 'HOMEPAGE', $di->{info}{home_page} );
	$self->set_license( $di->{info}{license} );
	$self->set_descr( $di->{info}{summary} );

	my @versions = do {
		my %seen;
		sort { $a <=> $b } grep { !$seen{$_}++ } map {
			/^Programming Language :: Python :: (\d+)/ ? $1 : ()
		} @{ $di->{info}{classifiers} }
	};

	if ( @versions > 1 ) {
		shift @versions; # remove default, lowest
		$self->set_other( 'FLAVORS', "python$_" ) for @versions;
		$self->set_other( 'FLAVOR',  '' );
	}
	elsif ( @versions && $versions[0] != 2 ) {
		$self->set_other(
		    MODPY_VERSION => "\${MODPY_DEFAULT_VERSION_$_}" )
		        for @versions;
	}
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

	# This, especially the os detection, may need additional
	# work to be reliable, but I don't really know what PyPI returns.
	# https://www.python.org/dev/peps/pep-0508/
	foreach ( @{ $di->{info}->{requires_dist} || [] } ) {
		my $phase = 'run';

		#https://packaging.python.org/specifications/core-metadata/#name
		my $name;
		if ( s/^([A-Z0-9]|[A-Z0-9][A-Z0-9._-]*[A-Z0-9])\b//i ) {
			$name = $1;
		}
		next unless $name;

		# remove comma separated "extra" inside []
		if ( s/^ \s* \[ ( [^]]* ) \] \s*//x ) {
			$phase = $1;
		}

		s/^\s+//; # Remove leading spaces

		my ( $req, $meta ) = split /\s*;\s*/;
		$req ||= ">=0";
		$req =~ s/^.*( [(] ) (.*?) (?(1) [)] ).*/$2/x;

		$meta ||= '';
		while ( $meta =~ /\bextra \s* == \s* (['"])? (.+?) \1 /gx ) {
			$phase = $2;
		}

		my @plat;
		while ( $meta =~ /
			(?:sys_platform|os_name) \s* == \s* (['"]) (.+?) \1
		/gx ) {
			push @plat, $2;
		}

		next if @plat and join( " ", @plat ) !~ /OpenBSD/i;

		my $port = module_in_ports( $name, 'py-' )
		    || $self->name_new_port($name);

		my $base_port = $port;
		$port .= '${MODPY_FLAVOR}';

		if ( $phase eq 'build' ) {
			$deps->add_build( $port, $req );
		} elsif ( $phase eq 'test' ) {
			$deps->add_test( $port, $req );
		} elsif ( $phase eq 'dev' ) {
			# switch this to "ne 'run'" to avoid optional deps
			$self->add_notice(
				"Didn't add $base_port as '$phase' dep");
			next;
		} else {
			$self->add_notice(
				"Added $base_port as 'run' dep, wanted '$phase'")
			    unless $phase eq 'run';
			$deps->add_run( $port, $req );
		}

		# don't have it in tree, port it
		if ( $port =~ m{^pypi/} ) {
			my $o = OpenBSD::PortGen::Port::PyPI->new();
			$o->port($name);
			$self->add_notice( $o->notices );
		}
	}

	return $deps->format;
}

sub get_config_style
{
}

1;
