# ex:ts=8 sw=4:
# $OpenBSD: Heuristics.pm,v 1.1 2010/02/24 11:33:31 espie Exp $
#
# Copyright (c) 2010 Marc Espie <espie@openbsd.org>
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

# this package is responsible for the initial weighing of pkgpaths, and handling
# consequences
package DPB::Heuristics;

# for now, we don't create a separate object, we assume everything here is 
# "global"

my (%weight, %needed_by);

sub new
{
	my ($class, $opt_r) = @_;
	if ($opt_r) {
		bless {}, "DPB::Heuristics::random";
	} else {
		bless {}, $class;
	}
}

sub set_logger
{
	my ($self, $logger) = @_;
	$self->{logger} = $logger;
}

# we set the "unknown" weight as max weight if we parsed a file.
my $default = 1;

sub finished_parsing
{
	my $self = shift;
	my @l = sort values %weight;
	$default = $l[@l/2];
}

sub intrinsic_weight
{
	my ($self, $v) = @_;
	$weight{$v} //= $default;
}

my $threshold;
sub set_threshold
{
	my ($self, $t) = @_;
	$threshold = $t;
}

sub special_parameters
{
	my ($self, $core, $v) = @_;
	my $t = $core->{memory} // $threshold;
	# we build in memory if we know this port and it's light enough
	if (!defined $t || !defined $weight{$v} || $weight{$v} > $t) {
		return 0;
	} else {
		return 1;
	}
}


sub set_weight
{
	my ($self, $v, $w) = @_;
	$weight{$v} = $w + 0;
}

my $cache;

sub mark_depend
{
	my ($self, $d, $v) = @_;
	if (!defined $needed_by{$d}{$v}) {
		$needed_by{$d}{$v} = $v;
		$cache = {};
	}
}

sub compute_measure
{
	my ($self, $v) = @_;
	my $dependencies = {$v => $v};
	my @todo = values %{$needed_by{$v}};
	while (my $k = pop (@todo)) {
		next if $dependencies->{$k};
		$dependencies->{$k} = $k;
		push(@todo, values %{$needed_by{$k}});
	}

	my $sum = 0;
	for my $k (values %$dependencies) {
		$sum += $self->intrinsic_weight($k);
	}
	return $sum;
}

sub measure
{
	my ($self, $v) = @_;
	$cache->{$v} //= $self->compute_measure($v);
}

sub compare
{
	my ($self, $a, $b) = @_;
	my $r = $self->measure($a) <=> $self->measure($b);
	return $r if $r != 0;
	# XXX if we don't know, we prefer paths "later in the game"
	# so if you abort dpb and restart it, it will start doing
	# things earlier.
	return $a->fullpkgpath cmp $b->fullpkgpath;
}

my $has_build_info;

sub add_build_info
{
	my ($self, $pkgpath, $host, $time, $sz) = @_;
	$self->set_weight($pkgpath, $time);
	$has_build_info = 1;
}

sub compare_weights
{
	my ($self, $a, $b) = @_;
	return $self->intrinsic_weight($a) <=> $self->intrinsic_weight($b);
}

sub new_queue
{
	my $self = shift;
	if ($has_build_info && DPB::Core->has_sf) {
		return DPB::Heuristics::Queue::Part->new($self);
	} else {
		return DPB::Heuristics::Queue->new($self);
	}
}

package DPB::Heuristics::SimpleSorter;
sub new
{
	my ($class, $o) = @_;
	bless $o->sorted_values, $class;
}

sub next
{
	my $self = shift;
	return pop @$self;
}

package DPB::Heuristics::Sorter;
sub new
{
	my ($class, $list) = @_;
	my $o = bless {list => $list, l => []}, $class;
	$o->next_bin;
	return $o;
}

sub next_bin
{
	my $self = shift;
	if (my $bin = pop @{$self->{list}}) {
		$self->{l} = $bin->sorted_values;
	} else {
		return;
	}
}

sub next
{
	my $self = shift;
	if (my $r = pop @{$self->{l}}) {
		return $r;
	} else {
		if ($self->next_bin) {
			return $self->next;
		} else {
			return;
		}
	}
}

package DPB::Heuristics::Bin;
sub new
{
	my ($class, $h) = @_;
	bless {o => {}, weight => 0, h => $h}, $class;
}

sub add
{
	my ($self, $v) = @_;
	$self->{o}{$v} = $v;
}

sub remove
{
	my ($self, $v) = @_;
	delete $self->{o}{$v};
}

sub weight
{
	my $self = shift;
	return $self->{weight};
}

sub count
{
	my $self = shift;
	return scalar keys %{$self->{o}};
}

sub non_empty
{
	my $self = shift;
	return scalar %{$self->{o}};
}

sub sorted_values
{
	my $self = shift;
	return [sort {$self->{h}->compare($a, $b)} values %{$self->{o}}];
}

package DPB::Heuristics::Bin::Heavy;
our @ISA = qw(DPB::Heuristics::Bin);
sub add
{
	my ($self, $v) = @_;
	$self->SUPER::add($v);
	$self->{weight} += $weight{$v};
}

sub remove
{
	my ($self, $v) = @_;
	$self->{weight} -= $weight{$v};
	$self->SUPER::remove($v);
}

package DPB::Heuristics::Queue;
our @ISA = qw(DPB::Heuristics::Bin);

sub sorted
{
	my $self = shift;
	return DPB::Heuristics::SimpleSorter->new($self);
}

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
	$v->{weight} = $weight{$v};
	$self->{bins}[find_bin($v->{weight})]->add($v);
}

sub remove
{
	my ($self, $v) = @_;
	$self->SUPER::remove($v);
	$self->{bins}[find_bin($v->{weight})]->remove($v);
}

sub sorted
{
	my ($self, $core) = @_;
	my $all = DPB::Core->all_sf;
	if ($core->{sf} > $all->[-1] - 1) {
		return $self->SUPER::sorted($core);
	} else {
		my $want = $self->bin_part($core->{sf}, DPB::Core->all_sf);
		return DPB::Heuristics::Sorter->new($want);
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

package DPB::Heuristics::random;
our @ISA = qw(DPB::Heuristics);
my %any;

sub compare
{
	my ($self, $a, $b) = @_;
	return ($any{$a} //= random()) <=> ($any{$b} //= random());
}

sub new_queue
{
	my $self = shift;
	return DPB::Heuristics::Queue->new($self);
}

1;
