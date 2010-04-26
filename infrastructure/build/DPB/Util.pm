# ex:ts=8 sw=4:
# $OpenBSD: Util.pm,v 1.2 2010/04/26 08:32:53 espie Exp $
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

package DPB::Util;
sub make_hot
{
	my ($self, $fh) = @_;
	my $oldfh = select($fh);
	$| = 1;
	select($oldfh);
	return $fh;
}

sub safe_join
{
	my ($self, $sep, @l) = @_;
	$_ //= "undef" for @l;
	return join($sep, @l);
}

my @name =qw(Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec);
sub time2string
{
	my ($self, $time) = @_;
	my ($sec, $min, $hour, $mday, $mon) = (localtime $time)[0 .. 4];
	return sprintf("%d %s %02d:%02d:%02d", $mday, $name[$mon],
	    $hour, $min, $sec);
}
1
