# ex:ts=8 sw=4:
# $OpenBSD: Queue.pm,v 1.1 2019/10/15 14:41:22 espie Exp $
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

use strict;
use warnings;

# uniform interface to various queues
package DPB::Queue;

package DPB::HashQueue;
our @ISA = qw(DPB::Queue);
sub new
{
	my $class = shift;
	return bless {}, $class;
}

sub count
{
	my $self = shift;
	return scalar keys %$self;
}

sub contains
{
	my ($self, $v) = @_;
	return $self->{$v};
}

package DPB::ListQueue;
our @ISA = qw(DPB::Queue);
sub new
{
	my $class = shift;
	return bless [], $class;
}

sub count
{
	my $self = shift;
	return scalar @$self;
}

sub contains
{
	my ($self, $v) = @_;
	return grep {$_ == $v} @$self;
}

1;
