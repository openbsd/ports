# ex:ts=8 sw=4:
# $OpenBSD: Util.pm,v 1.10 2023/07/04 13:36:32 espie Exp $
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

use v5.36;

package DPB::Util;
sub make_hot($class, $fh)
{
	my $oldfh = select($fh);
	$| = 1;
	select($oldfh);
	return $fh;
}

sub safe_join($class, $sep, @l)
{
	$_ //= "undef" for @l;
	return join($sep, @l);
}

my @name =qw(Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec);
sub time2string($class, $time)
{
	state $current = 0;
	state $string;
	if ($current != $time) {
		my ($sec, $min, $hour, $mday, $mon) = (localtime $time)[0 .. 4];
		$string = sprintf("%d %s %02d:%02d:%02d", $mday, $name[$mon],
		    $hour, $min, $sec);
		$current = $time;
	}
	return $string;
}

sub die_bang($class, $msg)
{
	delete $SIG{__DIE__};
	CORE::die("$msg: $!");
}

sub ts2string($class, $ts)
{
	return sprintf("%.2f", $ts);
}

sub current_ts($class)
{
	return $class->ts2string(Time::HiRes::time());
}

sub die($class, $msg, @extra)
{
	if (@extra > 0) {
		require Data::Dumper;
		say STDERR Data::Dumper::Dumper(@extra);
	}
	$DB::single = 1;
	CORE::die("$msg\n");
}

1;
