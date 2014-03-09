# ex:ts=8 sw=4:
# $OpenBSD: MiniCurses.pm,v 1.6 2014/03/09 20:04:57 espie Exp $
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

package DPB::MiniCurses;
use Term::Cap;
use constant { 
	BLACK => 0,
	RED => 1,
	GREEN => 2,
	YELLOW => 3,
	BLUE => 4,
	PURPLE => 5,
	TURQUOISE => 6,
	WHITE => 7 };

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
	$self->find_window_size;
	$self->refresh;
}

sub create_terminal
{
	my ($self, $o) = @_;
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
	$self->{home} = $self->{terminal}->Tputs("ho", 1);
	$self->{clear} = $self->{terminal}->Tputs("cl", 1);
	$self->{down} = $self->{terminal}->Tputs("do", 1);
	$self->{glitch} = $self->{terminal}->Tputs("xn", 1);
	$self->{cleareol} = $self->{terminal}->Tputs("ce", 1);
	if ($o->{color}) {
		$self->{bg} = $self->{terminal}->Tputs('AB', 1);
		$self->{fg} = $self->{terminal}->Tputs('AF', 1);
	}
	if ($o->{nocursor}) {
		$self->{invisible} = 
		    $self->{terminal}->Tputs("vi", 1);
		$self->{visible} = 
		    $self->{terminal}->Tputs("ve", 1);
	}
	if ($self->{home}) {
		$self->{write} = "go_write_home";
	} else {
		$self->{write} = "write_clear";
	}
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

sub default_fg
{
	my ($self, $color) = @_;
	$self->{resetfg} = sprintf($self->{fg}, $color);
}

sub default_bg
{
	my ($self, $color) = @_;
	$self->{resetbg} = sprintf($self->{bg}, $color);
}
sub color
{
	my ($self, $expr, $color) = @_;
	return sprintf($self->{fg}, $color).$expr.$self->{resetfg};
}

sub bg
{
	my ($self, $expr, $color) = @_;
	return sprintf($self->{bg}, $color).$expr.$self->{resetbg};
}

sub mogrify
{
	my ($self, $line) = @_;
	my $percent = PURPLE;
	$self->default_bg(BLACK);
	$self->default_fg(WHITE);
	if ($line =~ m/waiting-for-lock/) {
		$line = $self->color($line, BLUE);
		$self->default_fg(BLUE);
	} elsif ($line =~ m/frozen/) {
		if ($line =~ m/for\s+\d+\s*(mn|HOURS)/) {
			$line = $self->bg($self->color($line, BLACK), RED);
			$self->default_bg(RED);
			$self->default_fg(BLACK);
			$percent = WHITE;
		} else {
			$line = $self->color($line, RED);
			$self->default_fg(RED);
		}
	} elsif ($line =~ m/^\</) {
		$line = $self->color($line, TURQUOISE);
		$self->default_fg(TURQUOISE);
	} elsif ($line =~ m/^(LISTING|UPDATING)/) {
		$line = $self->bg($self->color($line, WHITE), BLUE);
		$self->default_bg(BLUE);
		$self->default_fg(WHITE);
	} elsif ($line =~ m/^I=/) {
		$line = $self->bg($self->color($line, WHITE), BLUE);
	} elsif ($line =~ m/^E=/) {
		$line = $self->color($line, RED);
		$self->default_fg(RED);
	} elsif ($line =~ m/^Hosts:/) {
		$line =~ s/([\w\.\-]+)(\s|\(|$)/$self->color($1, RED).$2/ge;
		$line =~ s/(^Hosts:)/$self->color($1, BLUE)/ge;
	}
	$line =~ s/(\[\d+\])/$self->color($1, GREEN)/ge;
	$line =~ s/(\(.*?\))/$self->color($1, YELLOW)/ge;
	$line =~ s/(\d+\%)/$self->color($1, $percent)/ge;
	return $line;
}

sub clamped
{
	my ($self, $line) = @_;
	my $l2 = $line;
	if (defined $self->{fg}) {
		$l2 = $self->mogrify($l2);
	}
	if (!$self->{glitch} && length $line == $self->{width}) {
		return $l2;
	} else {
		return $l2."\n";
	}
}

sub clear_clamped
{
	my ($self, $line) = @_;
	my $l2 = $line;
	if (defined $self->{fg}) {
		$l2 = $self->mogrify($l2);
	}
	if (!$self->{glitch} && length $line == $self->{width}) {
		return $l2;
	} else {
		return $self->{cleareol}.$l2."\n";
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

1;
