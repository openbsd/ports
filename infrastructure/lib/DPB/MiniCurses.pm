# ex:ts=8 sw=4:
# $OpenBSD: MiniCurses.pm,v 1.19 2023/07/03 14:01:58 espie Exp $
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

package DPB::MiniCurses;
use Term::Cap;
use Term::ReadKey;
use constant { 
	BLACK => 0,
	RED => 1,
	GREEN => 2,
	YELLOW => 3,
	BLUE => 4,
	PURPLE => 5,
	TURQUOISE => 6,
	WHITE => 7 };

sub refresh($self)
{
	$self->{write} = 'go_write_home';
	$self->{force} = 1;
}

sub handle_window($self)
{
	$self->refresh;
}

sub width($self)
{
	return $self->{state}->width;
}

sub height($self)
{
	return $self->{state}->height;
}

sub create_terminal($self)
{
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
	$self->{home} = $self->{terminal}->Tputs("ho", 1);
	$self->{clear} = $self->{terminal}->Tputs("cl", 1);
	$self->{down} = $self->{terminal}->Tputs("do", 1);
	$self->{glitch} = exists $self->{terminal}{_xn};
	$self->{cleareol} = $self->{terminal}->Tputs("ce", 1);
	if ($self->{state}{color}) {
		$self->{bg} = $self->{terminal}->Tputs('AB', 1);
		$self->{fg} = $self->{terminal}->Tputs('AF', 1);
		$self->{blink} = $self->{terminal}->Tputs('mb', 1);
		$self->{dontblink} = $self->{terminal}->Tputs('me', 1);
		$self->{clear} = sprintf($self->{fg}, WHITE).
		    sprintf($self->{bg}, BLACK).$self->{clear};
	}
	if ($self->{state}{nocursor}) {
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

sub write_clear($self, $msg)
{
	my $r = $self->{clear};
	$self->{oldlines} = [$self->cut_lines($msg)];
	my $n = 2;
	for my $line (@{$self->{oldlines}}) {
		last if $n++ > $self->height;
		$r .= $self->clamped($line);
	}
	print $r;
}

sub cut_lines($self, $msg)
{
	my @lines = ();
	for my $line (split("\n", $msg)) {
		while (length $line > $self->width) {
			push(@lines, substr($line, 0, $self->width));
			$line = substr($line, $self->width);
		}
		push(@lines, $line);
	}
	return @lines;
}

sub default_fg($self, $color)
{
	$self->{resetfg} = sprintf($self->{fg}, $color);
}

sub default_bg($self, $color)
{
	$self->{resetbg} = sprintf($self->{bg}, $color);
}
sub color($self, $expr, $color)
{
	return sprintf($self->{fg}, $color).$expr.$self->{resetfg};
}

sub bg($self, $expr, $color)
{
	return sprintf($self->{bg}, $color).$expr.$self->{resetbg};
}

sub blink($self, $expr)
{
	return $self->{blink}.$expr.$self->{dontblink};
}

sub mogrify($self, $line)
{
	my $percent = PURPLE;
	$self->default_bg(BLACK);
	$self->default_fg(WHITE);
	if ($line =~ m/waiting-for-lock/) {
		$line = $self->color($line, BLUE);
		$self->default_fg(BLUE);
	} elsif ($line =~ m/stuck on/ || $line =~ m/locked by/) {
			$line = $self->bg($self->color($line, BLACK), RED);
			$self->default_bg(RED);
			$self->default_fg(BLACK); $percent = WHITE;
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
		$line =~ s/([\@\w\.\-]*[\@\w.])(\s|\(|$)/$self->color($1, RED).$2/ge;
		$line =~ s/([\/\@\w\.\-]+\-)(\s|\(|$)/$self->blink($self->bg($self->color($1, BLACK), RED)).$2/ge;
		$line =~ s/(^Hosts:)/$self->color($1, BLUE)/ge;
	}
	$line =~ s/(STOPPED!)/$self->bg($self->color($1, BLACK), RED)/ge;
	$line =~ s/(\[\d+\])/$self->color($1, GREEN)/ge;
	$line =~ s/(\(.*?\))/$self->color($1, YELLOW)/ge;
	$line =~ s/(\d+\%)/$self->color($1, $percent)/ge;
	return $line;
}

sub clamped($self, $line)
{
	my $l2 = $line;
	if (defined $self->{fg}) {
		$l2 = $self->mogrify($l2);
	}
	if (!$self->{glitch} && length $line == $self->width) {
		return $l2;
	} else {
		return $l2."\n";
	}
}

sub clear_clamped($self, $line)
{
	my $l2 = $line;
	if (defined $self->{fg}) {
		$l2 = $self->mogrify($l2);
	}
	if (!$self->{glitch} && length $line == $self->width) {
		return $l2;
	} else {
		return $self->{cleareol}.$l2."\n";
	}
}

sub do_line($self, $new, $old)
{
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

sub lines($self, @new)
{
	my $n = 2;
	my $r = '';

	while (@new > 0) {
		return $r if $n++ > $self->height;
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
		last if $n++ > $self->height;
	}
	return $r;
}

sub write_home($self,$msg)
{
	my @new = $self->cut_lines($msg);
	print $self->{home}.$self->lines(@new);
	$self->{oldlines} = \@new;
}

sub go_write_home($self, $msg)
{
	# first report has to clear the screen
	$self->write_clear($msg);
	$self->{write} = 'write_home';
}

1;
