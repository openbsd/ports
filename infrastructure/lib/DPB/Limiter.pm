# ex:ts=8 sw=4:
# $OpenBSD: Limiter.pm,v 1.2 2013/01/04 12:34:29 espie Exp $
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

# rate-limit some computation run.
# this is a mixin-class.

package DPB::Limiter;
use Time::HiRes;
use DPB::Util;

my $temp;
sub setup
{
	my ($self, $logger) = @_;	

	$temp //= DPB::Util->make_hot($logger->open("performance"));
}

sub limit
{
	my ($self, $forced, $factor, $tag, $cond, $code) = @_;
	$self->{ts} = time();
	$self->{next_check} //= $self->{ts};
	print $temp "$$\@$self->{ts}: $tag ";
	if (!($forced && $self->{unchecked}) &&
	    $self->{ts} < $self->{next_check} && $cond) {
	    	print $temp "-\n";
		$self->{unchecked} = 1;
		return 0;
	}

	delete $self->{unchecked};
	# actual computation
	my $start = Time::HiRes::time();
	&$code;
	my $end = Time::HiRes::time();
	# adjust values for next time
	my $check_interval = $factor * ($end - $start);
	my $offset = $self->{ts} - $self->{next_check};
	$offset /= 2;
	print $temp sprintf("%.2f ", $offset);

	$self->{next_check} = $self->{ts} + $check_interval;
	if ($offset > 0) {
	    $self->{next_check} -= $offset;
	}
	if ($self->{next_check} < $end) {
		$self->{next_check} = $end;
	}
	print $temp 
	    sprintf(" %.2f %.2f\n", $self->{next_check}, $check_interval);
	return 1;
}

1
