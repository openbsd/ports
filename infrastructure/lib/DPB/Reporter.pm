# ex:ts=8 sw=4:
# $OpenBSD: Reporter.pm,v 1.20 2013/09/30 19:08:35 espie Exp $
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
use DPB::Clock;

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
our @ISA = qw(DPB::Reporter DPB::Limiter);

my $extra = '';
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
	$self->{terminal}->Tputs($seq, 1, \*STDOUT);
}

sub refresh
{
	my $self = shift;
	$self->{write} = 'go_write_home';
	$self->{force} = 1;
}

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
	my $oldfh = select(STDOUT);
	$| = 1;
	# XXX go back to totally non-buffered raw shit
	binmode(STDOUT, ':pop');
	select($oldfh);
	use POSIX;
	my $termios = POSIX::Termios->new;
	$termios->getattr(0);
	$singleton->{terminal} = Term::Cap->Tgetent({ OSPEED =>
	    $termios->getospeed });
	$singleton->find_window_size;
	$singleton->set_sig_handlers;
	$singleton->{home} = $singleton->{terminal}->Tputs("ho", 1);
	$singleton->{clear} = $singleton->{terminal}->Tputs("cl", 1);
	$singleton->{down} = $singleton->{terminal}->Tputs("do", 1);
	$singleton->{glitch} = $singleton->{terminal}->Tputs("xn", 1);
	$singleton->{cleareol} = $singleton->{terminal}->Tputs("ce", 1);
	if ($state->{subst}->value("NO_CURSOR")) {
		$singleton->{invisible} = 
		    $singleton->{terminal}->Tputs("vi", 1);
		$singleton->{visible} = 
		    $singleton->{terminal}->Tputs("ve", 1);
	}
	if ($singleton->{home}) {
		$singleton->{write} = "go_write_home";
	} else {
		$singleton->{write} = "write_clear";
	}
	# no cursor, to avoid flickering
	$singleton->set_cursor;
	return $singleton;
}

sub write_clear
{
	my ($self, $msg) = @_;
	my $r = $self->{clear};
	$self->{oldlines} = [$self->cut_lines($msg)];
	my $n = 2;
	for my $line (@{$self->{oldlines}}) {
		last if $n++ > $self->{height};
		$r .= $self->clamped($line);
	}
	print $r;
}

sub cut_lines
{
	my ($self, $msg) = @_;
	my @lines = ();
	for my $line (split("\n", $msg)) {
		while (length $line > $self->{width}) {
			push(@lines, substr($line, 0, $self->{width}));
			$line = substr($line, $self->{width});
		}
		push(@lines, $line);
	}
	return @lines;
}

sub clamped
{
	my ($self, $line) = @_;
	if (!$self->{glitch} && length $line == $self->{width}) {
		return $line;
	} else {
		return $line."\n";
	}
}

sub clear_clamped
{
	my ($self, $line) = @_;
	if (!$self->{glitch} && length $line == $self->{width}) {
		return $line;
	} else {
		return $self->{cleareol}.$line."\n";
	}
}

sub do_line
{
	my ($self, $new, $old) = @_;
	# line didn't change: try to go down
	if (defined $old && $old eq $new) {
		if ($self->{down}) {
			return $self->{down};
		}
	}
	# adjust newline to correct length
	if (defined $old && (length $old) > (length $new)) {
		if ($self->{cleareol}) {
			return $self->clear_clamped($new);
		}
		$new .= " "x ((length $old) - (length $new));
	}
	return $self->clamped($new);
}

sub lines
{
	my ($self, @new) = @_;

	my $n = 2;
	my $r = '';

	while (@new > 0) {
		return $r if $n++ > $self->{height};
		$r .= $self->do_line(shift @new, shift @{$self->{oldlines}});
	}
	# extra lines must disappear
	while (@{$self->{oldlines}} > 0) {
		my $line = shift @{$self->{oldlines}};
		if ($self->{cleareol}) {
			$r .= $self->clear_clamped('');
		} else {
			$line = " "x (length $line);
			$r .= $self->clamped($line);
		}
		last if $n++ > $self->{height};
	}
	return $r;
}

sub write_home
{
	my ($self, $msg) = @_;
	my @new = $self->cut_lines($msg);
	print $self->{home}.$self->lines(@new);
	$self->{oldlines} = \@new;
}

sub go_write_home
{
	# first report has to clear the screen
	my ($self, $msg) = @_;
	$self->write_clear($msg);
	$self->{write} = 'write_home';
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
