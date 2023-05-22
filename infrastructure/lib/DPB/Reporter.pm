# ex:ts=8 sw=4:
# $OpenBSD: Reporter.pm,v 1.38 2023/05/22 06:41:06 espie Exp $
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

use OpenBSD::Error;
use DPB::Util;
use DPB::Clock;

# The reporter class is used to agregate information from 
# various modules and display it.

# basically, 
# $reporter = DPB::Reporter->new($state)->add_producers(producers...);
# - depending on state, either use the basic class, or the tty specific class
# - producers will be called as 
# 	$producer->report_notty($state)
# or
#	$producer->report_tty($state)
# (if the method exist, a producer might NOT be concerned and weeded out)
# - if a producer has nothing to say, it can return undef
#
# This yields mostly $reporter->report (which will display stuff properly)
# and $reporter->myprint() to display persistent messages

package DPB::Reporter;

sub ttyclass($) 	
{
	require DPB::Reporter::Tty;
	return "DPB::Reporter::Tty";
}

sub reset_cursor($self)
{
	print $self->{visible} if defined $self->{visible};
}

sub set_cursor($self)
{
	print $self->{invisible} if defined $self->{invisible};
}

sub reset($self)
{
	$self->reset_cursor;
	print $self->{clear} if defined $self->{clear};
}

sub set_sigtstp($self)
{
	$SIG{TSTP} = sub {
		$self->reset_cursor;
		DPB::Clock->stop;
		$SIG{TSTP} = 'DEFAULT';
		local $> = 0;
		kill TSTP => $$;
	};
}

sub set_sig_handlers($self)
{
	$self->set_sigtstp;
}

sub handle_continue($self)
{
	$self->set_sigtstp;
	$self->{continued} = 1;
	DPB::Clock->restart;
}

sub refresh($)
{
}

sub handle_window($)
{
}

sub filter_add($self, $l, $r, $method)
{
	for my $prod (@$r) {
		push @$l, $prod if $prod->can($method);
	}
}

sub new($class, $state)
{
	my $dotty;
	if ($state->opt('x')) {
		$dotty = 0;
	} elsif ($state->opt('m')) {
		$dotty = 1;
	} else {
		$dotty = -t STDOUT;
	}
		
	if ($dotty) {
		$class = $class->ttyclass;
	}
	return $class->create($state);
}

sub create($class, $state)
{
	my $self = bless {msg => '',
	    producers => [],
	    timeout => $state->{display_timeout} // 10,
	    state => $state,
	    continued => 0}, $class;
	return $self;
}

sub add_producers($self, @p)
{
	$self->filter_add($self->{producers}, \@p, $self->filter);
	return $self;
}

sub filter($)
{
	'report_notty';
}
sub timeout($self)
{
	return $self->{timeout};
}

sub report($self, $ = 0)
{
	for my $prod (@{$self->{producers}}) {
		my $r = $prod->report_notty($self->{state});
		if (defined $r) {
			print $r;
		}
	}
}

sub myprint($self, @msg)
{
	print @msg;
}

1;
