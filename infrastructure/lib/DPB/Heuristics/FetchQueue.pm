# ex:ts=8 sw=4:
# $OpenBSD: FetchQueue.pm,v 1.3 2019/11/06 16:36:11 espie Exp $
#
# Copyright (c) 2010-2013 Marc Espie <espie@openbsd.org>
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

use strict;
use warnings;

package DPB::Heuristics::FetchQueue;
our @ISA = qw(DPB::Heuristics::Queue);
sub new
{
	my ($class, $h) = @_;
	return $class->SUPER::new($h)->set_h1;
}

sub set_h1
{
	return bless shift, "DPB::Heuristics::FetchQueue1";
}

sub set_h2
{
	return bless shift, "DPB::Heuristics::FetchQueue2";
}

sub set_fetchonly
{
	return bless shift, "DPB::Heuristics::FetchOnlyQueue";
}

sub sorted
{
	my $self = shift;
	if ($self->{results}++ > 50 ||
	    defined $self->{sorted} && @{$self->{sorted}} < 10) {
		$self->{results} = 0;
		undef $self->{sorted};
	}
	return $self->{sorted} //= DPB::Heuristics::SimpleSorter->new($self);
}

package DPB::Heuristics::FetchQueue1;
our @ISA = qw(DPB::Heuristics::FetchQueue);

# heuristic 1: grab the smallest distfiles that can build directly
# so that we avoid queue starvation
sub sorted_values
{
	my $self = shift;
	my @l = grep {$_->{path}{has} == 0} values %{$self->{o}};
	if (!@l) {
		@l = grep {$_->{path}{has} < 2} values %{$self->{o}};
		if (!@l) {
			@l = values %{$self->{o}};
		}
	}
	return [sort {$b->{sz} <=> $a->{sz}} @l];
}

package DPB::Heuristics::FetchQueue2;
our @ISA = qw(DPB::Heuristics::FetchQueue);

# heuristic 2: assume we're running good enough, grab distfiles that allow
# build to proceed as usual
# we don't care so much about multiple distfiles
sub sorted_values
{
	my $self = shift;
	my @l = grep {$_->{path}{has} < 2} values %{$self->{o}};
	if (!@l) {
		@l = values %{$self->{o}};
	}
	my $h = $self->{h};
	return [sort
	    {$h->full_weight($a->{path}) <=> $h->full_weight($b->{path})}
	    @l];
}

package DPB::Heuristics::FetchOnlyQueue;
our @ISA = qw(DPB::Heuristics::FetchQueue);

# for fetch-only, grab all files, largest ones first.
sub sorted_values
{
	my $self = shift;
	return [sort {$a->{sz} <=> $b->{sz}} values %{$self->{o}}];
}

1;
