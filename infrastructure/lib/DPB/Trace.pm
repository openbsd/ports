# ex:ts=8 sw=4:
# $OpenBSD: Trace.pm,v 1.5 2019/09/27 11:13:30 espie Exp $
#
# Copyright (c) 2015 Marc Espie <espie@openbsd.org>
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

package DPB::Trace;

# inspired by Carp::Always


sub dump
{
	my ($class, $arg, $full) = @_;
	if (!defined $arg) {
		return '<undef>';
	} else {
		my $string;
		eval { $string = $arg->debug_dump };
		if (defined $string) {
			return "$arg($string)";
		}
	}
	if ($full) {
		require Data::Dumper;
		my $msg = Data::Dumper->new([$arg])->
		    Indent(0)->Maxdepth(1)->Quotekeys(0)->Sortkeys(1)->
		    Deparse(1)-> Dump;

		$msg =~ s/^\$VAR1 = //;
		$msg =~ s/\;$//;

		return $msg;
	} else {
		return $arg;
	}
}

sub stack
{
	my ($self, $full) = @_;

	my $msg = '';
	my $x = 1;
	while (1) {
		my @c;
		{
			package DB;
			our @args;
			@c = caller($x+1);
		}
		last if !@c;
		my $fn = "$c[3]";
		$msg .= $fn."(".
		    join(', ', map { $self->dump($_, $full); } @DB::args).
		    ") called at $c[1] line $c[2]\n";
		$x++;
	}
	return $msg;
}

my ($reporter, $sig, $olddie, $oldwarn, $logfile, $cleanup);
sub setup
{
	my $class = shift;
	$sig = shift;
	$cleanup = shift;
	$olddie = $SIG{__DIE__};
	$oldwarn = $SIG{__WARN__};
	$sig->{__WARN__} = sub {
		$sig->{__WARN__} = $oldwarn;
		my $a = pop @_; # XXX need copy because contents of @_ are RO.
		$a =~ s/(.*)( at .*? line .*?)\n$/$1$2/s;
		push @_, $a;
		my $msg = join("\n", @_, $class->stack(0));
		if (defined $logfile) {
			print $logfile $msg;
			print $logfile '-'x70, "\n";
		}
		if (defined $reporter) {
			$reporter->myprint($msg);
		} else {
			warn $msg;
		}
	};

	$sig->{__DIE__} = sub {
		die @_ if $^S;
		$sig->{__DIE__} = $olddie;
		my $a = pop @_; # XXX need copy because contents of @_ are RO.
		$a =~ s/(.*)( at .*? line .*?)\n$/$1$2/s;
		push @_, $a;
		if (defined $reporter) {
			$reporter->reset_cursor;
		}
		my $msg = join("\n", @_, $class->stack(1));
		if (defined $logfile) {
			print $logfile $msg;
			print $logfile '-'x70, "\n";
		}
		&$cleanup();
		die $msg;
	};

	$sig->{INFO} = sub {
		print "Trace:\n", $class->stack(0);
		sleep 1;
	};
}

END {
	$sig->{__DIE__} = $olddie;
	$sig->{__WARN__} = $oldwarn;
}

sub set_reporter
{
	my $class = shift;
	$reporter = shift;
}

sub set_logger
{
	my $class = shift;
	$logfile = shift;
}

1;

