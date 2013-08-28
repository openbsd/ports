# ex:ts=8 sw=4:
# $OpenBSD: Engine.pm,v 1.87 2013/08/28 12:00:39 espie Exp $
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

use DPB::Limiter;
package DPB::ErrorList::Base;

sub new
{
	my $class = shift;
	bless [], $class;
}

sub recheck
{
	my ($list, $engine) = @_;
	return if @$list == 0;
	my $locker = $engine->{locker};

	my @keep = ();
	while (my $v = shift @$list) {
		if ($list->unlock_early($v, $engine)) {
			$locker->unlock($v);
			next;
		}
		if ($locker->locked($v)) {
			push(@keep, $v);
		} else {
			$list->reprepare($v, $engine);
		}
	}
	push(@$list, @keep) if @keep != 0;
}

sub stringize
{
	my $list = shift;
	my @l = ();
	for my $e (@$list) {
		my $s = $e->logname;
		if (defined $e->{host} && !$e->{host}->is_localhost) {
			$s .= "(".$e->{host}->name.")";
		}
		if (defined $e->{info} && $e->{info}->has_property('nojunk')) {
			$s .= '!';
		}
		push(@l, $s);
	}
	return join(' ', @l);
}

sub reprepare
{
	my ($class, $v, $engine) = @_;
	$v->requeue($engine);
}

package DPB::ErrorList;
our @ISA = (qw(DPB::ErrorList::Base));

sub unlock_early
{
	my ($list, $v, $engine) = @_;
	if ($v->unlock_conditions($engine)) {
		$v->requeue($engine);
		return 1;
	} else {
		return 0;
	}
}

sub reprepare
{
	my ($list, $v, $engine) = @_;
	$engine->rescan($v);
}

package DPB::LockList;
our @ISA = (qw(DPB::ErrorList::Base));
sub unlock_early
{
	&DPB::ErrorList::unlock_early;
}

sub stringize
{
	my $list = shift;
	my @l = ();
	my $done = {};
	for my $e (@$list) {
		my $s = $e->lockname;
		if (!defined $done->{$s}) {
			push(@l, $s);
			$done->{$s} = 1;
		}
	}
	return join(' ', @l);
}

package DPB::NFSList;
our @ISA = (qw(DPB::ErrorList::Base));

sub reprepare
{
	&DPB::ErrorList::reprepare;
}

sub unlock_early
{
	my ($list, $v, $engine) = @_;
	my $okay = 1;
	my $sub = $engine->{buildable};
	my $h = $sub->{nfs}{$v};
	while (my ($k, $w) = each %$h) {
		if ($sub->{builder}->end_check($w)) {
			$sub->mark_as_done($w);
			delete $h->{$w};
		} else {
			$okay = 0;
			# infamous
			$engine->log('H', $v);
		}
	}
	if ($okay) {
		delete $sub->{nfs}{$v};
	}
	return $okay;
}



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

sub start_install
{
	return 0;
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

	if (@{$self->{engine}{requeued}} > 0) {
		$self->{engine}->rebuild_info($core);
		return;
	}
	if ($self->start_install($core)) {
		return;
	}
	my $o = $self->sorted($core);

	# note we don't actually remove stuff from the queue until needed, 
	# so mismatches holds a copy of stuff that's still there.
	my @mismatches = ();

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
		if ($self->check_for_memory_hogs($v, $core)) {
			push(@mismatches, $v);
			next;
		}
		# keep affinity mismatches for later
		if (defined $v->{affinity} && !$core->matches($v->{affinity})) {
			$self->log('A', $v, 
			    " ".$core->hostname." ".$v->{affinity});
			# try to start them anyways, on the "right" core
			my $core2 = DPB::Core->get_affinity($v->{affinity});
			if (defined $core2) {
				if ($self->lock_and_start_build($core2, $v)) {
					next;
				} else {
					$core2->mark_ready;
				}
			}
			push(@mismatches, $v);
			next;
		}
		# if there's no external lock, we can build
		if ($self->lock_and_start_build($core, $v)) {
			return;
		}
	}
	# let's make sure we don't have something else first
	if (@mismatches > 0) {
		if ($self->{engine}->check_buildable(1)) {
			$core->mark_ready;
			return $self->start;
		}
	}
	# second pass, affinity mismatches
	for my $v (@mismatches) {
		if ($self->lock_and_start_build($core, $v)) {
			$self->log('Y', $v, 
			    " ".$core->hostname." ".$v->{affinity});
			return;
		}
	}
	# couldn't build anything, don't forget to give back the core.
	$core->mark_ready;
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

sub check_for_memory_hogs
{
	return 0;
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
	$self->{engine}{affinity}->start($v, $core);
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

# for fetch-only, we do the same as Build, except we're never happy
package DPB::SubEngine::NoBuild;

our @ISA = qw(DPB::SubEngine::Build);
sub is_done
{
	return 0;
}

package DPB::SubEngine::Fetch;
our @ISA = qw(DPB::SubEngine);
sub new_queue
{
	my ($class, $engine) = @_;
	return DPB::Heuristics::FetchQueue->new($engine->{heuristics});
}

sub is_done
{
	my ($self, $v) = @_;
	return 1 if $v->{done};
	if ($v->check($self->{engine}{logger})) {
		$self->log('B', $v);
		$v->{done} = 1;
		return 1;
	} else {
		return 0;
    	}
}

sub get_core
{
	return DPB::Core::Fetcher->get;
}

sub start_build
{
	my ($self, $v, $core, $lock) = @_;
	$self->log('J', $v);
	DPB::Fetch->fetch($self->{engine}{logger}, $v, $core,
	    sub { 
	    	$self->end($core, $v, $core->{status});
	    });
}

sub end_build
{
}

package DPB::Engine;
our @ISA = qw(DPB::Limiter);

use DPB::Heuristics;
use DPB::Util;

sub new
{
	my ($class, $state) = @_;
	my $o = bless {built => {},
	    tobuild => {},
	    state => $state,
	    installable => {},
	    heuristics => $state->heuristics,
	    locker => $state->locker,
	    logger => $state->logger,
	    affinity => $state->{affinity},
	    errors => DPB::ErrorList->new,
	    locks => DPB::LockList->new,
	    nfslist => DPB::NFSList->new,
	    ts => time(),
	    requeued => [],
	    ignored => []}, $class;
	$o->{buildable} = ($state->{fetch_only} ? "DPB::SubEngine::NoBuild"
	    : "DPB::SubEngine::Build")->new($o, $state->builder);
	if ($state->{want_fetchinfo}) {
		$o->{tofetch} = DPB::SubEngine::Fetch->new($o);
	}
	$o->{log} = $state->logger->open("engine");
	$o->{stats} = DPB::Util->make_hot($state->logger->open("stats"));
	return $o;
}

sub recheck_errors
{
	my $self = shift;
	$self->{errors}->recheck($self);
	$self->{locks}->recheck($self);
	$self->{nfslist}->recheck($self);
}

sub log_no_ts
{
	my ($self, $kind, $v, $extra) = @_;
	$extra //= '';
	my $fh = $self->{log};
	print $fh "$$\@$self->{ts}: $kind: ", $v->logname, "$extra\n";
}

sub log
{
	my $self = shift;
	$self->{ts} = time();
	$self->log_no_ts(@_);
}

sub flush
{
	my $self = shift;
	$self->{log}->flush;
}

sub count
{
	my ($self, $field) = @_;
	my $r = $self->{$field};
	if (ref($r) eq 'HASH') {
		return scalar keys %$r;
	} elsif (ref($r) eq 'ARRAY') {
		return scalar @$r;
	} else {
		return "?";
    	}
}

sub fetchcount
{
	my ($self, $q, $t)= @_;
	return () unless defined $self->{tofetch};
	if ($self->{state}{fetch_only}) {
		$self->{tofetch}{queue}->set_fetchonly;
	} elsif ($q < 30) {
		$self->{tofetch}{queue}->set_h1;
	} else {
		$self->{tofetch}{queue}->set_h2;
	}
	return ("F=".$self->{tofetch}->count);
}

sub statline
{
	my $self = shift;
	my $q = $self->{buildable}->count;
	my $t = $self->count("tobuild");
	return join(" ",
	    "I=".$self->count("installable"),
	    "B=".$self->count("built"),
	    "Q=$q",
	    "T=$t",
	    $self->fetchcount($q, $t));
}

sub may_add
{
	my ($self, $prefix, $s) = @_;
	if ($s eq '') {
		return '';
	} else {
		return "$prefix$s\n";
	}
}

sub report
{
	my $self = shift;
	my $q = $self->{buildable}->count;
	my $t = $self->count("tobuild");
	return join(" ",
	    $self->statline,
	    "!=".$self->count("ignored"))."\n".
	    $self->may_add("L=", $self->{locks}->stringize).
	    $self->may_add("E=", $self->{errors}->stringize). 
	    $self->may_add("H=", $self->{nfslist}->stringize);
}

sub stats
{
	my $self = shift;
	my $fh = $self->{stats};
	$self->{statline} //= "";
	my $line = $self->statline;
	if ($line ne $self->{statline}) {
		$self->{statline} = $line;
		print $fh $$, " ", $self->{ts}, " ", $line, "\n";
	}
}

sub important
{
	my $self = shift;
	$self->{lasterrors} //= 0;
	if (@{$self->{errors}} != $self->{lasterrors}) {
		$self->{lasterrors} = @{$self->{errors}};
		return "Error in ".join(' ', map {$_->fullpkgpath} @{$self->{errors}})."\n";
	}
}

sub adjust
{
	my ($self, $v, $kind, $kind2) = @_;
	return 0 if !exists $v->{info}{$kind};
	my $not_yet = 0;
	for my $d (values %{$v->{info}{$kind}}) {
		$self->{heuristics}->mark_depend($d, $v);
		if ($self->{installable}{$d} ||
		    (defined $d->{info} &&
		    $d->fullpkgname eq $v->fullpkgname)) {
			delete $v->{info}{$kind}{$d};
			$v->{info}{$kind2}{$d} = $d if defined $kind2;
		} else {
			$not_yet++;
		}
	}
	return $not_yet if $not_yet;
	delete $v->{info}{$kind};
	return 0;
}

sub missing_dep
{
	my ($self, $v, $kind) = @_;
	return undef if !exists $v->{info}{$kind};
	for my $d (values %{$v->{info}{$kind}}) {
		return $d if (defined $d->{info}) && $d->{info}{IGNORE};
	}
	return undef;
}

sub stub_out
{
	my ($self, $v) = @_;
	my $i = $v->{info};
	for my $w ($v->build_path_list) {
		# don't fill in equiv lists if they don't matter.
		next if !defined $w->{info};
		if ($w->{info} eq $i) {
			$w->{info} = DPB::PortInfo->stub;
		}
	}
	push(@{$self->{ignored}}, $v);
}

# need to ignore $v because of some missing $kind dependency:
# wipe out its info and put it in the right list
sub should_ignore
{
	my ($self, $v, $kind) = @_;
	if (my $d = $self->missing_dep($v, $kind)) {
		$self->log_no_ts('!', $v, " because of ".$d->fullpkgpath);
		$self->stub_out($v);
		return 1;
	} else {
		return 0;
	}
}

sub adjust_extra
{
	my ($self, $v, $kind, $kind2) = @_;
	return 0 if !exists $v->{info}{$kind};
	my $not_yet = 0;
	for my $d (values %{$v->{info}{$kind}}) {
		$self->{heuristics}->mark_depend($d, $v);
		if ((defined $d->{info} && !$self->{tobuild}{$d}) ||
		    ($d->has_fullpkgname &&
		    $d->fullpkgname eq $v->fullpkgname)) {
			delete $v->{info}{$kind}{$d};
			$v->{info}{$kind2}{$d} = $d if defined $kind2;
		} else {
			$not_yet++;
		}
	}
	return $not_yet if $not_yet;
	delete $v->{info}{$kind};
	return 0;
}

sub adjust_distfiles
{
	my ($self, $v) = @_;
	return 0 if !exists $v->{info}{FDEPENDS};
	my $not_yet = 0;
	for my $f (values %{$v->{info}{FDEPENDS}}) {
		if ($self->{tofetch}->is_done($f)) {
			$v->{info}{distsize} //= 0;
			$v->{info}{distsize} += $f->{sz};
			delete $v->{info}{FDEPENDS}{$f};
			next;
		}
		$not_yet++;
	}
	return $not_yet if $not_yet;
	delete $v->{info}{FDEPENDS};
	return 0;
}

my $output = {};

sub adjust_built
{
	my $self = shift;
	my $changes = 0;

	for my $v (values %{$self->{built}}) {
		if ($self->adjust($v, 'RDEPENDS') == 0) {
			delete $self->{built}{$v};
			# okay, thanks to equiv, some other path was marked
			# as stub, and obviously we lost our deps
			if ($v->{info}->is_stub) {
				$self->log_no_ts('!', $v, 
				    " equivalent to an ignored path");
				# just drop it, it's already ignored as
				# an equivalent path
				next;
			}
			$self->{installable}{$v} = $v;
			if ($v->{wantinstall}) {
				$self->{buildable}->will_install($v);
			}
			$self->log_no_ts('I', $v);
			$changes++;
		} elsif ($self->should_ignore($v, 'RDEPENDS')) {
			delete $self->{built}{$v};
			$changes++;
		}
	}
	return $changes;
}

sub adjust_tobuild
{
	my $self = shift;

	my $has = {};
	for my $v (values %{$self->{tobuild}}) {
		# due to pkgname aliases, we may have been built through
		# another pkgpath.
		next if $self->{buildable}->is_done_quick($v);

		$has->{$v} = $self->adjust($v, 'DEPENDS', 'BDEPENDS');
	}

	for my $v (values %{$self->{tobuild}}) {
		if ($has->{$v} != 0) {
			if (my $d = $self->should_ignore($v, 'DEPENDS')) {
				delete $self->{tobuild}{$v};
			} else {
				$v->{has} = 2;
			}
		} else {
			# okay, thanks to equiv, some other path was marked
			# as stub, and obviously we lost our deps
			if ($v->{info}->is_stub) {
				$self->log_no_ts('!', $v, 
				    " equivalent to an ignored path");
				# just drop it, it's already ignored as
				# an equivalent path
				delete $self->{tobuild}{$v};
				next;
			}
			my $has = $has->{$v} + 
			    $self->adjust_extra($v, 'EXTRA', 'BEXTRA');

			my $has2 = $self->adjust_distfiles($v);
			# being buildable directly is a priority,
			# but put the patch/dist/small stuff down the 
			# line as otherwise we will tend to grab 
			# patch files first
			$v->{has} = 2 * ($has != 0) + ($has2 > 1);
			if ($has + $has2 == 0) {
				delete $self->{tobuild}{$v};
				if ($self->should_ignore($v, 'RDEPENDS')) {
					$self->{buildable}->remove($v);
				} else {
					$self->{buildable}->add($v);
					$self->log_no_ts('Q', $v);
				}
			} 
		}
	}
}

sub check_buildable
{
	my ($self, $forced) = @_;
	my $r = $self->limit($forced, 150, "ENG", 
	    $self->{buildable}->count > 0,
	    sub {
		1 while $self->adjust_built;
		$self->adjust_tobuild;
		$self->flush;
	    });
	$self->stats;
	return $r;
}

sub new_path
{
	my ($self, $v) = @_;
	if (defined $v->{info}{IGNORE} && 
	    !$self->{state}->{fetch_only}) {
		$self->log('!', $v, " ".$v->{info}{IGNORE}->string);
		$self->stub_out($v);
		return;
	}
	if (defined $v->{info}{MISSING_FILES}) {
		$self->log('!', $v, " fetch manually");
		$self->add_fatal($v, "fetch manually", 
		    "Missing distfiles: ".
		    $v->{info}{MISSING_FILES}->string, 
		    $v->{info}{FETCH_MANUALLY}->string);
		return;
	}
#		$self->{heuristics}->todo($v);
	if (!$self->{buildable}->is_done_quick($v)) {
		$self->{tobuild}{$v} = $v;
		$self->log('T', $v);
	}
	return unless defined $v->{info}{FDEPENDS};
	for my $f (values %{$v->{info}{FDEPENDS}}) {
		if ($self->{tofetch}->contains($f) ||
		    $self->{tofetch}{doing}{$f}) {
			next;
		}
		if ($self->{tofetch}->is_done($f)) {
			$v->{info}{distsize} //= 0;
			$v->{info}{distsize} += $f->{sz};
			delete $v->{info}{FDEPENDS}{$f};
			next;
		}
		$self->{tofetch}->add($f);
		$self->log('F', $f);
	}
}

sub requeue
{
	my ($self, $v) = @_;
	$self->{buildable}->add($v);
	$self->{heuristics}->finish_special($v);
}

sub requeue_dist
{
	my ($self, $v) = @_;
	$self->{tofetch}->add($v);
}

sub rescan
{
	my ($self, $v) = @_;
	push(@{$self->{requeued}}, $v);
}

sub add_fatal
{
	my ($self, $v, $error, @messages) = @_;
	push(@{$self->{errors}}, $v);
	my $fh = $self->{locker}->lock($v);
	print $fh "error=$error\n" if $fh;
	$self->{logger}->log_error($v, @messages);
}

sub rebuild_info
{
	my ($self, $core) = @_;
	my @l = @{$self->{requeued}};
	$self->{requeued} = [];
	my %subdirs = map {($_->pkgpath_and_flavors, 1)} @l;
	for my $v (@l) {
		if (defined $v->{info}{FDEPENDS}) {
			for my $f (values %{$v->{info}{FDEPENDS}}) {
				$f->forget;
			}
		}
		delete $v->{info};
	}
	$self->{state}->grabber->grab_subdirs($core, \%subdirs);
	$core->mark_ready;
}

sub start_new_job
{
	my $self = shift;
	$self->{buildable}->start;
	$self->flush;
}

sub start_new_fetch
{
	my $self = shift;
	$self->{tofetch}->start;
	$self->flush;
}

sub can_build
{
	my $self = shift;

	return $self->{buildable}->non_empty || @{$self->{requeued}} > 0;
}

sub can_fetch
{
	my $self = shift;
	return $self->{tofetch}->non_empty;
}

sub dump_category
{
	my ($self, $k, $fh) = @_;
	$fh //= \*STDOUT;

	$k =~ m/^./;
	my $q = "\u$&: ";
	my $cache = {};
	for my $v (sort {$a->fullpkgpath cmp $b->fullpkgpath}
	    values %{$self->{$k}}) {
		print $fh $q;
		if (defined $cache->{$v->{info}}) {
			print $fh $v->fullpkgpath, " same as ",
			    $cache->{$v->{info}}, "\n";
		} else {
			$v->quick_dump($fh);
			$cache->{$v->{info}} = $v->fullpkgpath;
		}
	}
}


sub info_dump
{
	my ($self, $fh) = @_;
	for my $k (qw(tobuild built)) {
		$self->dump_category($k, $fh);
	}
	$self->{buildable}->dump('Q', $fh);
	print $fh "\n";
}

sub end_dump
{
	my ($self, $fh) = @_;
	$fh //= \*STDOUT;
	for my $v (values %{$self->{built}}) {
		$self->adjust($v, 'RDEPENDS');
	}
	for my $k (qw(tobuild built)) {
		$self->dump_category($k, $fh);
	}
	print $fh "\n";
}

sub dump
{
	my ($self, $fh) = @_;
	$fh //= \*STDOUT;
	for my $k (qw(built tobuild installable)) {
		$self->dump_category($k, $fh);
	}
	print $fh "\n";
}

# special case: dump all dependencies at end of listing, and use that to
# restart dpb quicker if we abort and restart.
#
# namely, scan the most important ports first.
#
# use case: when we restart dpb after a few hours, we want the listing job
# to get to groff very quickly, as the queue will stay desperately empty
# otherwise...

sub dump_dependencies
{
	my $self = shift;

	my $cache = {};
	for my $v (DPB::PkgPath->seen) {
		next unless exists $v->{info};
		for my $k (qw(DEPENDS RDEPENDS EXTRA)) {
			next unless exists $v->{info}{$k};
			for my $d (values %{$v->{info}{$k}}) {
				$cache->{$d->fullpkgpath}++;
			}
		}
	}
	my $log = $self->{logger}->create("dependencies");
	for my $k (sort {$cache->{$b} <=> $cache->{$a}} keys %$cache) {
		print $log "$k $cache->{$k}\n";
	}
}

sub find_best
{
	my ($self, $file, $limit) = @_;

	my $list = [];
	if (open my $fh, '<', $file) {
		my $i = 0;
		while (<$fh>) {
			if (m/^(\S+)\s\d+$/) {
				push(@$list, $1);
				$i++;
			}
			last if $i > $limit;
		}
	}
	return $list;
}

1;
