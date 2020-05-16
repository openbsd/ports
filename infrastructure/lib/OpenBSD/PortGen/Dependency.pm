# $OpenBSD: Dependency.pm,v 1.4 2020/05/16 21:44:23 sthen Exp $
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

package OpenBSD::PortGen::Dependency;

use 5.012;
use warnings;

use CPAN::Meta::Requirements;

sub new
{
	my $class = shift;
	my $self = bless {}, $class;
	return $self;
}

sub add_build
{
	my $self = shift;

	$self->_add_dep( 'build', @_ );
}

sub add_run
{
	my $self = shift;

	$self->_add_dep( 'run', @_ );
}

sub add_test
{
	my $self = shift;

	$self->_add_dep( 'test', @_ );
}

sub _add_dep
{
	my ( $self, $type, $port, $reqs ) = @_;

	$self->{deps}{$type} ||= CPAN::Meta::Requirements->new;
	$self->{deps}{$type}->add_string_requirement( $port => $reqs );
}

# from perlfaq4
sub _arr_equal
{
	my ( $self, $fst, $snd ) = @_;
	no warnings;

	return 0 unless  $fst and  $snd;
	return 0 unless @$fst and @$snd;
	return 0 unless @$fst  == @$snd;

	for ( my $i = 0 ; $i < @$fst ; $i++ ) {
		return 0 if $fst->[$i] ne $snd->[$i];
	}

	return 1;
}

sub format
{
	my $self = shift;
	my %fmt;

	return unless $self->{deps};

	for my $type ( keys %{ $self->{deps} } ) {
		my $dep = $self->{deps}{$type};
		foreach my $port ( sort $dep->required_modules ) {
			my $req =
			    $dep->structured_requirements_for_module($port)->[0];
			next unless $req;
			my $v = $req->[1];
			$v =~ s/^v//;
			if ( $v eq '0' ) {
				push @{ $fmt{$type} }, $port;
			} elsif ( $req->[0] eq '>=' ) {
				push @{ $fmt{$type} }, "$port>=$v";
			} elsif ( $req->[0] eq '==' ) {
				push @{ $fmt{$type} }, "$port=$v";
			}
		}
	}

	if ( $self->_arr_equal( $fmt{'build'}, $fmt{'run'} ) ) {
		@{ $fmt{'build'} } = '${RUN_DEPENDS}';
	}

	if ( $self->_arr_equal( $fmt{'test'}, $fmt{'run'} ) ) {
		@{ $fmt{'test'} } = '${RUN_DEPENDS}';
	} elsif ( $self->_arr_equal( $fmt{'test'}, $fmt{'build'} ) ) {
		@{ $fmt{'test'} } = '${BUILD_DEPENDS}';
	}

	return \%fmt;
}

1;
