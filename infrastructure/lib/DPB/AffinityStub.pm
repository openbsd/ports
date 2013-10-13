# ex:ts=8 sw=4:
# $OpenBSD: AffinityStub.pm,v 1.1 2013/10/13 18:23:35 espie Exp $
#
# Copyright (c) 2012-2013 Marc Espie <espie@openbsd.org>
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

# single-host version of affinity, doesn't do much

package DPB::AffinityStub;

use File::Path;
use DPB::PkgPath;

sub new
{
	my ($class, $state, $dir) = @_;
	bless {}, $class;
}

sub start
{
}

sub unmark
{
}

sub finished
{
}

sub retrieve_existing_markers
{
}

sub simplifies_to
{
}

sub sorted
{
	my ($self, $queue, $core) = @_;
	return $queue->sorted($core);
}

sub has_in_queue
{
}

1;
