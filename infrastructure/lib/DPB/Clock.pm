# ex:ts=8 sw=4:
# $OpenBSD: Clock.pm,v 1.21 2023/07/07 11:34:16 espie Exp $
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
use v5.36;

# everything needed to handle clock

use Time::HiRes;

# explicit stop/restart clock where needed
package DPB::Clock;

# users will register/unregister, they must have a
# stopped_clock($gap, $stopped_clock) method to adjust.
my $items = {};

sub register($class, $o)
{
	$items->{$o} = $o;
}

sub unregister($class, $o)
{
	delete $items->{$o};
}

my $stopped_clock;

sub stop($)
{
	$stopped_clock = Time::HiRes::time();
}

sub restart($)
{
	my $gap = Time::HiRes::time() - $stopped_clock;

	for my $o (values %$items) {
		$o->stopped_clock($gap, $stopped_clock);
	}
}

# tasks with a timer
package DPB::Task::Clocked;
our @ISA = qw(DPB::Task::Fork);

sub fork($self, $core)
{
	$self->{started} = Time::HiRes::time();
	DPB::Clock->register($self);
	return $self->SUPER::fork($core);
}

sub finalize($self, $core)
{
	$self->{ended} = Time::HiRes::time();
	DPB::Clock->unregister($self);
	return $self->SUPER::finalize($core);
}

sub elapsed($self)
{
	return $self->{ended} - $self->{started};
}

sub stopped_clock($self, $gap)
{
	$self->{started} += $gap;
}

# how to know if we're stuck: we watch some file size.
# if there's some expected value, then we can display a %

package DPB::Watch;
sub new($class, $file, $expected, $offset, $time)
{
	my $o = bless {
		file => $file,
		expected => $expected,
		offset => $offset,
		checked => 0,
		time => $time,
		max => 0,
	}, $class;
	DPB::Clock->register($o);
	return $o;
}

sub check_change($self, $current)
{
	$self->{time} //= $current;
	my $sz = ($self->{file}->stat)[7];
	if (defined $sz && defined $self->{offset}) {
		$sz -= $self->{offset};
	}
	if ((defined $sz &&
	    (!defined $self->{sz} || $self->{sz} != $sz)) ||
		(!defined $sz && defined $self->{sz})) {
		$self->{sz} = $sz;
		$self->{checked} = 0;
		$self->{time} = $current;
	}
	my $d = $current - $self->{time};
	if ($d > $self->{max}) {
		$self->{max} = $d;
	}
	return $d;
}

sub adjust_by($self, $l)
{
	if (defined $self->{sz}) {
		$self->{sz} += $l;
	}
}

sub percent_message($self)
{
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


sub frozen_message($self, $diff)
{
	my $unchanged = " frozen for ";
	if ($diff > 7200) {
		$unchanged .= int($diff/3600)." HOURS!";
	} elsif ($diff > 300) {
		$unchanged .= int($diff/60)."mn";
	} elsif ($diff > 45) {
		$unchanged .= int($diff)."s";
	} else {
		$unchanged = "";
	}
	return $unchanged;
}

sub reset_offset($self)
{
	my $sz = ($self->{file}->stat)[7];
	if (defined $sz) {
		$self->{offset} = $sz;
	}
}

sub set_offset($self, $pos)
{
	$self->{offset} = $pos;
}

sub stopped_clock($self, $gap, $)
{
	$self->{time} += $gap if defined $self->{time};
}

sub peek($self, $length)
{
	if (my $fh = $self->{file}->open('<')) {
		seek $fh, -$length, 2;
		local $/;
		return <$fh>;
	} else {
		return "";
	}
}

sub DESTROY($self)
{
	DPB::Clock->unregister($self);
}
1;
