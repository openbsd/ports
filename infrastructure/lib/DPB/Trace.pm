# ex:ts=8 sw=4:
# $OpenBSD: Trace.pm,v 1.7 2023/05/06 05:20:31 espie Exp $
#
# Copyright (c) 2015-2019 Marc Espie <espie@openbsd.org>
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

use OpenBSD::Trace;
use v5.36;

package DPB::Trace;
our @ISA = qw(OpenBSD::Trace);

sub init($self, $cleanup)
{
	$self->SUPER::init;
	$self->{cleanup} = $cleanup;
	$SIG{INFO} = sub {
		print "Trace:\n", $self->stack(0);
		sleep 1;
	}
}

sub do_warn($self, $msg)
{
	if (defined $self->{logfile}) {
		print {$self->{logfile}} $msg, '-'x70, "\n";
	}
	if (defined $self->{reporter}) {
			$self->{reporter}->myprint($msg);
	} else {
		$self->SUPER::do_warn($msg);
	};
}

sub do_die($self, $msg)
{
	if (defined $self->{reporter}) {
		$self->{reporter}->reset_cursor;
	}
	if (defined $self->{logfile}) {
		print {$self->{logfile}} $msg, '-'x70, "\n";
	}
	&{$self->{cleanup}}();
	$self->SUPER::do_die($msg);
}

sub set_reporter($self, $reporter)
{
	$self->{reporter} = $reporter;
	return $self;
}

sub set_logger($self, $logfile)
{
	$self->{logfile} = $logfile;
	return $self;
}

1;
