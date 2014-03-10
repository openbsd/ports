# ex:ts=8 sw=4:
# $OpenBSD: Engine.pm,v 1.104 2014/03/10 09:06:12 espie Exp $
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

package DPB::Engine;
our @ISA = qw(DPB::Limiter);

use DPB::Heuristics;
use DPB::Util;

sub subengine_class
{
	my ($class, $state) = @_;
	if ($state->{fetch_only}) {
		return "DPB::SubEngine::NoBuild";
	} else {
		require DPB::SubEngine::Build;
		return "DPB::SubEngine::Build";
	}
}

sub new
{
	my ($class, $state) = @_;
	my $o = bless {built => {},
	    tobuild => {},
	    state => $state,
	    installable => {},
	    heuristics => $state->heuristics,
	    sizer => $state->sizer,
	    locker => $state->locker,
	    logger => $state->logger,
	    affinity => $state->{affinity},
	    errors => DPB::ErrorList->new,
	    locks => DPB::LockList->new,
	    nfslist => DPB::NFSList->new,
	    ts => time(),
	    requeued => [],
	    ignored => []}, $class;
	$o->{buildable} = $class->subengine_class($state)->new($o, $state->builder);
	if ($state->{want_fetchinfo}) {
		require DPB::SubEngine::Fetch;
		$o->{tofetch} = DPB::SubEngine::Fetch->new($o);
	}
	$o->{log} = $state->logger->open("engine");
	$o->{stats} = DPB::Stats->new($state);
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
	my $ts = int($self->{ts});
	print $fh "$$\@$ts: $kind: ", $v->logname, "$extra\n";
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
	$self->{stats}->log($self->{ts}, $self->statline);
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
			$self->log_no_ts('I', $v,' # '.$v->fullpkgname);
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
				# XXX because of this, not all build_path_list
				# are considered equal... 
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
	push(@{$self->{requeued}}, $v);
}

sub add_fatal
{
	my ($self, $v, $error, @messages) = @_;
	push(@{$self->{errors}}, $v);
	if ($self->{heldlocks}{$v}) {
		print {$self->{heldlocks}{$v}} "error=$error\n";
		delete $self->{heldlocks}{$v};
	} else {
		my $fh = $self->{locker}->lock($v);
		print $fh "error=$error\n" if $fh;
	}
	$self->{logger}->log_error($v, @messages);
}

sub rebuild_info
{
	my ($self, $core) = @_;
	my @l = @{$self->{requeued}};
	$self->{requeued} = [];
	my %subdirs = map {($_->pkgpath_and_flavors, 1)} @l;
	for my $v (@l) {
		$v->ensure_fullpkgname;
	}

	$self->{heldlocks} = {};
	for my $v (@l) {
		$self->{heldlocks}{$v} = $self->{locker}->lock($v);
		if (defined $v->{info}{FDEPENDS}) {
			for my $f (values %{$v->{info}{FDEPENDS}}) {
				$f->forget;
			}
		}
		delete $v->{info};
	}
	$self->{state}->grabber->grab_subdirs($core, \%subdirs);
	for my $v (@l) {
		next unless $self->{heldlocks}{$v};
		$self->{locker}->unlock($v);
	}
	$self->{heldlocks} = {};
}

sub start_new_job
{
	my $self = shift;
	my $r = $self->{buildable}->start;
	$self->flush;
	return $r;
}

sub start_new_fetch
{
	my $self = shift;
	my $r = $self->{tofetch}->start;
	$self->flush;
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

package DPB::Stats;
use DPB::Clock;

sub new
{
	my ($class, $state) = @_;
	my $o = bless { 
	    fh => DPB::Util->make_hot($state->logger->open("stats")),
	    lost_time => 0,
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
	print {$self->{fh}} join(' ', $$, int($ts), 
	    int($ts-$self->{lost_time}), $line), "\n";
}

sub stopped_clock
{
	my ($self, $gap) = @_;
	$self->{lost_time} += $gap;
}

1;
