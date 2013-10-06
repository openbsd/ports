# ex:ts=8 sw=4:
# $OpenBSD: SubEngine.pm,v 1.11 2013/10/06 15:49:23 espie Exp $
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

package DPB::SubEngine;
sub new
{
	my ($class, $engine) = @_;
	bless { engine => $engine, queue => $class->new_queue($engine),
		doing => {}, later => {}}, $class;
}

sub count
{
	my $self = shift;
	return $self->{queue}->count;
}

sub add
{
	my ($self, $v) = @_;
	$self->{queue}->add($v);
}

sub remove
{
	my ($self, $v) = @_;
	$self->{queue}->remove($v);
}

sub is_done_quick
{
	my $self = shift;
	return $self->is_done(@_);
}

sub is_done_or_enqueue
{
	my $self =shift;
	return $self->is_done(@_);
}

sub sorted
{
	my ($self, $core) = @_;
	return $self->{queue}->sorted($core);
}

sub non_empty
{
	my $self = shift;
	return $self->{queue}->non_empty;
}

sub contains
{
	my ($self, $v) = @_;
	return $self->{queue}->contains($v);
}

sub log
{
	my ($self, @r) = @_;
	return $self->{engine}->log(@r);
}

sub key_for_doing
{
	my ($self, $v) = @_;
	return $v;
}

sub already_done
{
}

sub lock_and_start_build
{
	my ($self, $core, $v) = @_;

	$self->remove($v);

	if (my $lock = $self->{engine}{locker}->lock($v)) {
		$self->{doing}{$self->key_for_doing($v)} = 1;
		$self->start_build($v, $core, $lock);
		return 1;
	} else {
		push(@{$self->{engine}{locks}}, $v);
		$self->log('L', $v);
		return 0;
	}
}

sub start
{
	my $self = shift;
	my $core = $self->get_core;

	if ($self->preempt_core($core)) {
		return;
	}

	my $o = $self->sorted($core);

	# first pass, try to find something we can build
	while (my $v = $o->next) {
		# trim stuff that's done
		if ($self->is_done($v)) {
			$self->already_done($v);
			$self->done($v);
			next;
		}
		# ... and stuff that's related to other stuff building
		if ($self->{doing}{$self->key_for_doing($v)}) {
			$self->remove($v);
			$self->{later}{$v} = $v;
			$self->log('^', $v);
			next;
		}
		# if there's no external lock, we can build
		if ($self->can_start_build($v, $core)) {
			return;
		}
	}
	if ($self->recheck_mismatches($core)) {
		return;
	}
	# couldn't build anything, don't forget to give back the core.
	$core->mark_ready;
}

sub preempt_core
{
	return 0;
}

sub can_start_build
{
	my ($self, $v, $core) = @_;

	return $self->lock_and_start_build($core, $v);
}

sub recheck_mismatches
{
	return 0;
}

sub done
{
	my ($self, $v) = @_;
	my $k = $self->key_for_doing($v);
	for my $candidate (values %{$self->{later}}) {
		if ($self->key_for_doing($candidate) eq $k) {
			delete $self->{later}{$candidate};
			$self->log('V', $candidate);
			$self->add($candidate);
		}
	}
	delete $self->{doing}{$self->key_for_doing($v)};
	$self->{engine}->recheck_errors;
}

sub end
{
	my ($self, $core, $v, $fail) = @_;
	my $e = $core->mark_ready;
	if ($fail) {
		$core->failure;
		if (!$e || $core->{status} == 65280) {
			$self->add($v);
			$self->{engine}{locker}->unlock($v);
			$self->log('N', $v);
		} else {
			# XXX in case some packages got built
			$self->is_done($v);
			unshift(@{$self->{engine}{errors}}, $v);
			$v->{host} = $core->host;
			$self->log('E', $v);
			if ($core->prop->{always_clean}) {
				$self->end_build($v);
			}
		}
	} else {
		if ($self->is_done_or_enqueue($v)) {
			$self->{engine}{locker}->unlock($v);
		} else {
			push(@{$self->{engine}{nfslist}}, $v);
		}
		$self->end_build($v);
		$core->success;
	}
	$self->done($v);
	$self->{engine}->flush;
}

sub dump
{
	my ($self, $k, $fh) = @_;
#	$self->{queue}->dump($k, $fh);
}

package DPB::SubEngine::Build;
our @ISA = qw(DPB::SubEngine);
sub new
{
	my ($class, $engine, $builder) = @_;
	my $o = $class->SUPER::new($engine);
	$o->{builder} = $builder;
	$o->{toinstall} = [];
	$o->{nfs} = {};
	return $o;
}


sub preempt_core
{
	my ($self, $core) = @_;

	if (@{$self->{engine}{requeued}} > 0) {
		$self->{engine}->rebuild_info($core);
		return 1;
	}
	if ($self->start_install($core)) {
		return 1;
	}
	# note we don't actually remove stuff from the queue until needed, 
	# so mismatches holds a copy of stuff that's still there.
	$self->{mismatches} = [];
	$self->{tag_mismatches} = [];
	return 0;
}

sub can_start_build
{
	my ($self, $v, $core) = @_;

	if ($self->check_for_memory_hogs($v, $core)) {
		push(@{$self->{mismatches}}, $v);
		return 0;
	}
	# if the tag mismatch, we keep it for much much later.
	# currently, we don't even try to recuperate, so this will
	# fail abysmally if there's no junking going on
	if ($core->prop->{tainted} && $v->{info}->has_property('tag')) {
		if ($v->{info}->has_property('tag') ne $core->prop->{tainted}) {
			$self->log('K', $v, " ".$core->hostname." ".
			    $core->prop->{tainted}." vs ".
			    $v->{info}->has_property('tag'));
			push(@{$self->{tag_mismatches}}, $v);
			return 0;
		}
	}
	# keep affinity mismatches for later
	if (defined $v->{affinity} && !$core->matches($v->{affinity})) {
		$self->log('A', $v, 
		    " ".$core->hostname." ".$v->{affinity});
		# try to start them anyways, on the "right" core
		my $core2 = DPB::Core->get_affinity($v->{affinity});
		if (defined $core2) {
			if ($self->lock_and_start_build($core2, $v)) {
				return 0;
			} else {
				$core2->mark_ready;
			}
		}
		push(@{$self->{mismatches}}, $v);
		return 0;
	}
	# if there's no external lock, we can build
	if ($self->lock_and_start_build($core, $v)) {
		return 1;
	}
}

sub check_for_memory_hogs
{
	my ($self, $v, $core) = @_;
	if ($v->{info}->has_property('memoryhog')) {
		for my $job ($core->same_host_jobs) {
			if ($job->{v}{info}->has_property('memoryhog')) {
				return 1;
			}
		}
	}
	return 0;
}

sub can_be_junked
{
	my ($self, $v, $core) = @_;
	my $tag = $v->{info}->has_property('tag');
	for my $job ($core->same_host_jobs) {
		if ($job->{v}{info}->has_property('tag') &&
		    $job->{v}{info}->has_property('tag') ne $tag) {
		    	return 0;
		}
	}
	return 1;
}

sub recheck_mismatches
{
	my ($self, $core) = @_;

	# first let's try to force junking
	if (@{$self->{tag_mismatches}} > 0) {
		for my $v (@{$self->{tag_mismatches}}) {
			next unless $self->can_be_junked($v, $core);
			$v->{forcejunk} = 1;
			if ($self->lock_and_start_build($core, $v)) {
				$self->log('C', $v);
				return 1;
			}
			delete $v->{forcejunk};
		}
	}
	# let's make sure we don't have something else first
	if (@{$self->{mismatches}} > 0) {
		if ($self->{engine}->check_buildable(1)) {
			$core->mark_ready;
			return $self->start;
		}
	}
	# second pass, affinity mismatches
	for my $v (@{$self->{mismatches}}) {
		if ($self->lock_and_start_build($core, $v)) {
			$self->log('Y', $v, 
			    " ".$core->hostname." ".$v->{affinity});
			return 1;
		}
	}
	return 0;
}

sub will_install
{
	my ($self, $v) = @_;
	push(@{$self->{toinstall}}, $v);
}

sub start_install
{
	my ($self, $core) = @_;
	return 0 unless $core->is_local;
	if (my $v = pop @{$self->{toinstall}}) {
		$self->{builder}->install($v, $core);
		return 1;
	} else {
		return 0;
	}
}

sub non_empty
{
	my $self = shift;
	return  $self->SUPER::non_empty || @{$self->{toinstall}} > 0;
}

sub new_queue
{
	my ($class, $engine) = @_;
	return $engine->{heuristics}->new_queue;
}

sub mark_as_done
{
	my ($self, $v) = @_;
	$self->{engine}{affinity}->unmark($v);
	delete $self->{engine}{tobuild}{$v};
	delete $v->{info}{DIST};
#	$self->{heuristics}->done($v);
	if (defined $self->{later}{$v}) {
		$self->log('V', $v);
		delete $self->{later}{$v};
	}
	if (!defined $self->{engine}{built}{$v}) {
		$self->{engine}{built}{$v}= $v;
		$self->log('B', $v);
	}
	$self->remove($v);
}

sub is_done_or_enqueue
{
	my ($self, $v) = @_;
	my $okay = 1;
	for my $w ($v->build_path_list) {
		if ($self->{builder}->end_check($w)) {
			$self->mark_as_done($w);
		} else {
			$self->{nfs}{$v}{$w} = $w;
			$okay = 0;
		}
	}
	return $okay;
}

sub is_done
{
	my ($self, $v) = @_;
	if ($self->{builder}->check($v)) {
		for my $w ($v->build_path_list) {
			next if $v eq $w;
			next unless $self->{builder}->check($w);
			$self->mark_as_done($w);
		}
	}
	return $self->is_done_quick($v);
}

sub is_done_quick
{
	my ($self, $v) = @_;
	if ($self->{builder}->check($v)) {
		$self->mark_as_done($v);
		return 1;
	} else {
		return 0;
	}
}

sub get_core
{
	my $self = shift;
	return $self->{builder}->get;
}

sub key_for_doing
{
	my ($self, $v) = @_;
	return $v->pkgpath;
}

sub already_done
{
	my ($self, $v) = @_;
	$self->{engine}{logger}->make_log_link($v);
}

sub start_build
{
	my ($self, $v, $core, $lock) = @_;
	$self->log('J', $v, " ".$core->hostname);
	if ($v->{info}->has_property('tag')) {
		$core->prop->{tainted} = $v->{info}->has_property('tag');
	}
	$self->{builder}->build($v, $core, $lock, 
	    sub {
	    	my $fail = shift;
	    	$self->end($core, $v, $fail);
	    });
}

sub end_build
{
	my ($self, $v) = @_;
	$self->{engine}{affinity}->finished($v);
	$self->{engine}{heuristics}->finish_special($v);
}


# for fetch-only, we do the same as Build, except we're never happy
package DPB::SubEngine::NoBuild;

our @ISA = qw(DPB::SubEngine::Build);
sub is_done
{
	return 0;
}

1;
