# ex:ts=8 sw=4:
# $OpenBSD: Clock.pm,v 1.6 2013/10/06 13:33:27 espie Exp $
#
# Copyright (c) 2011-2013 Marc Espie <espie@openbsd.org>
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

# everything needed to handle clock

use Time::HiRes qw(time);

# explicit stop/restart clock where needed
package DPB::Clock;

# users will register/unregister, they must have a
# stopped_clock($gap) method to adjust.
my $items = {};

sub register
{
	my ($class, $o) = @_;
	$items->{$o} = $o;
}

sub unregister
{
	my ($class, $o) = @_;
	delete $items->{$o};
}

my $stopped_clock;

sub stop
{
	$stopped_clock = time();
}

sub restart
{
	my $gap = time() - $stopped_clock;

	for my $o (values %$items) {
		$o->stopped_clock($gap, $stopped_clock);
	}
}

# tasks with a timer
package DPB::Task::Clocked;
our @ISA = qw(DPB::Task::Fork);

sub fork
{
	my ($self, $core) = @_;

	$self->{started} = time();
	DPB::Clock->register($self);
	return $self->SUPER::fork($core);
}

sub finalize
{
	my ($self, $core) = @_;
	$self->{ended} = time();
	DPB::Clock->unregister($self);
	return $self->SUPER::finalize($core);
}

sub elapsed
{
	my $self = shift;
	return $self->{ended} - $self->{started};
}

sub stopped_clock
{
	my ($self, $gap) = @_;
	$self->{started} += $gap;
}

# how to know if we're stuck: we watch some file size.
# if there's some expected value, then we can display a %

package DPB::Watch;
sub new
{
	my ($class, $filename, $expected, $offset, $time) = @_;
	my $o = bless {
		name => $filename,
		expected => $expected,
		offset => $offset,
		time => $time,
		max => 0,
	}, $class;
	DPB::Clock->register($o);
	return $o;
}

sub check_change
{
	my ($self, $current) = @_;
	$self->{time} //= $current;
	my $sz = (stat $self->{name})[7];
	if (defined $sz && defined $self->{offset}) {
		$sz -= $self->{offset};
	}
	if ((defined $sz &&
	    (!defined $self->{sz} || $self->{sz} != $sz)) ||
		(!defined $sz && defined $self->{sz})) {
		$self->{sz} = $sz;
		$self->{time} = $current;
	}
	my $d = $current - $self->{time};
	if ($d > $self->{max}) {
		$self->{max} = $d;
	}
	return $d;
}

sub percent_message
{
	my $self = shift;
	my $progress = '';
	if (defined $self->{sz}) {
		if (defined $self->{expected} &&
		    $self->{sz} < 4 * $self->{expected}) {
			$progress = ' '.
			    int($self->{sz}*100/$self->{expected}). '%';
		} else {
			$progress = ' '.$self->{sz};
	    	}
	}
	return $progress;
}
sub frozen_message
{
	my ($self, $diff) = @_;
	my $unchanged = " frozen for ";
	if ($diff > 7200) {
		$unchanged .= int($diff/3600)." HOURS!";
	} elsif ($diff > 300) {
		$unchanged .= int($diff/60)."mn";
	} elsif ($diff > 10) {
		$unchanged .= int($diff)."s";
	} else {
		$unchanged = "";
	}
	return $unchanged;
}

sub reset_offset
{
	my $self = shift;
	my $sz = (stat $self->{name})[7];
	if (defined $sz) {
		$self->{offset} = $sz;
	}
}

sub stopped_clock
{
	my ($self, $gap) = @_;
	$self->{time} += $gap if defined $self->{time};
}

sub DESTROY
{
	DPB::Clock->unregister(shift);
}
1;
