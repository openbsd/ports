# ex:ts=8 sw=4:
# $openbsd: reporter.pm,v 1.20 2013/09/30 19:08:35 espie exp $
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

use OpenBSD::Error;
use DPB::Util;
use DPB::Clock;
use DPB::MiniCurses;

package DPB::Reporter;
my $singleton;

sub ttyclass() 	{ "DPB::Reporter::Tty" }

sub term_send
{
}

sub reset_cursor
{
	my $self = shift;
	print $self->{visible} if defined $self->{visible};
}

sub set_cursor
{
	my $self = shift;
	print $self->{invisible} if defined $self->{invisible};
}

sub reset
{
	my $self = shift;
	$self->reset_cursor;
	print $self->{clear} if defined $self->{clear};
}

sub set_sigtstp
{
	my $self =shift;
	$SIG{TSTP} = sub {
		$self->reset_cursor;
		DPB::Clock->stop;
		$SIG{TSTP} = 'DEFAULT';
		kill TSTP => $$;
	};
}

sub set_sig_handlers
{
	my $self = shift;
	$self->set_sigtstp;
	$SIG{'CONT'} = sub {
		$self->set_sigtstp;
		$self->{continued} = 1;
		DPB::Clock->restart;
		$self->handle_window;
	};
}

sub refresh
{
}

sub handle_window
{
}

sub filter_can
{
	my ($self, $r, $method) = @_;
	my @kept = ();
	for my $prod (@$r) {
		push @kept, $prod if $prod->can($method);
	}
	return \@kept;
}

sub new
{
	my $class = shift;
	my $state = shift;
	my $dotty;
	if ($state->opt('x')) {
		$dotty = 0;
	} elsif ($state->opt('m')) {
		$dotty = 1;
	} else {
		$dotty = -t STDOUT;
	}
		
	if ($dotty) {
		$class->ttyclass->new($state, @_);
	} else {
		$class->make_singleton($state, @_);
	}
}

sub make_singleton
{
	my $class = shift;
	my $state = shift;
	return if defined $singleton;
	$singleton = bless {msg => '',
	    producers => $class->filter_can(\@_, $class->filter),
	    timeout => $state->{display_timeout} // 10,
	    continued => 0}, $class;
    	if (defined $state->{record}) {
		open $singleton->{record}, '>>', $state->{record};
	}
	return $singleton;
}

sub filter
{
	'important';
}
sub timeout
{
	my $self = shift;
	return $self->{timeout};
}

sub report
{
	my $self = shift;
	for my $prod (@{$self->{producers}}) {
		my $important = $prod->important;
		if ($important) {
			print $important;
		}
	}
}

sub myprint
{
	my $self = shift;
	if (!ref $self) {
		$singleton->myprint(@_);
	} else {
		print @_;
	}
}

package DPB::Reporter::Tty;
our @ISA = qw(DPB::MiniCurses DPB::Reporter DPB::Limiter);

my $extra = '';
sub handle_window
{
	my $self = shift;
	$self->set_cursor;
	$self->find_window_size;
	$self->refresh;
}

sub set_sig_handlers
{
	my $self = shift;
	$self->SUPER::set_sig_handlers;
	$SIG{'WINCH'} = sub {
		$self->handle_window;
	};
	OpenBSD::Handler->register(sub {
		$self->reset_cursor; });
}

sub filter
{
	'report';
}

sub new
{
	my $class = shift;
	my $state = shift;
	$class->make_singleton($state, @_);
	$singleton->create_terminal;
	$singleton->set_sig_handlers;
	if ($state->{subst}->value("NO_CURSOR")) {
		$singleton->{invisible} = 
		    $singleton->{terminal}->Tputs("vi", 1);
		$singleton->{visible} = 
		    $singleton->{terminal}->Tputs("ve", 1);
	}
	# no cursor, to avoid flickering
	$singleton->set_cursor;
	return $singleton;
}

sub report
{
	my ($self, $force) = @_;
	if ($self->{force}) {
		$force = 1;
		undef $self->{force};
	}
	$self->limit($force, 150, "REP", 1,
	    sub {
		my $msg = "";
		for my $prod (@{$self->{producers}}) {
			$msg.= $prod->report;
		}
		$msg .= $extra;
		if ($msg ne $self->{msg} || $self->{continued}) {
			if (defined $self->{record}) {
				print {$self->{record}} "@@@", time(), "\n";
				print {$self->{record}} $msg;
			}
			$self->{continued} = 0;
			my $method = $self->{write};
			$self->$method($msg);
			$self->{msg} = $msg;
		}
	    });
}

sub myprint
{
	my $self = shift;
	for my $string (@_) {
		$string =~ s/^\t/       /gm; # XXX dirty hack for warn
		$extra .= $string;
	}
}

1;
