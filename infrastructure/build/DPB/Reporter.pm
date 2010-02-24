# ex:ts=8 sw=4:
# $OpenBSD: Reporter.pm,v 1.1 2010/02/24 11:33:31 espie Exp $
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

use Term::Cap;
use OpenBSD::Error;
use DPB::Util;
use Time::HiRes qw(time);

package DPB::Reporter;

my $width;
my $wsz_format = 'SSSS';
our %sizeof;

sub find_window_size
{
	my $self = shift;
	# try to get exact window width
	my $r;
	$r = pack($wsz_format, 0, 0, 0, 0);
	$sizeof{'struct winsize'} = 8;
	require 'sys/ttycom.ph';
	$width = 80;
	if (ioctl(STDOUT, &TIOCGWINSZ, $r)) {
		my ($rows, $cols, $xpix, $ypix) = 
		    unpack($wsz_format, $r);
		$self->{width} = $cols;
		$self->{height} = $rows;
	}
}

sub term_send
{
	my ($self, $seq) = @_;
	if (defined $self->{terminal}) {
		$self->{terminal}->Tputs($seq, 1, \*STDOUT);
	}
}

sub reset_cursor
{
	my $self = shift;
	$self->term_send("ve");
}

sub set_cursor
{
	my $self = shift;
	$self->term_send("vi");
}

sub reset
{
	my $self = shift;
	$self->reset_cursor;
	$self->term_send("cl");
}

my $stopped_clock;

sub set_sigtstp
{
	my $self =shift;
	$SIG{TSTP} = sub {
		$self->reset_cursor;
		$stopped_clock = time();
		$SIG{TSTP} = 'DEFAULT';
		kill TSTP => $$;
	};
}

sub set_sig_handlers
{
	my $self = shift;
	$SIG{'WINCH'} = sub {
		$self->find_window_size;
		$self->{write} = 'go_write_home';
	};
	$self->set_sigtstp;
	$SIG{'CONT'} = sub {
		$self->set_sigtstp;
		$self->{continued} = 1;
		$self->set_cursor;
		$self->find_window_size;
		$self->{write} = 'go_write_home';
		DPB::Job::Port->stopped_clock(time() - $stopped_clock);
	};
	OpenBSD::Handler->register(sub {
		$self->reset_cursor; });
	$SIG{'__DIE__'} = sub {
		$self->reset_cursor; 
	};
}

my $extra = '';
my $interrupted;
sub new
{
	my $class = shift;
	my $notty = shift;
	my $isatty = !$notty && -t STDOUT;
	my $self = bless {msg => '', tty => $isatty,
	    producers => \@_, continued => 0}, $class;
	if ($isatty) {
		my $oldfh = select(STDOUT);
		$| = 1;
		# XXX go back to totally non-buffered raw shit
		binmode(STDOUT, ':pop');
		select($oldfh);
		use POSIX;
		my $termios = POSIX::Termios->new;
		$termios->getattr(0);
		$self->{terminal} = Term::Cap->Tgetent({ OSPEED => 
		    $termios->getospeed });
		$self->find_window_size;
		$self->set_sig_handlers;
		if ($self->{terminal}->Tputs("ho", 1)) {
			$self->{write} = "go_write_home";
		} else {
			$self->{write} = "write_clear";
		}
		# no cursor, to avoid flickering
		$self->set_cursor;
	} else {
		$self->{write} = "no_write";
	}

	$SIG{INFO} = sub { 
	#	use Carp;
	#	Carp::cluck();
	#	print $self->{msg}; 
	#	if ($self->{write} eq 'write_home') {
	#		$self->{write} = 'go_write_home';
	#	}
		$interrupted++;
	};
	return $self;
}

sub write_clear
{
	my ($self, $msg) = @_;
	$self->term_send("cl");
	$self->{oldlines} = [$self->cut_lines($msg)];
	for my $line (@{$self->{oldlines}}) {
		print $line, "\n";
	}
}

sub cut_lines
{
	my ($self, $msg) = @_;
	my @lines = ();
	for my $line (split("\n", $msg)) {
		while (length $line >= $self->{width}) {
			push(@lines, substr($line, 0, $self->{width}-1));
			$line = substr($line, $self->{width}-1);
		}
		push(@lines, $line);
	}
	return @lines;
}

sub print_clamped
{
	my ($self, $line) = @_;
	print substr($line, 0, $self->{width}-1)."\n";
}

sub write_home
{
	my ($self, $msg) = @_;
	my @new = $self->cut_lines($msg);
	$self->term_send("ho");
	while (my $newline = shift @new) {
		my $oldline = shift @{$self->{oldlines}};
		# line didn't change: try to go down
		if (defined $oldline && $oldline eq $newline) {
			if ($self->term_send("do")) {
				next;
			}
		}
		# adjust newline to correct length
		if (defined $oldline && (length $oldline) > (length $newline)) {
			$newline .= " "x ((length $oldline) - (length $newline));
		}
		$self->print_clamped($newline);
	}
	# extra lines must disappear
	while (my $line = shift(@{$self->{oldlines}})) {
		$line = " "x (length $line);
		$self->print_clamped($line);
	}
	$self->{oldlines} = [$self->cut_lines($msg)];
}

sub go_write_home
{
	# first report has to clear the screen
	my ($self, $msg) = @_;
	$self->write_clear($msg);
	$self->{write} = 'write_home';
}

sub no_write
{
}

sub report
{
	my $self = shift;
	my $msg = DPB::Util->time2string(time)."\n";
	for my $prod (@{$self->{producers}}) {
		$msg.= $prod->report;
	}
	if ($interrupted) {
		$interrupted = 0;
		$self->reset_cursor;
		$DB::single = 1;
	}
	if (!$self->{tty}) {
		for my $prod (@{$self->{producers}}) {
			my $important = $prod->important;
			if ($important) {
				print $important;
			}
		}
	}
	$msg .= $extra;
	if ($msg ne $self->{msg} || $self->{continued}) {
		$self->{continued} = 0;
		my $method = $self->{write};
		$self->$method($msg);
		$self->{msg} = $msg;
	}
}

sub myprint
{
	my $self = shift;
	for my $string (@_) {
		$extra .= $string;
	}
}

1;
