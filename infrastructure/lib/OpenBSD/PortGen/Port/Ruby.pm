# $OpenBSD: Ruby.pm,v 1.6 2020/04/17 02:14:01 afresh1 Exp $
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

package OpenBSD::PortGen::Port::Ruby;

use 5.012;
use warnings;

use parent 'OpenBSD::PortGen::Port';

use OpenBSD::PortGen::Dependency;
use OpenBSD::PortGen::Utils qw( module_in_ports );

sub ecosystem_prefix
{
	my $self = shift;
	return 'ruby-';
}

sub postextract
{
}

sub base_url
{
	my $self = shift;
	return 'https://rubygems.org/api/v1/';
}

sub get_dist_info
{
	my ( $self, $module ) = @_;
	return $self->get_json("gems/$module.json");
}

sub get_ver_info
{
	my ( $self, $module ) = @_;

	return @{ $self->get_json("versions/$module.json") }[0];
}

sub name_new_port
{
	my ( $self, $di ) = @_;

	my $name = $self->SUPER::name_new_port(
	    ref $di ? $di->{name} : $di );
	$name = "ruby/$name" unless $name =~ m{/};

	return $name;
}

sub fill_in_makefile
{
	my ( $self, $di, $vi ) = @_;

	$self->set_comment( $vi->{summary} );
	$self->set_distname("$di->{name}-$di->{version}");
	$self->set_pkgname('${DISTNAME:S/ruby-//}')
	    if $di->{name} =~ /^ruby-/;
	$self->set_modules('lang/ruby');
	$self->set_other( 'HOMEPAGE', $di->{homepage_uri} );
	$self->set_license( @{ $vi->{licenses} }[0] );
	$self->set_other( 'CONFIGURE_STYLE', "ruby gem" );
	$self->set_descr( $di->{info} || $vi->{summary} );
}

sub try_building
{
	my $self = shift;
	$self->make_fake();
}

sub get_deps
{
	my ( $self, $di ) = @_;
	my $deps = OpenBSD::PortGen::Dependency->new();

	return unless $di->{dependencies};

	for my $dep ( @{ $di->{dependencies}->{runtime} } ) {
		my ( $name, $req ) = ( $dep->{name}, $dep->{requirements} );

		next if $self->is_standard_module($name);

		my $port = module_in_ports( $name, 'ruby-' )
		    || $self->name_new_port($name);

		$req =~ s/ //g;

		# support pessimistic version requirement:
		# turn ~> 3.0.3 into >=3.0.3,<3.1.0
		# and ~> 1.1 into >=1.1,<2.0
		if ( $req =~ /~>([\d\.]+)/ ) {
			my $ver = $1;
			$req =~ s/~>/>=/;
			$ver =~ s/(\d)\.\d$/($1+1).".0"/e;
			$req .= ",<$ver";
		}

		# turn =6.0.2.2 into ==6.0.2.2
		$req =~ s/^=\b/==/;

		$deps->add_run( $port . ',${MODRUBY_FLAVOR}', $req );

		# gems only understand runtime and development deps
		$deps->add_build('${RUN_DEPENDS}');

		# don't have this one, port it
		if ( $port =~ m{^ruby/} ) {
			my $o = OpenBSD::PortGen::Port::Ruby->new();
			$o->port($name);
			$self->add_notice( $o->notices );
		}
	}

	return $deps->format();
}

sub is_standard_module
{
	my ( $self, $module, $ruby_ver ) = @_;
	$ruby_ver //= '2.2';

	return -e "/usr/local/lib/ruby/$ruby_ver/$module.rb";
}

sub get_config_style
{
	my ( $self, $di, $wrksrc ) = @_;

	if ( -d "$wrksrc/ext" ) {
		return "ruby gem ext";
	}
	return "ruby gem";
}

1;
