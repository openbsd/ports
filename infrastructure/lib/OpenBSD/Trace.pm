# ex:ts=8 sw=4:
# $OpenBSD: Trace.pm,v 1.2 2019/09/29 10:58:10 espie Exp $
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

package OpenBSD::Trace;

# this is a base class meant to be inherited from

# 'smart' dump param
# -> objects with a debug_dump will be stringified by it
# -> other objects will be passed to Data::Dumper for writing
# -> 'weird' characters get filtered out (think SHA contents)


my $forbidden = qr{[^[:print:]\s]};

sub dumper
{
	my $self = shift;

	require Data::Dumper;
	return Data::Dumper->new(@_)->
	    Indent(0)->Maxdepth(1)->Quotekeys(0)->Sortkeys(1)->
	    Deparse(1);
}

sub dump_param
{
	my ($self, $arg, $full) = @_;
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
		my $msg = $self->dumper([$arg])->Dump;

		$msg =~ s/^\$VAR1 = //;
		$msg =~ s/\;$//;
		$msg =~ s/$forbidden/?/g;

		return $msg;
	} else {
		return $arg;
	}
}

# the stack, mostly identical to Carp::Always
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
		# XXX do better with anon fn ?
		my $fn = "$c[3]";
		$msg .= $fn."(".
		    join(', ', map { $self->dump_param($_, $full); } @DB::args).
		    ") called at $c[1] line $c[2]\n";
		$x++;
	}
	return $msg;
}

sub new
{
	my $class = shift;
	my $o = bless {}, $class;
    	$o->init(@_);
	return $o;
}

# XXX this is necessary to avoid endless recursion

END {
	$SIG{__DIE__} = 'DEFAULT';
	$SIG{__WARN__} = 'DEFAULT';
}

sub init
{
	my $self = shift;
	$self->setup_warn;
	$self->setup_die;
}

sub setup_warn
{
	my $self = shift;
	$SIG{__WARN__} = sub {
		local $SIG{__WARN__} = 'DEFAULT';
		# let CORE:: do its job during compile and evals
		unless (defined $^S and !$^S) {
			warn @_;
			return;
		}
		my $a = pop @_; # XXX need copy because contents of @_ are RO.
		$a =~ s/(.*)( at .*? line .*?)\n$/$1$2/s;
		push @_, $a;
		my $msg = join("\n", @_, $self->stack(0));
		$self->do_warn($msg);
	};
}

sub setup_die
{
	my $self = shift;
	$SIG{__DIE__} = sub {
		local $SIG{__DIE__} = 'DEFAULT';
		# let CORE:: do its job during compile and evals
		unless (defined $^S and !$^S) {
			die @_;
			return;
		}
		my $a = pop @_; # XXX need copy because contents of @_ are RO.
		$a =~ s/(.*)( at .*? line .*?)\n$/$1$2/s;
		push @_, $a;
		my $msg = join("\n", @_, $self->stack(1));
		$self->do_die($msg);
	};
}

sub do_warn
{
	my ($self, $msg) = @_;
	warn $msg;

}

sub dump_data
{
	my $self = shift;

	require Data::Dumper;

	my $msg = Data::Dumper->new(@_)->
	    Quotekeys(0)->Sortkeys(1)->Deparse(1)->Dump;
	$msg =~ s/$forbidden/?/g;

	return $msg;
}

sub do_die
{
	my ($self, $msg) = @_;
	die $msg;
}
1;
=pod

=head1 NAME

OpenBSD::Trace - Base class for run time diagnostics

=head1 SYNOPSIS

    package MyTrace;
    use parent qw(OpenBSD::Trace);
    # ... specialize methods

    # ... at start of main program
    package main;
    my $t = MyTrace;

=head1 DESCRIPTION

L<OpenBSD::Trace> provides a base class for stack dumping on warn and die.
By default, it does a standard stack dump on warn, and a "full" stack dump
on die (with arguments passed through L<Data::Dumper> with limited recursion).

Additionally, arguments for classes that define a C<debug_dump> method will
be stringified by calling C<debug_dump> instead.

L<OpenBSD::Trace> also provides an C<OpenBSD::Trace-E<gt>data_dump>  
which does the same thing as L<Data::Dumper>'s C<dump> with some extras:

=over 4

=item *

non printable characters are replaced with '?'

=item *

nice options, such as Deparse and Sortkeys are set.

=back

Inheriting from L<OpenBSD::Trace> offers the following overridable methods:

=over 4

=item *

the stack dumping message is built using C<$self-E<gt>stack_dump($full)>

=item *

the Data::Dumper object with options is built using C<$self-E<gt>dumper(@_)>

=item *

the C<$SIG{__WARN__}> handler calls C<$self-E<gt>do_warn($msg)> after doing a
C<local $SIG{__WARN__} = 'DEFAULT';>

=item *

the C<$SIG{__DIE__}> handler calls C<$self-E<gt>do_die($msg)> after doing a
C<local $SIG{__DIE__} = 'DEFAULT';>

=item *

those handlers are set using C<$self-E<gt>setup_warn> and
C<$self->E<gt>setup_die> respectively

=item *

once the base constructor is done, it calls C<$self-E<gt>init(@_)>
with the rest of the parameters.

=item *

the base object is an empty hash where keys may be set as needed.

=back

Thus, a derived class can easily reuse the message creation in other contexts
(doing a C<stack_dump> on C<$SIG{STATUS}> for instance).
It's also easy to override C<do_warn> or C<do_die>  to log the message 
somewhere or to ensure terminal consistency.

=cut
