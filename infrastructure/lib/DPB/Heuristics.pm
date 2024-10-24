# ex:ts=8 sw=4:
# $OpenBSD: Heuristics.pm,v 1.39 2023/05/06 05:20:31 espie Exp $
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

use v5.36;

# this package is responsible for the initial weighing of pkgpaths, and handling
# consequences
package DPB::Heuristics;

# XXX the beginning of that class uses globals and defines a way to:
# - compute weights for paths (sum of all intrinsic weights of the
# dependency tree)

my (%bad_weight, %needed_by);
our %weight;

# we set the "unknown" weight as max if we parsed a file.
my $default = 1;

sub finished_parsing($self)
{
	while (my ($k, $v) = each %bad_weight) {
		$self->set_weight($k, $v);
	}
	if (keys %weight > 0) {
		my @l = sort values %weight;
		$default = pop @l;
	}
}

sub intrinsic_weight($self, $v)
{
	$weight{$v} // $default;
}

# hook for PkgPath, we don't need to record weights for all fullpkgpaths,
# as equivalences will define weights for them all
sub equates($class, $h)
{
	for my $v (values %$h) {
		next unless defined $weight{$v};
		for my $w (values %$h) {
			$weight{$w} //= $weight{$v};
		}
		return;
	}
}


sub set_weight($self, $v, $w = undef)
{
	return unless defined $w;
	if (ref $v && $v->{scaled}) {
		$weight{$v} = $w * $v->{scaled};
		delete $v->{scaled};
	} else {
		$weight{$v} = $w;
	}
}

my $cache;	#  store precomputed full weight

sub mark_depend($self, $d, $v)
{
	if (!defined $needed_by{$d}{$v}) {
		$needed_by{$d}{$v} = $v;
		$cache = {};# cache gets invalidated each time we see a new
			    # depend
	}
}

sub compute_full_weight($self, $v)
{
	# compute the transitive closure of dependencies
	my $dependencies = {$v => $v};
	my @todo = values %{$needed_by{$v}};
	while (my $k = pop (@todo)) {
		next if $dependencies->{$k};
		$dependencies->{$k} = $k;
		push(@todo, values %{$needed_by{$k}});
	}
	# ... and sum the weights
	my $sum = 0;
	for my $k (values %$dependencies) {
		$sum += $self->intrinsic_weight($k);
	}
	return $sum;
}

sub full_weight($self, $v)
{
	$cache->{$v} //= $self->compute_full_weight($v);
}

# this is used before reading build information
# hosts may have distinct speed factors, we want to normalize values
my $sf_per_host = {};
my $max_sf;

sub calibrate($self, @cores)
{
	for my $core (@cores) {
		$sf_per_host->{$core->fullhostname} = $core->sf;
		$max_sf //= $core->sf;
		if ($core->sf > $max_sf) {
			$max_sf = $core->sf;
		}
	}
}

sub add_build_info($self, $pkgpath, $host, $time, $sz)
{
	if (defined $sf_per_host->{$host}) {
		$time *= $sf_per_host->{$host};
		$time /= $max_sf;
		$self->set_weight($pkgpath, $time);
	} else {
		$bad_weight{$pkgpath} //= $time;
	}
}

sub compare_weights($self, $a, $b)
{
	return $self->intrinsic_weight($a) <=> $self->intrinsic_weight($b);
}


# this is the actual factory object. It mostly refers to a way to sort
# (compare method), and it will be used to instantiate queues thru new_queue
# it comes with an actual comparison functions (weights are global for paths)
# everything else is a queue... changing the heuristics object gives you
# more sophisticated queues (separated speed factor bins) or specialized
# algorithms (squiggles or fetch heuristics)
sub new($class, $state)
{
	return bless {state => $state}, $class;
}

sub random($self)
{
	# perl allows you to re-bless an object as a different class
	return bless $self, "DPB::Heuristics::random";
}

sub compare($self, $a, $b)
{
	# XXX if we don't know, we prefer paths "later in the game"
	# so if you abort dpb and restart it, it will have stuff to do
	# this also means that equivalent paths will actually show
	# a preference, so that we build the larger name
	return $self->full_weight($a) <=> $self->full_weight($b) || 
	    $a->fullpkgpath cmp $b->fullpkgpath;
}

sub new_queue($self)
{
	if (DPB::HostProperties->has_sf) {
		require DPB::Heuristics::SpeedFactor;
		return DPB::Heuristics::Queue::Part->new($self);
	} else {
		return DPB::Heuristics::Queue->new($self);
	}
}

# so the actual queue will be obtained as
# $q = $someheuristics->sorted 
# then grabbing objects thru $q->next repeatedly

package DPB::Heuristics::SimpleSorter;
# the simplest queue: just use sorted_values, and pop
sub new($class, $o)
{
	bless $o->sorted_values, $class;
}

sub next($self)
{
	return pop @$self;
}

# that's the queue used by squiggles
# "squiggles" will build small ports preferentially,
# trying to do stuff which has depends first, up to a point.
package DPB::Heuristics::ReverseSorter;
our @ISA = (qw(DPB::Heuristics::SimpleSorter));
sub new($class, $o)
{
	bless {l => $o->sorted_values, l2 => []}, $class;
}

# return smallest stuff with depends preferably
sub next($self)
{
	# grab stuff from the normal queue
	while (my $v = shift @{$self->{l}}) {
		# XXX when requeuing a job with L= on the side, this might not
		# be defined yet.
		if (defined $v->{info}) {
			my $dep = $v->{info}->solve_depends;
			# it has depends, return it
			if (%$dep) {
				return $v;
			}
	    	}
		# otherwise keep it for later.
		push(@{$self->{l2}}, $v);
		# XXX but when the diff grows too much, give up!
		# 200 is completely arbitrary
		last if DPB::Heuristics->full_weight($v) >
		    200 * DPB::Heuristics->full_weight($self->{l2}[0]);
	}
	return shift @{$self->{l2}};
}

# and this is the complex one where there might be several bins thx to
# differing speed factors
package DPB::Heuristics::Sorter;
sub new($class, $list)
{
	my $o = bless {list => $list, l => []}, $class;
	$o->next_bin;
	return $o;
}

sub next_bin($self)
{
	if (my $bin = pop @{$self->{list}}) {
		$self->{l} = $bin->sorted_values;
	} else {
		return;
	}
}

sub next($self)
{
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

# and here's how you handle individual bins
package DPB::Heuristics::Bin;
sub new($class, $h)
{
	return bless {o => {}, weight => 0, h => $h}, $class;
}

sub add($self, $v)
{
	$self->{o}{$v} = $v;
}

sub contains($self, $v)
{
	return exists $self->{o}{$v};
}

sub remove($self, $v)
{
	delete $self->{o}{$v};
}

sub weight($self)
{
	return $self->{weight};
}

sub count($self)
{
	return scalar keys %{$self->{o}};
}

sub non_empty($self)
{
	return scalar(keys %{$self->{o}}) != 0;
}

sub sorted_values($self)
{
	return [sort {$self->{h}->compare($a, $b)} values %{$self->{o}}];
}

sub dump($self, $fh, $state)
{
	my $l = $self->sorted_values;
	for my $i (0 .. 49) {
		last if @$l == 0;
		my $v = pop @$l;
		$fh->print($v->fullpkgpath, " ", 
		    DPB::Heuristics->full_weight($v), "\n");
    	}
}

# so, the "simple" case is just a simple bin with no other bins.
package DPB::Heuristics::Queue;
our @ISA = qw(DPB::Heuristics::Bin);

sub sorted($self, $core)
{
	if ($core->{squiggle}) {
		return DPB::Heuristics::ReverseSorter->new($self);
	}
	return $self->find_sorter($core);
}

sub find_sorter($self, $core)
{
	return DPB::Heuristics::SimpleSorter->new($self);
}

# the random object just sets its own arbitrary weights, and uses the
# normal queue handling for everything else
package DPB::Heuristics::random;
our @ISA = qw(DPB::Heuristics);
my %any;

# note we actually *have* to set weights because we still want consistent
# sorting !
sub compare($self, $a, $b)
{
	return ($any{$a} //= rand) <=> ($any{$b} //= rand);
}

sub new_queue($self)
{
	return DPB::Heuristics::Queue->new($self);
}

1;
