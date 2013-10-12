# ex:ts=8 sw=4:
# $OpenBSD: SpeedFactor.pm,v 1.2 2013/10/12 14:11:23 espie Exp $
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

# this is the optional classes that are only used when speed factors are
# involved

# a bin that keeps tracks of its total weight

package DPB::Heuristics::Bin::Heavy;
our @ISA = qw(DPB::Heuristics::Bin);
sub add
{
	my ($self, $v) = @_;
	$self->SUPER::add($v);
	$self->{weight} += $DPB::Heuristics::weight{$v};
}

sub remove
{
	my ($self, $v) = @_;
	$self->{weight} -= $DPB::Heuristics::weight{$v};
	$self->SUPER::remove($v);
}

# and the partitioned queue, based on heavy bins
package DPB::Heuristics::Queue::Part;
our @ISA = qw(DPB::Heuristics::Queue);

# 20 bins, binary....
sub find_bin
{
	my $w = shift;
	return 10 if !defined $w;
	if ($w > 65536) {
		if ($w > 1048576) { 9 } else { 8 }
	} elsif ($w > 256) {
		if ($w > 4096) {
			if ($w > 16384) { 7 } else { 6 }
		} elsif ($w > 1024) { 5 } else { 4 }
	} elsif ($w > 16) {
		if ($w > 64) { 3 } else { 2 }
	} elsif ($w > 4) { 1 } else { 0 }
}

sub add
{
	my ($self, $v) = @_;
	$self->SUPER::add($v);
	$v->{weight} = $DPB::Heuristics::weight{$v};
	$self->{bins}[find_bin($v->{weight})]->add($v);
}

sub remove
{
	my ($self, $v) = @_;
	$self->SUPER::remove($v);
	$self->{bins}[find_bin($v->{weight})]->remove($v);
}

sub find_sorter
{
	my ($self, $core) = @_;
	my $all = DPB::Core->all_sf;
	if ($core->sf > $all->[-1] - 1) {
		return $self->SUPER::find_sorter($core);
	} else {
		return DPB::Heuristics::Sorter->new($self->bin_part($core->sf,
		    $all));
	}
}

# simpler partitioning
sub bin_part
{
	my ($self, $wanted, $all_sf) = @_;

	# note that all_sf is sorted

	# compute totals
	my $sum_sf = 0;
	for my $i (@$all_sf) {
		$sum_sf += $i;
	}
	my @bins = @{$self->{bins}};
	my $sum_weight = 0.0;
	for my $bin (@bins) {
		$sum_weight += $bin->weight;
	}

	# setup for the main loop
	my $partial_weight = 0.0;
	my $partial_sf = 0.0;
	my $result = [];

	# go through speed factors until we've gone thru the one we want
	while (my $sf = shift @$all_sf) {
		# passed it -> give result
		last if $sf > $wanted+1;

		# compute threshold for total weight
		$partial_sf += $sf;
		my $thr = $sum_weight * $partial_sf / $sum_sf;
		# grab weights until we reach the desired amount
		while (my $bin = shift @bins) {
			$partial_weight += $bin->weight;
			push(@$result, $bin);
			last if $partial_weight > $thr;
		}
	}
	return $result;
}

sub new
{
	my ($class, $h) = @_;
	my $o = $class->SUPER::new($h);
	my $bins = $o->{bins} = [];
	for my $i (0 .. 9) {
		push(@$bins, DPB::Heuristics::Bin::Heavy->new($h));
	}
	push(@$bins, DPB::Heuristics::Bin->new($h));
	return $o;
}

1;
