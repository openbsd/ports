# ex:ts=8 sw=4:
# $OpenBSD: SubEngine.pm,v 1.33 2019/11/08 13:06:00 espie Exp $
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

# the 'detain' mechanism:
# when rescanning ports, we wipe out the old info.
# stuff that's already in the queues is thus incomplete (no pkgnames,
# no sha info). Instead of going thru the whole process of registering
# them again, we use detain/release, and the subengines skip over detained
# stuff.

sub detain
{
	my ($self, $v) = @_;
	$self->{detained}{$self->key_for_doing($v)} = 1;
}

sub release
{
	my ($self, $v) = @_;
	my $k = $self->key_for_doing($v);
	delete $self->{detained}{$k};
	for my $candidate (values %{$self->{later2}}) {
		if ($self->key_for_doing($candidate) eq $k) {
			delete $self->{later2}{$candidate};
			$self->log('x', $candidate);
			$self->add($candidate);
		}
	}
}

sub detained
{
	my ($self, $v) = @_;
	return $self->{detained}{$self->key_for_doing($v)};
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

sub use_core
{
	my ($self, $core, $rechecked) = @_;
	if ($self->preempt_core($core)) {
		return 1;
	}

	my $o = $self->sorted($core);

	# first pass, try to find something we can build
	while (my $v = $o->next) {
		next if $self->detained($v);
		# trim stuff that's done
		if ($self->is_done($v)) {
			$self->already_done($v);
			$self->done($v);
		} elsif ($self->can_really_start_build($v, $core)) {
			return 1;
		}
	}
	if (!$rechecked && $self->recheck_mismatches($core)) {
		return 1;
	}
	return 0;
}

sub can_really_start_build
{
	my ($self, $v, $core) = @_;
	# ... trim stuff that's related to other stuff building
	if ($self->{doing}{$self->key_for_doing($v)}) {
		$self->remove($v);
		$self->{later}{$v} = $v;
		$self->log('^', $v);
		return 0;
	# as well as stuff that's getting rescanned
	} elsif ($self->detained($v)) {
		$self->remove($v);
		$self->{later2}{$v} = $v;
		$self->log('X', $v);
		return 0;
	} else {
		return $self->can_start_build($v, $core);
	}
}

sub start
{
	my $self = shift;
	my $core = $self->get_core;

	if ($self->use_core($core, 0)) {
		return 1;
	} else {
		$core->mark_ready;
		return 0;
	}
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
			$v->log_as_built($self->{engine});
			$self->{engine}{locker}->unlock($v);
		} else {
			push(@{$self->{engine}{nfslist}}, $v);
		}
		$self->end_build($v);
		$core->success;
	}
	$self->done($v);
	$self->{engine}->flush_log;
}

sub dump
{
	my ($self, $k, $fh) = @_;
#	$self->{queue}->dump($k, $fh);
}

sub remove_stub
{
}

sub is_dummy
{
	return 0;
}

package DPB::SubEngine::BuildBase;
our @ISA = qw(DPB::SubEngine);

sub new_queue
{
	my ($class, $engine) = @_;
	return $engine->{heuristics}->new_queue;
}

sub new
{
	my ($class, $engine, $builder) = @_;
	my $o = $class->SUPER::new($engine, $builder);
	$o->{builder} = $builder;
	return $o;
}

sub get_core
{
	my $self = shift;
	return $self->{builder}->get;
}

sub preempt_core
{
	my ($self, $core) = @_;

	if (@{$self->{engine}{requeued}} > 0) {
		# XXX note this borrows the core temporarily
		$self->{engine}->rebuild_info($core);
	}
	return 0;
}

# for parts of dpb that won't run
package DPB::SubEngine::Dummy;
our @ISA = qw(DPB::SubEngine::BuildBase);
sub non_empty
{
	return 0;
}

sub is_done
{
	return 0;
}

sub start_build
{
	return 0;
}

sub start_wipe
{
	return 0;
}

sub is_dummy
{
	return 1;
}
1;
