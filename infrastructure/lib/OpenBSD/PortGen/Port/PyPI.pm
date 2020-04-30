# $OpenBSD: PyPI.pm,v 1.19 2020/04/30 23:04:48 kn Exp $
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

use Cwd;

use OpenBSD::PortGen::Dependency;
use OpenBSD::PortGen::Utils qw( base_dir ports_dir module_in_ports );

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

	my $module = ref $di ? $di->{info}{name} : $di;
	$module =~ s/^python-/py-/;

	my $name = $self->SUPER::name_new_port($module);

	# Try for a py3 only version if we didn't find something ported
	unless ( $name =~ m{/} ) {
		if ( my $p = module_in_ports( $name, 'py3-' ) ) {
			$name = $p;
		}
		else {
			$name = "pypi/$name"
		}
	}

	return $name;
}

sub fill_in_makefile
{
	my ( $self, $di, $vi ) = @_;

	my $pkgname  = $di->{info}->{name};
	my $version  = $di->{info}->{version};
	my $distname = $self->pick_distfile( map { $_->{filename} }
		    @{ $di->{urls} || [] } );

	$self->add_notice("distname $distname does not match pkgname $pkgname")
	    unless $distname =~ /^\Q$pkgname/;

	$distname =~ s/-\Q$version\E$/-\$\{MODPY_EGG_VERSION\}/
	    or $self->add_notice(
		"Didn't set distname version to \${MODPY_EGG_VERSION}");

	$self->set_other( 'MODPY_PI',         'Yes' );
	$self->set_other( 'MODPY_SETUPTOOLS', 'Yes' );
	$self->set_comment( $di->{info}{summary} );
	$self->set_other( 'MODPY_EGG_VERSION', $version );
	$self->set_distname($distname);
	$self->set_modules('lang/python');
	$self->set_other( 'HOMEPAGE', $di->{info}{home_page} );
	$self->set_license( $di->{info}{license} );
	$self->set_descr( $di->{info}{description} );

	# TODO: These assume the PKGNAME is the DISTNAME
	my $to_lower = $pkgname =~ /\p{Upper}/ ? ':L' : '';
	if ( $pkgname =~ /^python-/ ) {
		$self->set_pkgname("\${DISTNAME:S/^python-/py-/$to_lower}");
	} elsif ( $pkgname !~ /^py-/ ) {
		$self->set_pkgname("py-\${DISTNAME$to_lower}");
	}

	my @versions = do {
		my %seen;
		sort     { $a <=> $b }
		    grep { !$seen{$_}++ }
		    map { /^Programming Language :: Python :: (\d+)/ ? $1 : () }
		    @{ $di->{info}{classifiers} };
	};

	if ( @versions > 1 ) {
		shift @versions;    # remove default, lowest
		$self->{reset_values}{MODPY_VERSION} = 1;
		$self->set_other( 'FLAVORS', "python$_" ) for @versions;
		$self->set_other( 'FLAVOR', "python$versions[-1]" );
	} elsif ( @versions && $versions[0] != 2 ) {
		$self->{reset_values}{$_} = 1 for qw( FLAVORS FLAVOR );
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
		    || module_in_ports( $name, 'py3-' );
		my $dep_dir;

		if ($port) {
			$dep_dir = ports_dir() . '/' . $port;
		} else {
			$port    = $self->name_new_port($name);
			$dep_dir = base_dir() . '/' . $port;

			# don't have it in tree, port it
			my $o = OpenBSD::PortGen::Port::PyPI->new();
			$o->port($name);
			$self->add_notice( $o->notices );
		}

		my $base_port = $port;

		{
			my $old_cwd = getcwd();
			chdir $dep_dir || die "Unable to chdir $dep_dir: $!";
			my $flavors = $self->make_show('FLAVORS');
			chdir $old_cwd || die "Unable to chdir $old_cwd: $!";

			# Attach the flavor if the dependency has one
			$port .= '${MODPY_FLAVOR}' if $flavors =~ /\bpython3\b/;
		}

		if ( $phase eq 'build' ) {
			$deps->add_build( $port, $req );
		} elsif ( $phase eq 'test' or $phase eq 'testing' ) {
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
	}

	return $deps->format;
}

sub get_config_style
{
}

1;
