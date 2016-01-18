# $OpenBSD: Dependency.pm,v 1.1.1.1 2016/01/18 18:08:19 tsg Exp $
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

	# '>=0' is redundant, remove it
	if ( defined $reqs and $reqs eq '>=0' ) {
		$reqs = '';
	}

	$self->{deps}{$type}{$port} = $reqs;
}

# from perlfaq4
sub _arr_equal
{
	my ( $self, $fst, $snd ) = @_;
	no warnings;

	return 0 unless @$fst and @$snd;
	return 0 unless @$fst == @$snd;

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

	for my $type (qw/ build run test/) {

		# might not have dependencies of this type
		next unless exists $self->{deps}{$type};

		my @deps;
		while ( my ( $name, $ver_reqs ) =
			each %{ $self->{deps}{$type} } )
		{
			push @deps, $ver_reqs ? $name . $ver_reqs : $name;
		}

		@{ $fmt{$type} } = sort @deps;
	}

	my ( $build_ref, $run_ref, $test_ref ) =
	    ( \@{ $fmt{'build'} }, \@{ $fmt{'run'} }, \@{ $fmt{'test'} } );

	if ( $self->_arr_equal( $build_ref, $run_ref ) ) {
		@{ $fmt{'run'} } = '${BUILD_DEPENDS}';
	}

	if ( $self->_arr_equal( $test_ref, $build_ref ) ) {
		@{ $fmt{'test'} } = '${BUILD_DEPENDS}';
	} elsif ( $self->_arr_equal( $test_ref, $run_ref ) ) {
		@{ $fmt{'test'} } = '${RUN_DEPENDS}';
	}

	for my $type ( keys %fmt ) {
		$fmt{$type} = ( join " \\\n\t\t\t", @{ $fmt{$type} } ) || undef;
	}

	return \%fmt;
}

1;
