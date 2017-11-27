# ex:ts=8 sw=4:
# $OpenBSD: External.pm,v 1.2 2017/11/27 17:00:50 espie Exp $
#
# Copyright (c) 2017 Marc Espie <espie@openbsd.org>
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

# socket for external commands

package DPB::External::Command;

sub new
{
	my ($class, $line, $fh) = @_;
	bless { line => $line, fh => $fh}, $class;
}

sub line
{
	my $self = shift;
	return $self->{line};
}

sub print
{
	my $self = shift;
	$self->{fh}->print(@_);
}

sub unknown_command
{
	my $self = shift;
	$self->print("Unknown command: ", $self->line, "\ndpb\$ ");
}

package DPB::External;
use IO::Socket;
use IO::Select;

sub server
{
	my ($class, $state) = @_;

	my $o = bless {commands => []}, $class;

	my $path = $state->{subst}->value('SOCKET');

	# this ensures the socket belongs to log_user.
	$state->{log_user}->run_as(
	    sub {
	    	unlink($path);
		$o->{server} = IO::Socket::UNIX->new(
		    Type => SOCK_STREAM,
		    Local => $path);
	    	if (!defined $o->{server}) {
			$state->fatal("Can't create socket named #1", $path);
		}
		chmod 0700, $path or 
		    $state->fatal("Can't fix rights for socket #1", $path);
	    });
	# NOW we can listen
	$o->{server}->listen;
	$o->{select} = IO::Select->new($o->{server});
	return $o;
}

sub peek
{
	my $self = shift;
	while (my @ready = $self->{select}->can_read(0)) {
		foreach my $fh (@ready) {
			if ($fh == $self->{server}) {
				my $n = $fh->accept;
				$self->{select}->add($n);
				$n->print('dpb$ ');
			} else {
				my $line = $fh->getline;
				chomp $line;
				if ($line =~ m/^bye$/) {
					$fh->close;
					$self->{select}->remove($fh);
				} else {
					$fh->print('dpb$ ');
					push(@{$self->{commands}}, 
					    DPB::External::Command->new(
					    	$line, $fh));
				}
			}
		}
	}
}

sub command
{
	my $self = shift;
	$self->peek;
	if (@{$self->{commands}} > 0) {
		return shift @{$self->{commands}};
	} else {
		return undef;
	}
}

1;
