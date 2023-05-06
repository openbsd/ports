# ex:ts=8 sw=4:
# $OpenBSD: Fetch.pm,v 1.5 2023/05/06 05:20:32 espie Exp $
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

package DPB::SubEngine::Fetch;
our @ISA = qw(DPB::SubEngine);
sub new_queue($class, $engine)
{
	require DPB::Heuristics::FetchQueue;
	return DPB::Heuristics::FetchQueue->new($engine->{heuristics});
}

sub is_done($self, $v)
{
	return 1 if $v->{done};
	if ($v->check($self->{engine}{logger})) {
		$self->log('B', $v);
		$v->{done} = 1;
		return 1;
	} else {
		return 0;
    	}
}

sub get_core($)
{
	return DPB::Core::Fetcher->get;
}

sub start_build($self, $v, $core, $lock)
{
	$self->log('J', $v);
	$self->{engine}{state}->fetch->fetch($v, $core,
	    sub { 
	    	$self->end($core, $v, $core->{status});
	    });
}

sub end_build($, $)
{
}

1;
