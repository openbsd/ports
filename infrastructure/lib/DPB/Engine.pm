# ex:ts=8 sw=4:
# $OpenBSD: Engine.pm,v 1.17 2011/05/22 08:21:39 espie Exp $
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

package DPB::Engine;

use DPB::Heuristics;
use DPB::Util;

sub new
{
	my ($class, $state) = @_;
	my $o = bless {built => {}, 
	    tobuild => {},
	    state => $state,
	    buildable => $state->heuristics->new_queue,
	    later => {}, building => {},
	    installable => {}, builder => $state->builder,
	    heuristics => $state->heuristics,
	    locker => $state->locker,
	    logger => $state->logger,
	    errors => [],
	    locks => [],
	    requeued => [],
	    ignored => []}, $class;
	if ($state->opt('f')) {
		# XXX no speed factor there
		$o->{tofetch} = DPB::Heuristics::Queue->new($state->heuristics);
		$o->{fetching} = {};
	}
	$o->{log} = DPB::Util->make_hot($state->logger->open("engine"));
	$o->{stats} = DPB::Util->make_hot($state->logger->open("stats"));
	return $o;
}

sub recheck_errors
{
	my $self = shift;
	if (@{$self->{errors}} != 0 || @{$self->{locks}} != 0) {
		$self->{locker}->recheck_errors($self);
		return 1;
	}
	return 0;
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

sub errors_string
{
	my ($self, $name) = @_;
	my @l = ();
	for my $e (@{$self->{$name}}) {
		my $s = $e->logname;
		if (defined $e->{host} && !$e->{host}->is_localhost) {
			$s .= "(".$e->{host}->name.")";
		}
		push(@l, $s);
	}
	return join(' ', @l);
}

sub fetchcount
{
	my $self= shift;
	return () unless defined $self->{tofetch};
	return ("F=".$self->{tofetch}->count);
}

sub report
{
	my $self = shift;
	return join(" ",
	    "I=".$self->count("installable"),
	    "B=".$self->count("built"),
	    "Q=".$self->{buildable}->count,
	    "T=".$self->count("tobuild"),
	    $self->fetchcount, 
	    "!=".$self->count("ignored"))."\n".
	    "L=".$self->errors_string('locks')."\n".
	    "E=".$self->errors_string('errors')."\n";
}

sub stats
{
	my $self = shift;
	my $fh = $self->{stats};
	$self->{statline} //= "";
	my $line = join(" ",
	    "I=".$self->count("installable"),
	    "B=".$self->count("built"),
	    "Q=".$self->{buildable}->count,
	    "T=".$self->count("tobuild"),
	    $self->fetchcount);
	if ($line ne $self->{statline}) {
		$self->{statline} = $line;
		print $fh $self->{ts}, " ", $line, "\n";
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
	my ($self, $v, $kind) = @_;
	return 0 if !exists $v->{info}{$kind};
	my $not_yet = 0;
	for my $d (values %{$v->{info}{$kind}}) {
		$self->{heuristics}->mark_depend($d, $v);
		if ($self->{installable}{$d} ||
		    (defined $d->{info} &&
		    $d->fullpkgname eq $v->fullpkgname)) {
			delete $v->{info}{$kind}{$d};
		} else {
			$not_yet++;
		}
	}
	return $not_yet if $not_yet;
	delete $v->{info}{$kind};
	return 0;
}

sub adjust_extra
{
	my ($self, $v, $kind) = @_;
	return 0 if !exists $v->{info}{$kind};
	my $not_yet = 0;
	for my $d (values %{$v->{info}{$kind}}) {
		$self->{heuristics}->mark_depend($d, $v);
		if ((defined $d->{info} && !$self->{tobuild}{$d}) ||
		    (defined $d->fullpkgname &&
		    $d->fullpkgname eq $v->fullpkgname)) {
			delete $v->{info}{$kind}{$d};
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
	my $has = 0;
	return $has unless defined $v->{info}{distfiles};
	for my $f (values %{$v->{info}{distfiles}}) {
		if ($self->{tofetch}->contains($f) || 
		    $self->{fetching}{$f}) {
			$has++;
			next;
		}
		if ($self->is_present($f)) {
			delete $v->{info}{distfiles}{$f};
			next;
		}
		$has++;
		$self->{tofetch}->add($f);
		$self->log('F', $f);
	}
	return $has;
}

my $output = {};

sub log_fetch
{
	my ($self, $v) = @_;
	my $k = $v->{info}{FETCH_MANUALLY}->string;
	my $fh = $self->{logger}->open('fetch/manually');
	print $fh $v->fullpkgpath, "\n", "-" x length($v->fullpkgpath), "\n";
	if (defined $output->{$k}) {
		print $fh "same as ", $output->{$k}->fullpkgpath, "\n\n";
	} else {
		print $fh "$k\n\n";
		$output->{$k} = $v;
	}
}

sub check_buildable
{
	my $self = shift;
	$self->{ts} = time();
	my $changes;
	do {
		$changes = 0;
		for my $v (values %{$self->{tobuild}}) {
			if ($self->was_built($v)) {
				$changes++;
			} else {
				if (defined $v->{info}{FETCH_MANUALLY}) {
					$self->log_fetch($v);
					delete $v->{info}{FETCH_MANUALLY};
					$changes++;
				}
				if (defined $v->{info}{IGNORE}) {
					delete $self->{tobuild}{$v};
					push(@{$self->{ignored}}, $v);
					$changes++;
				}
			}
		}
		for my $v (values %{$self->{built}}) {
			if ($self->adjust($v, 'RDEPENDS') == 0) {
				delete $self->{built}{$v};
				$self->{installable}{$v} = $v;
				$self->log_no_ts('I', $v);
				$changes++;
			}
		}

		for my $v (values %{$self->{tobuild}}) {
			if ($self->was_built($v)) {
				$changes++;
				next;
			}
			my $has = $self->adjust($v, 'DEPENDS');
			$has += $self->adjust_extra($v, 'EXTRA');

			$v->{has} = $has;
			$has += $self->adjust_distfiles($v);
			if ($has == 0) {
				$self->{buildable}->add($v);
				$self->log_no_ts('Q', $v);
				delete $self->{tobuild}{$v};
				$changes++;
			}
		}
	} while ($changes);
	$self->stats;
}

sub was_built
{
	my ($self, $v) = @_;
	if ($self->{builder}->check($v)) {
#		$self->{heuristics}->done($v);
		$self->{built}{$v}= $v;
		$self->log('B', $v);
		delete $self->{tobuild}{$v};
		return 1;
	} else {
		return 0;
	}
}

sub is_present
{
	my ($self, $v) = @_;
	if ($v->check($self->{logger})) {
		$self->log('b', $v);
		return 1;
	} else {
		return 0;
    	}
}

sub new_path
{
	my ($self, $v) = @_;
	if (!$self->was_built($v)) {
#		$self->{heuristics}->todo($v);
		$self->{tobuild}{$v} = $v;
		$self->log('T', $v);
	}
}

sub end_job
{
	my ($self, $core, $v) = @_;
	my $e = $core->mark_ready;
	if (!$self->was_built($v)) {
		$core->failure;
		if (!$e || $core->{status} == 65280) {
			$self->{buildable}->add($v);
			$self->{locker}->unlock($v);
			$self->log('N', $v);
		} else {
			unshift(@{$self->{errors}}, $v);
			$v->{host} = $core->host;
			$self->{locker}->simple_unlock($v);
			$self->log('E', $v);
		}
	} else {
		$self->{locker}->unlock($v);
		$self->{heuristics}->finish_special($v);
		$core->success;
	}
	$self->job_done($v);
}

sub end_fetch
{
	my ($self, $core, $v) = @_;
	my $e = $core->mark_ready;
	if ($self->is_present($v)) {
		$self->{locker}->unlock($v);
		delete $self->{fetching}{$v};
		$core->success;
	} else {
		unshift(@{$self->{errors}}, $v);
		$v->{host} = $core->host;
		$self->log('e', $v);
		$core->failure;
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
	my ($self, $v) = @_;
	push(@{$self->{errors}}, $v);
	$self->{locker}->lock($v);
}

sub job_done
{
	my ($self, $v) = @_;
	for my $candidate (values %{$self->{later}}) {
		if ($candidate->{pkgpath} eq $v->{pkgpath}) {
			delete $self->{later}{$candidate};
			$self->log('V', $candidate);
			$self->{buildable}->add($candidate);
		}
	}
	delete $self->{building}{$v->{pkgpath}};
	$self->{locker}->recheck_errors($self);
}

sub new_job
{
	my ($self, $core, $v, $lock) = @_;
	my $special = $self->{heuristics}->special_parameters($core->host, $v);
	$self->log('J', $v, " ".$core->hostname." ".$special);
	$self->{builder}->build($v, $core, $special,
	    $lock, sub {$self->end_job($core, $v)});
}

sub rebuild_info
{
	my ($self, $core) = @_;
	my @l = @{$self->{requeued}};
	$self->{requeued} = [];
	my @subdirs = map {$_->fullpkgpath} @l;
	$self->{state}->grabber->grab_subdirs($core, \@subdirs);
	$core->mark_ready;
}

sub start_new_job
{
	my $self = shift;
	my $core = $self->{builder}->get;
	if (@{$self->{requeued}} > 0) {
		$self->rebuild_info($core);
		return;
	}
	my $o = $self->{buildable}->sorted($core);
	while (my $v = $o->next) {
		$self->{buildable}->remove($v);
		if ($self->was_built($v)) {
			$self->{logger}->make_log_link($v);
			$self->job_done($v);
			next;
		}
		if ($self->{building}{$v->{pkgpath}}) {
			$self->{later}{$v} = $v;
			$self->log('^', $v);
		} elsif (my $lock = $self->{locker}->lock($v)) {
			$self->{building}{$v->{pkgpath}} = 1;
			$self->new_job($core, $v, $lock);
			return;
		} else {
			push(@{$self->{locks}}, $v);
			$self->log('L', $v);
		}
	}
	$core->mark_ready;
}

sub start_new_fetch
{
	my $self = shift;
	my $core = DPB::Core::Fetcher->get;
	my $o = $self->{tofetch}->sorted($core);
	my @s = ((grep {$_->{path}->{has} != 0} @$o), 
		(grep {$_->{path}->{has} == 0} @$o));
	while (my $v = pop @s) {
		$self->{tofetch}->remove($v);
		if (my $lock = $self->{locker}->lock($v)) {
			$self->{fetching}{$v} = $v;
			$self->log('j', $v);
			DPB::Fetch->fetch($self->{logger}, $v, $core, 
			    sub { $self->end_fetch($core, $v)});
			return;
	    	} else {
			push(@{$self->{locks}}, $v);
			$self->log('l', $v);
		}
	}
	$core->mark_ready;
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
	for my $v (sort {$a->fullpkgpath cmp $b->fullpkgpath}
	    values %{$self->{$k}}) {
		print $fh $q;
		$v->quick_dump($fh);
	}
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
