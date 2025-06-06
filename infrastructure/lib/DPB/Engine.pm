# ex:ts=8 sw=4:
# $OpenBSD: Engine.pm,v 1.152 2025/06/07 04:08:00 tb Exp $
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

use DPB::Limiter;
use DPB::SubEngine;
use DPB::ErrorList;
use DPB::Queue;
use Time::HiRes;

package DPB::Engine;
our @ISA = qw(DPB::Limiter);

use DPB::Heuristics;
use DPB::Util;

# this is the main dpb engine, responsible for moving stuff that can
# be built to the right location, and starting the actual builds

# - it delegates to a subengine class for actually doing stuff
# (e.g., build/fetch/roach)

# - it's responsible for (more or less) monitoring locks and errors

sub new($class, $state)
{
	my $o = bless {built => DPB::HashQueue->new,
	    tobuild => DPB::HashQueue->new,
	    state => $state,
	    installable => DPB::HashQueue->new,
	    heuristics => $state->heuristics,
	    sizer => $state->sizer,
	    locker => $state->locker,
	    logger => $state->logger,
	    affinity => $state->{affinity},
	    errors => DPB::ErrorList->new,
	    locks => DPB::LockList->new,
	    nfslist => DPB::NFSList->new,
	    built_packages => 0,
	    requeued => DPB::ListQueue->new,
	    ignored => DPB::ListQueue->new}, $class;
	$o->set_current_time;
	$o->{buildable} = $class->build_subengine_class($state)->new($o, 
	    $state->builder);
	$o->{tofetch} = $class->fetch_subengine_class($state)->new($o);
	$o->{toroach} = $class->roach_subengine_class($state)->new($o);
	$o->{log} = $state->logger->append("engine");
	$o->{stats} = DPB::Stats->new($state);
	return $o;
}

sub set_current_time($self)
{
	my $ts = Time::HiRes::time();
	$self->{ts} = $ts;
	$self->{timestring} = DPB::Util->ts2string($ts);
	if ($self->{state}->defines('EXTRA_TS')) {
		require DPB::ISO8601;
		state $ts2 = 0;
		state $extra = '';
		my $ts3 = int($ts);
		if ($ts2 != $ts3) {
			$ts2 = $ts3;
			$extra = DPB::ISO8601->time2string($ts2);
		}
		$self->{timestring}.="($extra)";
	}
}

sub dump_queue($self, @l)
{
	$self->{buildable}->dump_queue(@l);
}

sub build_subengine_class($class, $state)
{
	if ($state->{fetch_only}) {
		return "DPB::SubEngine::Dummy";
	} else {
		require DPB::SubEngine::Build;
		return "DPB::SubEngine::Build";
	}
}

sub fetch_subengine_class($class, $state)
{
	if ($state->{want_fetchinfo}) {
		require DPB::SubEngine::Fetch;
		return "DPB::SubEngine::Fetch";
	} else {
		return "DPB::SubEngine::Dummy";
	}
}

sub roach_subengine_class($class, $state)
{
	if ($state->{roach}) {
		require DPB::SubEngine::Roach;
		return "DPB::SubEngine::Roach";
	} else {
		return "DPB::SubEngine::Dummy";
	}
}

# forwarder for the wipe external command
sub wipe($o, @l)
{
	$o->{buildable}->start_wipe(@l);
}

sub status($self, $v)
{
	# each path is in one location only
	# this is not efficient but we don't care, as this is user ui
	for my $k (qw(built tobuild installable buildable errors locks nfslist)) {
		if ($self->{$k}->contains($v)) {
			return $k;
		}
	}
	return undef;
}

sub recheck_errors($self)
{
	# XXX we can't do an OR because we want to run every single one
	# even though we only care that one did break
	my $problems = $self->{errors}->recheck($self) +
	    $self->{locks}->recheck($self) +
	    $self->{nfslist}->recheck($self);
	return $problems != 0;
}

sub log_same_ts($self, $kind, $v = undef, $extra = '')
{
	my $fh = $self->{log};
	print $fh "$$\@$self->{timestring}: $kind";
	if (defined $v) {
		print $fh ": ", $v->logname;
		if (defined $extra) {
			print $fh " ", $extra;
		}
	}
	print $fh "\n";
}

sub log($self, @l)
{
	$self->set_current_time;
	$self->log_same_ts(@l);
}

sub log_as_built($self, $v)
{
	my $n = $v->fullpkgname;
	my $fh = $self->{logger}->append("built-packages");
	$self->{built_packages}++;
	print $fh "$n.tgz\n";
}

sub flush_log($self)
{
	$self->{log}->flush;
}

# returns the number of distfiles to fetch
# XXX side-effect: changes the heuristics based
# on actual Q number, e.g., tries harder to
# fetch if the queue is "low" (30, not tweakable)
# and doesn't really care otherwise
sub fetchcount($self, $q)
{
	return () if $self->{tofetch}->is_dummy;
	if ($self->{state}{fetch_only}) {
		$self->{tofetch}{queue}->set_fetchonly;
	} elsif ($q < 30) {
		$self->{tofetch}{queue}->set_h1;
	} else {
		$self->{tofetch}{queue}->set_h2;
	}
	return ("F=".$self->{tofetch}->count);
}

sub statline($self)
{
	my $q = $self->{buildable}->count;
	return join(" ",
	    "I=".$self->{installable}->count,
	    "B=".$self->{built}->count,
	    "Q=$q",
	    "T=".$self->{tobuild}->count,
	    $self->fetchcount($q));
}

# see next method, don't bother adding stuff if not needed.
sub may_add($self, $prefix, $s)
{
	if ($s eq '') {
		return '';
	} else {
		return "$prefix$s\n";
	}
}

sub report_tty($self, $state)
{
	my $q = $self->{buildable}->count;
	my $t = $self->{tobuild}->count;
	return join(" ",
	    $self->statline,
	    "!=".$self->{ignored}->count)."\n".
	    $self->may_add("L=", $self->{locks}->stringize).
	    $self->may_add("E=", $self->{errors}->stringize). 
	    $self->may_add("H=", $self->{nfslist}->stringize);
}

sub stats($self)
{
	$self->{stats}->log($self->{ts}, $self->statline);
}

sub report_notty($self, $state)
{
	$self->{lasterrors} //= 0;
	if (@{$self->{errors}} != $self->{lasterrors}) {
		$self->{lasterrors} = @{$self->{errors}};
		return "Error in ".join(' ', map {$_->fullpkgpath} @{$self->{errors}})."\n";
	} else {
		return undef;
	}
}

sub adjust($self, $v, $kind, $kind2 = undef)
{
	return 0 if !exists $v->{info}{$kind};
	my $not_yet = 0;
	# XXX don't use `values` in this loop, it may trigger perlbug 77706
	my @values = values %{$v->{info}{$kind}};
	for my $d (@values) {
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

sub missing_dep($self, $v, $kind)
{
	return undef if !exists $v->{info}{$kind};
	for my $d (values %{$v->{info}{$kind}}) {
		return $d if (defined $d->{info}) && $d->{info}{IGNORE};
	}
	return undef;
}

sub stub_out($self, $v)
{
	push(@{$self->{ignored}}, $v);

	# keep the info if it exists, make sure it's stubbed out otherwise
	my $i = $v->{info};
	$v->{info} = DPB::PortInfo->stub;
	return if !defined $i;
	for my $w ($v->build_path_list) {
		# don't fill in equiv lists if they don't matter.
		next if !defined $w->{info};
		if ($w->{info} eq $i) {
			$w->{info} = DPB::PortInfo->stub;
		}
	}
}

# need to ignore $v because of some missing $kind dependency:
# wipe out its info and put it in the right list
sub should_ignore($self, $v, $kind)
{
	if (my $d = $self->missing_dep($v, $kind)) {
		$self->log_same_ts('!', $v, "because of ".$d->fullpkgpath);
		$self->stub_out($v);
		return 1;
	} else {
		return 0;
	}
}

sub has_known_depends($self, $v)
{
	for my $kind (qw(DEPENDS BDEPENDS)) {
		next unless defined $v->{info}{$kind};
		for my $d (values %{$v->{info}{$kind}}) {
			return 0 unless $d->has_fullpkgname;
		}
	}
	return 1;
}

sub adjust_extra($self, $v, $kind, $kind2)
{
	return 0 if !exists $v->{info}{$kind};
	my $not_yet = 0;
	for my $d (values %{$v->{info}{$kind}}) {
		$self->{heuristics}->mark_depend($d, $v);
		if ((defined $d->{info} && !$self->{tobuild}{$d} && 
			$self->has_known_depends($d)) ||
		    ($d->has_fullpkgname &&
		    $d->fullpkgname eq $v->fullpkgname)) {
		    	if ($self->adjust_distfiles($d)) {
				$not_yet++;
			} else {
				delete $v->{info}{$kind}{$d};
				$v->{info}{$kind2}{$d} = $d if defined $kind2;
			}
		} else {
			$not_yet++;
		}
	}
	return $not_yet if $not_yet;
	delete $v->{info}{$kind};
	return 0;
}

sub adjust_distfiles($self, $v)
{
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

sub adjust_built($self)
{
	my $changes = 0;

	for my $v (values %{$self->{built}}) {
		if ($self->adjust($v, 'RDEPENDS') == 0) {
			delete $self->{built}{$v};
			# okay, thanks to equiv, some other path was marked
			# as stub, and obviously we lost our deps
			if ($v->{info}->is_stub) {
				$self->log_same_ts('!', $v, 
				    "equivalent to an ignored path");
				# just drop it, it's already ignored as
				# an equivalent path
				next;
			}
			$self->{installable}{$v} = $v;
			if ($v->{wantinstall}) {
				$self->{buildable}->will_install($v);
			}
			$self->log_same_ts('I', $v,'# '.$v->fullpkgname);
			$changes++;
		} elsif ($self->should_ignore($v, 'RDEPENDS')) {
			delete $self->{built}{$v};
			$changes++;
		}
	}
	return $changes;
}

sub adjust_depends1($self, $v, $has)
{
	$has->{$v} = $self->adjust($v, 'DEPENDS', 'BDEPENDS');
}

sub adjust_depends2($self, $v, $has)
{
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
			$self->log_same_ts('!', $v, 
			    "equivalent to an ignored path");
			# just drop it, it's already ignored as
			# an equivalent path
			delete $self->{tobuild}{$v};
			return;
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
			# XXX because of this, not all build_path_list
			# are considered equal... 
			if ($self->should_ignore($v, 'RDEPENDS')) {
				$self->{buildable}->remove($v);
			} else {
				$self->{buildable}->add($v);
				$self->log_same_ts('Q', $v);
			}
		} 
	}
}

sub adjust_tobuild($self)
{
	my $has = {};
	for my $v (values %{$self->{tobuild}}) {
		# XXX we don't have enough there !
		next if $self->{buildable}->detained($v);
		# due to pkgname aliases, we may have been built through
		# another pkgpath.
		next if $self->{buildable}->is_done_quick($v);
		$self->adjust_depends1($v, $has);
	}

	for my $v (values %{$self->{tobuild}}) {
		# XXX we don't have enough there !
		next if $self->{buildable}->detained($v);
		$self->adjust_depends2($v, $has);
	}
}

sub check_buildable($self, $forced = 0)
{
	my $r = $self->limit($forced, 50, "ENG", 1,
	    sub() {
		$self->log('+');
		1 while $self->adjust_built;
		$self->adjust_tobuild;
		$self->flush_log;
	    });
	$self->stats;
	return $r;
}
sub new_roach($self, $r)
{
	$self->{toroach}->add($r);
}

sub new_path($self, $v)
{
	if (defined $v->{info}{IGNORE} && 
	    !$self->{state}{fetch_only}) {
		$self->log('!', $v, $v->{info}{IGNORE}->string);
		$self->stub_out($v);
		return;
	}
	if (defined $v->{info}{MISSING_FILES}) {
		$self->add_fatal($v, ["fetch manually"], 
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
	my $notyet = 0;
	if (defined $v->{info}{FDEPENDS}) {
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
			$notyet = 1;
		}
	}
	return if $notyet;
	my $has = {};
	$self->adjust_depends1($v, $has);
	$self->adjust_depends2($v, $has);
}

sub new_fetch_path($self, $v)
{
	if (defined $v->{info}{IGNORE} && 
	    !$self->{state}{fetch_only}) {
		$self->log('!', $v, $v->{info}{IGNORE}->string);
		$self->stub_out($v);
		return;
	}
	if (defined $v->{info}{MISSING_FILES}) {
		$self->add_fatal($v, ["fetch manually"], 
		    "Missing distfiles: ".
		    $v->{info}{MISSING_FILES}->string, 
		    $v->{info}{FETCH_MANUALLY}->string);
		return;
	}
	if (defined $v->{info}{FDEPENDS}) {
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
}

sub requeue($self, $v)
{
	$self->{buildable}->add($v);
	$self->{sizer}->finished($v);
}

sub requeue_dist($self, $v)
{
	$self->{tofetch}->add($v);
}

sub rescan($self, $v)
{
	push(@{$self->{requeued}}, $v->path);
}

sub add_fatal($self, $v, $l, @messages)
{
	push(@{$self->{errors}}, $v);
	my $error = join(' ', @$l);
	if (length $error > 60) {
		$error = substr($error, 0, 58)."...";
	}
	$self->log('!', $v, $error);
	if ($self->{heldlocks}{$v}) {
		print {$self->{heldlocks}{$v}} "error=$error\n";
		delete $self->{heldlocks}{$v};
	} else {
		my $lock = $self->{locker}->lock($v);
		$lock->write("error", $error) if $lock;
	}
	$self->{logger}->log_error($v, @$l, @messages);
	$self->stub_out($v);
}

sub rebuild_info($self, $core)
{
	my @l = @{$self->{requeued}};
	my %d = ();
	$self->{requeued} = [];
	my %subdirs = map {($_->pkgpath_and_flavors, 1)} @l;

	for my $v (@l) {
		$self->{buildable}->detain($v);
		if (defined $v->{info}{FDEPENDS}) {
			for my $f (values %{$v->{info}{FDEPENDS}}) {
				$f->forget;
				$self->{tofetch}->detain($f);
				$d{$f} = $f;
			}
		}
		delete $v->{info};
	}
	$self->{state}->grabber->forget_cache;
	$self->{state}->grabber->grab_subdirs($core, \%subdirs, undef);
	for my $v (@l) {
		$self->{buildable}->release($v);
	}
	for my $f (values %d) {
		$self->{tofetch}->release($f);
	}
}

sub start_new_job($self)
{
	my $r = $self->{buildable}->start;
	$self->flush_log;
	return $r;
}

sub start_new_fetch($self)
{
	my $r = $self->{tofetch}->start;
	$self->flush_log;
	return $r;
}

sub start_new_roach($self)
{
	my $r = $self->{toroach}->start;
	$self->flush_log;
	return $r;
}

sub can_build($self)
{
	return $self->{buildable}->non_empty || @{$self->{requeued}} > 0;
}

sub can_fetch($self)
{
	return $self->{tofetch}->non_empty;
}

sub can_roach($self)
{
	return $self->{toroach}->non_empty;
}

sub dump_category($self, $k, $fh = \*STDOUT)
{
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


sub info_dump($self, $fh)
{
	for my $k (qw(tobuild built)) {
		$self->dump_category($k, $fh);
	}
	$self->{buildable}->dump('Q', $fh);
	print $fh "\n";
}

sub end_dump($self, $fh = \*STDOUT)
{
	for my $v (values %{$self->{built}}) {
		$self->adjust($v, 'RDEPENDS');
	}
	for my $k (qw(tobuild built)) {
		$self->dump_category($k, $fh);
	}
	print $fh "\n";
}

sub smart_dump($self, $fh)
{
	$self->{buildable}->smart_dump($fh);
}

sub dump($self, $fh = \*STDOUT)
{
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
# to get to gettext/iconv/gmake very quickly.

sub dump_dependencies($self)
{
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
	my $state = $self->{state};
	$state->{log_user}->rewrite_file($state, $state->{dependencies_log},
	    sub($log) {
		for my $k (sort {$cache->{$b} <=> $cache->{$a}} keys %$cache) {
			print $log "$k $cache->{$k}\n" or return 0;
		}
		return 1;
	    });
}

sub find_best($self, $file, $limit)
{
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

package DPB::Stats;
use DPB::Clock;

sub new($class, $state)
{
	my $o = bless { 
	    fh => DPB::Util->make_hot($state->logger->append("stats")),
	    delta => $state->{starttime},
	    statline => ''},
	    	$class;
	DPB::Clock->register($o);
	return $o;
}

sub log($self, $ts, $line)
{
	return if $line eq $self->{statline};

	$self->{statline} = $line;
	print {$self->{fh}} join(' ', $$, DPB::Util->ts2string($ts), 
	    DPB::Util->ts2string($ts-$self->{delta}), $line), "\n";
}

sub stopped_clock($self, $gap, $)
{
	$self->{delta} += $gap;
}

1;
