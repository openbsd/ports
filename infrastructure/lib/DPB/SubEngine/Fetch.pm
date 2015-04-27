# ex:ts=8 sw=4:
# $OpenBSD: Fetch.pm,v 1.4 2015/04/27 13:32:57 espie Exp $
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

package DPB::SubEngine::Fetch;
our @ISA = qw(DPB::SubEngine);
sub new_queue
{
	my ($class, $engine) = @_;
	require DPB::Heuristics::FetchQueue;
	return DPB::Heuristics::FetchQueue->new($engine->{heuristics});
}

sub is_done
{
	my ($self, $v) = @_;
	return 1 if $v->{done};
	if ($v->check($self->{engine}{logger})) {
		$self->log('B', $v);
		$v->{done} = 1;
		return 1;
	} else {
		return 0;
    	}
}

sub get_core
{
	return DPB::Core::Fetcher->get;
}

sub start_build
{
	my ($self, $v, $core, $lock) = @_;
	$self->log('J', $v);
	$self->{engine}{state}->fetch->fetch($v, $core,
	    sub { 
	    	$self->end($core, $v, $core->{status});
	    });
}

sub end_build
{
}

1;
