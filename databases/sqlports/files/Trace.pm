# ex:ts=8 sw=4:
# $OpenBSD: Trace.pm,v 1.1 2018/11/17 12:19:08 espie Exp $
#
# Copyright (c) 2015-2018 Marc Espie <espie@openbsd.org>
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

package Trace;

# inspired by Carp::Always
sub trace_message
{
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
		$msg .= "$c[3](". 
		    join(', ', map { 
			    if (!defined $_) {
				'<undef>';
			    } else {
				my $string;
				eval { $string = $_->debug_dump };
				if (defined $string) {
				    "$_($string)";
				} else {
				    $_;
				}
			    }
			} @DB::args). 
		    ") called at $c[1] line $c[2]\n";
		$x++;
	}
	return $msg;
}

my ($sig, $olddie, $oldwarn);

sub setup
{
	my $class = shift;
	$sig = shift;
	$olddie = $SIG{__DIE__};
	$oldwarn = $SIG{__WARN__};
	$sig->{__WARN__} = sub {
		$sig->{__WARN__} = $oldwarn;
		my $a = pop @_;
		$a =~ s/(.*)( at .*? line .*?)\n$/$1$2/s;
		push @_, $a;
		my $msg = join("\n", @_, &trace_message);
		warn $msg;
	};

	$sig->{__DIE__} = sub {
		die @_ if $^S;
		$sig->{__DIE__} = $olddie;
		my $a = pop @_;
		$a =~ s/(.*)( at .*? line .*?)\n$/$1$2/s;
		push @_, $a;
		if (defined $reporter) {
			$reporter->reset_cursor;
		}
		my $msg = join("\n", @_, &trace_message);
		die $msg;
	};

	$sig->{INFO} = sub {
		print "Trace:\n", &trace_message;
		sleep 1;
	};
}

END {
	$sig->{__DIE__} = $olddie;
	$sig->{__WARN__} = $oldwarn;
}

1;

