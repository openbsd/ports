# ex:ts=8 sw=4:
# $OpenBSD: ErrorList.pm,v 1.8 2019/11/08 13:06:00 espie Exp $
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

# Abstract interface to problems that must be handled asynchronously
# by the engine

use DPB::Queue;
# the base class manages a list of issues, and has a basic "recheck"
# call (template method pattern) that will be specialized.
package DPB::ErrorList::Base;
our @ISA = qw(DPB::ListQueue);

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

# actual errors, if the user removes the lock, then rescan and requeue
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

# locks: stuff that can't be built because something else with an almost
# identical path is building.
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

# NFS overload handling. Doesn't appear that often these days
# at the end of a succesful build, the packages might not show up
# directly.   So keep them around
# TODO also shows up when a directory has been cvs updated and
# we have package revision bumps.  Can this be automated ? probably
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
		if ($sub->remove_stub($w)) {
			delete $h->{$k};
		} elsif ($sub->{builder}->end_check($w)) {
			$sub->mark_as_done($w);
			$w->log_as_built($engine);
			delete $h->{$k};
		} else {
			$okay = 0;
			# infamous: this is the case where the server is late
			# seeing the files
			$engine->log('H', $w);
		}
	}
	if ($okay) {
		delete $sub->{nfs}{$v};
	}
	return $okay;
}

1;
