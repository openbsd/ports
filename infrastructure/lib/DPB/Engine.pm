# ex:ts=8 sw=4:
# $OpenBSD: Engine.pm,v 1.142 2019/11/08 13:06:00 espie Exp $
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

sub new
{
	my ($class, $state) = @_;
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
	    ts => Time::HiRes::time(),
	    requeued => DPB::ListQueue->new,
	    ignored => DPB::ListQueue->new}, $class;
	$o->{buildable} = $class->build_subengine_class($state)->new($o, 
	    $state->builder);
	$o->{tofetch} = $class->fetch_subengine_class($state)->new($o);
	$o->{toroach} = $class->roach_subengine_class($state)->new($o);
	$o->{log} = $state->logger->append("engine");
	$o->{stats} = DPB::Stats->new($state);
	return $o;
}

sub build_subengine_class
{
	my ($class, $state) = @_;
	if ($state->{fetch_only}) {
		return "DPB::SubEngine::Dummy";
	} else {
		require DPB::SubEngine::Build;
		return "DPB::SubEngine::Build";
	}
}

sub fetch_subengine_class
{
	my ($class, $state) = @_;
	if ($state->{want_fetchinfo}) {
		require DPB::SubEngine::Fetch;
		return "DPB::SubEngine::Fetch";
	} else {
		return "DPB::SubEngine::Dummy";
	}
}

sub roach_subengine_class
{
	my ($class, $state) = @_;
	if ($state->{roach}) {
		require DPB::SubEngine::Roach;
		return "DPB::SubEngine::Roach";
	} else {
		return "DPB::SubEngine::Dummy";
	}
}

# forwarder for the wipe external command
sub wipe
{
	my $o = shift;
	$o->{buildable}->start_wipe(@_);
}

sub status
{
	my ($self, $v) = @_;
	# each path is in one location only
	# this is not efficient but we don't care, as this is user ui
	for my $k (qw(built tobuild installable buildable errors locks nfslist)) {
		if ($self->{$k}->contains($v)) {
			return $k;
		}
	}
	return undef;
}

sub recheck_errors
{
	my $self = shift;
	$self->{errors}->recheck($self);
	$self->{locks}->recheck($self);
	$self->{nfslist}->recheck($self);
}

sub log_same_ts
{
	my ($self, $kind, $v, $extra) = @_;
	$extra //= '';
	my $fh = $self->{log};
	my $ts = DPB::Util->ts2string($self->{ts});
	print $fh "$$\@$ts: $kind";
	if (defined $v) {
		print $fh ": ", $v->logname;
		if (defined $extra) {
			print $fh " ", $extra;
		}
	}
	print $fh "\n";
}

sub log
{
	my $self = shift;
	$self->{ts} = Time::HiRes::time();
	$self->log_same_ts(@_);
}

sub log_as_built
{
	my ($self, $v) = @_;
	my $n = $v->fullpkgname;
	my $fh = $self->{logger}->append("built-packages");
	print $fh "$n.tgz\n";
}

sub flush_log
{
	my $self = shift;
	$self->{log}->flush;
}

# returns the number of distfiles to fetch
# XXX side-effect: changes the heuristics based
# on actual Q number, e.g., tries harder to
# fetch if the queue is "low" (30, not tweakable)
# and doesn't really caret otherwise
sub fetchcount
{
	my ($self, $q)= @_;
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

sub statline
{
	my $self = shift;
	my $q = $self->{buildable}->count;
	return join(" ",
	    "I=".$self->{installable}->count,
	    "B=".$self->{built}->count,
	    "Q=$q",
	    "T=".$self->{tobuild}->count,
	    $self->fetchcount($q));
}

# see next method, don't bother adding stuff if not needed.
sub may_add
{
	my ($self, $prefix, $s) = @_;
	if ($s eq '') {
		return '';
	} else {
		return "$prefix$s\n";
	}
}

sub report_tty
{
	my ($self, $state) = @_;
	my $q = $self->{buildable}->count;
	my $t = $self->{tobuild}->count;
	return join(" ",
	    $self->statline,
	    "!=".$self->{ignored}->count)."\n".
	    $self->may_add("L=", $self->{locks}->stringize).
	    $self->may_add("E=", $self->{errors}->stringize). 
	    $self->may_add("H=", $self->{nfslist}->stringize);
}

sub stats
{
	my $self = shift;
	$self->{stats}->log($self->{ts}, $self->statline);
}

sub report_notty
{
	my ($self, $state) = @_;
	$self->{lasterrors} //= 0;
	if (@{$self->{errors}} != $self->{lasterrors}) {
		$self->{lasterrors} = @{$self->{errors}};
		return "Error in ".join(' ', map {$_->fullpkgpath} @{$self->{errors}})."\n";
	} else {
		return undef;
	}
}

sub adjust
{
	my ($self, $v, $kind, $kind2) = @_;
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
sub should_ignore
{
	my ($self, $v, $kind) = @_;
	if (my $d = $self->missing_dep($v, $kind)) {
		$self->log_same_ts('!', $v, " because of ".$d->fullpkgpath);
		$self->stub_out($v);
		return 1;
	} else {
		return 0;
	}
}

sub has_known_depends
{
	my ($self, $v) = @_;
	for my $kind (qw(DEPENDS BDEPENDS)) {
		next unless defined $v->{info}{$kind};
		for my $d (values %{$v->{info}{$kind}}) {
			return 0 unless $d->has_fullpkgname;
		}
	}
	return 1;
}

sub adjust_extra
{
	my ($self, $v, $kind, $kind2) = @_;
	return 0 if !exists $v->{info}{$kind};
	my $not_yet = 0;
	for my $d (values %{$v->{info}{$kind}}) {
		$self->{heuristics}->mark_depend($d, $v);
		if ((defined $d->{info} && !$self->{tobuild}{$d} && 
			$self->has_known_depends($d)) ||
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
				$self->log_same_ts('!', $v, 
				    " equivalent to an ignored path");
				# just drop it, it's already ignored as
				# an equivalent path
				next;
			}
			$self->{installable}{$v} = $v;
			if ($v->{wantinstall}) {
				$self->{buildable}->will_install($v);
			}
			$self->log_same_ts('I', $v,' # '.$v->fullpkgname);
			$changes++;
		} elsif ($self->should_ignore($v, 'RDEPENDS')) {
			delete $self->{built}{$v};
			$changes++;
		}
	}
	return $changes;
}

sub adjust_depends1
{
	my ($self, $v, $has) = @_;
	$has->{$v} = $self->adjust($v, 'DEPENDS', 'BDEPENDS');
}

sub adjust_depends2
{
	my ($self, $v, $has) = @_;
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
			    " equivalent to an ignored path");
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

sub adjust_tobuild
{
	my $self = shift;

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

sub check_buildable
{
	my ($self, $forced) = @_;
	my $r = $self->limit($forced, 50, "ENG", 1,
	    sub {
		$self->log('+');
		1 while $self->adjust_built;
		$self->adjust_tobuild;
		$self->flush_log;
	    });
	$self->stats;
	return $r;
}
sub new_roach
{
	my ($self, $r) = @_;
	$self->{toroach}->add($r);
}

sub new_path
{
	my ($self, $v) = @_;
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

sub requeue
{
	my ($self, $v) = @_;
	$self->{buildable}->add($v);
	$self->{sizer}->finished($v);
}

sub requeue_dist
{
	my ($self, $v) = @_;
	$self->{tofetch}->add($v);
}

sub rescan
{
	my ($self, $v) = @_;
	push(@{$self->{requeued}}, $v->path);
}

sub add_fatal
{
	my ($self, $v, $l, @messages) = @_;
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

sub rebuild_info
{
	my ($self, $core) = @_;
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

sub start_new_job
{
	my $self = shift;
	my $r = $self->{buildable}->start;
	$self->flush_log;
	return $r;
}

sub start_new_fetch
{
	my $self = shift;
	my $r = $self->{tofetch}->start;
	$self->flush_log;
	return $r;
}

sub start_new_roach
{
	my $self = shift;
	my $r = $self->{toroach}->start;
	$self->flush_log;
	return $r;
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

sub can_roach
{
	my $self = shift;
	return $self->{toroach}->non_empty;
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

sub smart_dump
{
	my ($self, $fh) = @_;

	my $h = {};

	for my $v (values %{$self->{tobuild}}) {
		$v->{info}{problem} = 'not built';
		$v->{info}{missing} = $v->{info}{DEPENDS};
		$h->{$v} = $v;
	}

	for my $v (values %{$self->{built}}) {
		$v->{info}{problem} = 'not installable';
		$v->{info}{missing} = $v->{info}{RDEPENDS};
		$h->{$v} = $v;
	}
	for my $v (@{$self->{errors}}) {
		$v->{info}{problem} = "errored";
		$h->{$v} = $v;
	}
	for my $v (@{$self->{locks}}) {
		$v->{info}{problem} = "locked";
		$h->{$v} = $v;
	}
	my $cache = {};
	for my $v (sort {$a->fullpkgpath cmp $b->fullpkgpath}
	    values %$h) {
		if (defined $cache->{$v->{info}}) {
			print $fh $v->fullpkgpath, " same as ",
			    $cache->{$v->{info}}, "\n";
			next;
		}
		print $fh $v->fullpkgpath, " ", $v->{info}{problem};
		if (defined $v->{info}{missing}) {
			$self->follow_thru($v, $fh, $v->{info}{missing});
			#print $fh " ", $v->{info}{missing}->string;
		}
		print $fh "\n";
		$cache->{$v->{info}} = $v->fullpkgpath;
	}
	print $fh '-'x70, "\n";
}

sub follow_thru
{
	my ($self, $v, $fh, $list) = @_;
	my @d = ();
	my $known = {$v => $v};
	while (1) {
		my $w = (values %$list)[0];
		push(@d, $w);
		if (defined $known->{$w}) {
			last;
		}
		$known->{$w} = $w;
		if (defined $w->{info}{missing}) {
			$list = $w->{info}{missing};
		} else {
			last;
		}
	}
	print $fh " ", join(' -> ', map {$_->logname} @d);
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
# to get to gettext/iconv/gmake very quickly.

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
	my $state = $self->{state};
	$state->{log_user}->rewrite_file($state, $state->{dependencies_log},
	    sub {
	    	my $log = shift;
		for my $k (sort {$cache->{$b} <=> $cache->{$a}} keys %$cache) {
			print $log "$k $cache->{$k}\n" or return 0;
		}
		return 1;
	    });
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

package DPB::Stats;
use DPB::Clock;

sub new
{
	my ($class, $state) = @_;
	my $o = bless { 
	    fh => DPB::Util->make_hot($state->logger->append("stats")),
	    delta => $state->{starttime},
	    statline => ''},
	    	$class;
	DPB::Clock->register($o);
	return $o;
}

sub log
{
	my ($self, $ts, $line) = @_;
	return if $line eq $self->{statline};

	$self->{statline} = $line;
	print {$self->{fh}} join(' ', $$, DPB::Util->ts2string($ts), 
	    DPB::Util->ts2string($ts-$self->{delta}), $line), "\n";
}

sub stopped_clock
{
	my ($self, $gap) = @_;
	$self->{delta} += $gap;
}

1;
