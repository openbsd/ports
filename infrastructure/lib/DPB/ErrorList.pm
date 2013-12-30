# ex:ts=8 sw=4:
# $OpenBSD: ErrorList.pm,v 1.3 2013/12/30 17:32:26 espie Exp $
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
		if ($sub->remove_stub($w)) {
			delete $h->{$k};
		} elsif ($sub->{builder}->end_check($w)) {
			$sub->mark_as_done($w);
			delete $h->{$k};
		} else {
			$okay = 0;
			# infamous
			$engine->log('H', $w);
		}
	}
	if ($okay) {
		delete $sub->{nfs}{$v};
	}
	return $okay;
}

1;
