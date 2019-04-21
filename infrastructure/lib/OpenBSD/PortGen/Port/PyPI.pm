# $OpenBSD: PyPI.pm,v 1.2 2019/04/21 03:47:40 afresh1 Exp $
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

	my $name = $di->{info}{name};
	$name = "py-$name" unless $name =~ /^py-/;

	return "pypi/$name";
}

sub fill_in_makefile
{
	my ( $self, $di, $vi ) = @_;

	$self->set_other( 'MODPY_PI',         'Yes' );
	$self->set_other( 'MODPY_SETUPTOOLS', 'Yes' );
	$self->set_comment( $di->{info}{summary} );
	$self->set_other( 'MODPY_EGG_VERSION', $di->{info}{version} );
	$self->set_distname( "$di->{info}{name}" . '-${MODPY_EGG_VERSION}' );
	$self->set_other( 'PKGNAME', 'py-${DISTNAME}' )
	    unless $di->{info}->{name} =~ /^py-/;
	$self->set_modules('lang/python');
	$self->set_categories('pypi');
	$self->set_other( 'HOMEPAGE', $di->{info}{home_page} );
	$self->set_license( $di->{info}{license} );
	$self->set_descr( $di->{info}{summary} );

	for ( @{ $di->{info}{classifiers} } ) {
		if (/^Programming Language :: Python :: 3/) {
			$self->set_other( 'FLAVORS', 'python3' );
			$self->set_other( 'FLAVOR',  '' );
			last;
		}
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
}

sub get_config_style
{
}

1;
