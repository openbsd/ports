# ex:ts=8 sw=4:
# $OpenBSD: Roach.pm,v 1.3 2023/05/06 05:20:32 espie Exp $
#
# Copyright (c) 2019 Marc Espie <espie@openbsd.org>
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

use DPB::SubEngine::Fetch;
use DPB::Heuristics;

package DPB::SubEngine::Roach;
our @ISA = qw(DPB::SubEngine::Fetch); # so we get the same cores for free


sub new_queue($class, $engine)
{
	return DPB::Heuristics::DumbQueue->new;
}

sub add($self, $r)
{
	$self->{queue}->add($r);
}

package DPB::Heuristics::DumbQueue;
our @ISA = qw(DPB::Heuristics::Queue);

sub sorted_values($self)
{
	return [values %{$self->{o}}];
}

1;
