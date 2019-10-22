# ex:ts=8 sw=4:
# $OpenBSD: Limiter.pm,v 1.8 2019/10/22 16:02:08 espie Exp $
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

# rate-limit some computation run.
# this is a mixin-class.

package DPB::Limiter;
use Time::HiRes;
use DPB::Util;
use DPB::Clock;

my $temp;
sub setup
{
	my ($self, $logger) = @_;	

	$temp //= DPB::Util->make_hot($logger->append("performance"));
}

sub limit
{
	my ($self, $forced, $factor, $tag, $cond, $code) = @_;
	$self->{ts} = Time::HiRes::time();
	$self->{start} = 0;	# so we can register ourselves
	$self->{next_check} //= $self->{ts};
	DPB::Clock->register($self);
	print $temp "$$\@$self->{ts}: $tag";
	if (!($forced && $self->{unchecked}) &&
	    $self->{ts} < $self->{next_check} && $cond) {
	    	print $temp "-\n";
		$self->{unchecked} = 1;
		return 0;
	}

	delete $self->{unchecked};
	# actual computation
	$self->{start} = Time::HiRes::time();
	&$code;
	$self->{end} = Time::HiRes::time();
	# adjust values for next time
	my $check_interval = $factor * ($self->{end} - $self->{start});
	my $offset = $self->{ts} - $self->{next_check};
	$offset /= 2;
	$self->{next_check} = $self->{ts} + $check_interval;
	if ($offset > 0) {
	    $self->{next_check} -= $offset;
	}
	if ($self->{next_check} < $self->{end}) {
		$self->{next_check} = $self->{end};
	}
	print $temp 
	    sprintf("%s %.2f %.2f\n", $forced ? '!' : '+', 
	    $self->{next_check}, $check_interval);
	return $check_interval;
}

sub stopped_clock
{
	my ($self, $gap, $stopped) = @_;
	$self->{start} += $gap;
	if ($self->{ts} >= $stopped) {
		$self->{ts} += $gap;
	}
	if ($self->{next_check} >= $stopped) {
		$self->{next_check} += $gap;
	}
}

1
