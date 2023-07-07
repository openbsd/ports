#! /usr/bin/perl
# ex:ts=8 sw=4:
# $OpenBSD: ISO8601.pm,v 1.2 2023/07/07 14:43:57 espie Exp $
#
# Copyright (c) 2023 Marc Espie <espie@openbsd.org>
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

package DPB::ISO8601;

# this parses a subset of ISO8601, so that the timestamp can be a string
sub parse($class, $s)
{
	my $o = bless {
		hour => 0,
		min => 0,
		sec => 0,
		islocal => 1 }, $class;

	if ($s =~ s/Z$//) {
		$o->{islocal} = 0;
	}
	if ($s =~ s/^(\d{4})\-(\d{2})\-(\d{2})(T|$)//) {
		($o->{year}, $o->{month}, $o->{day}) = ($1, $2, $3);
	} else {
		return undef;
	}
	if ($s eq '') {
		return $o;
	}
	if ($s =~ s/^(\d{2})(\:|$)//) {
		$o->{hour} = $1;
	} else {
		return undef;
	}
	if ($s eq '') {
		return $o;
	}
	if ($s =~ s/^(\d{2})(\:|$)//) {
		$o->{min} = $1;
	} else {
		return undef;
	}
	if ($s eq '') {
		return $o;
	} 
	if ($s =~ s/^(\d{2})(\:|$)//) {
		$o->{sec} = $1;
	} else {
		return undef;
	}
	if ($s eq '') {
		return $o;
	} else {
		return undef;
	}
}

sub _string2time($class, $s)
{
	my $o = $class->parse($s);
	if (defined $o) {
		require POSIX;
		local $ENV{TZ};
		if (!$o->{islocal}) {
			$ENV{TZ} = 'UTC';
		}
		my $t = POSIX::mktime($o->{sec}, $o->{min}, $o->{hour}, 
		    $o->{day}, $o->{month} - 1, $o->{year} - 1900);
		return $t;
	} else {
		return undef;
	}
}

sub string2time($class, $ts, $state)
{
	my $result = $class->_string2time($ts);
	if (!defined $result) {
		$state->fatal("String #1 does not parse as ISO8601 date (YYYY-MM-DDTHH:MM:SSZ)", $ts);
	}
	return $result;
}

sub time2string($class, $ts)
{
	my $time = int($ts);
	my ($sufx, $sec, $min, $hour, $day, $month, $year, @rest) = 
	    defined $ENV{TZ} ? ('', localtime($ts)) : ('Z', gmtime($ts));
	return sprintf("%04d-%02d-%02dT%02d:%02d:%02d%s",
	    $year+1900, $month+1, $day, $hour, $min, $sec, $sufx);
}

1;
