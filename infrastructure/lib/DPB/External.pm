# ex:ts=8 sw=4:
# $OpenBSD: External.pm,v 1.18 2019/05/15 13:55:46 espie Exp $
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

package DPB::External;
use IO::Socket;
use IO::Select;

my $motto = "shut up and hack!";
sub server
{
	my ($class, $state) = @_;

	my $o = bless {state => $state, 
	    subdirlist => {}}, $class;
	my $path = $state->expand_path($state->{subst}->value('CONTROL'));

	# this ensures the socket belongs to log_user.
	$state->{log_user}->run_as(
	    sub {
	    	unlink($path);
		$o->{server} = IO::Socket::UNIX->new(
		    Type => SOCK_STREAM,
		    Local => $path);
	    	if (!defined $o->{server}) {
			$state->fatal("Can't create socket named #1: #2", 
			    $path, $!);
		}
		chmod 0700, $path or 
		    $state->fatal("Can't enforce permissions for socket #1:#2", 
			$path, $!);
	    });
	# NOW we can listen
	$o->{server}->listen;
	$o->{select} = IO::Select->new($o->{server});
	return $o;
}

sub status
{
	my ($self, $v) = @_;
	if (!defined $v->{info}) {
		return "unscanned/unknown";
	}
	if ($v->{info} == DPB::PortInfo->stub) {
		return "ignored";
	}
	my $status = $self->{state}->{engine}->status($v);
	if (!defined $status) {
		$status = DPB::Core->status($v);
	}
	if (!defined $status) {
		return "???";
	}
	return $status;
}

sub wipe
{
	my ($self, $fh, $p) = @_;

	my $v = DPB::PkgPath->new($p);
	my $state = $self->{state};
	my $info = $state->locker->get_info($v);
	if ($info->is_bad) {
		$fh->print($p, " is not locked\n");
	} elsif (defined $info->{locked}) {
		if ($info->{same_pid} && !$info->{errored}) {
			$fh->print($p, " is still running\n");
			return;
		}
		my $h = DPB::Host->retrieve($info->{host});
		if (!defined $h) {
			$fh->print("Can't wipe on $info->{host}: no such host\n");
		} elsif (!$h->is_alive) {
			$h->print("Can't wipe on $info->{host}: host is AWOL\n");
		} else {
			$fh->print("cleaning up $info->{locked}\n");
			my $w = DPB::PkgPath->new($info->{locked});
			# steal a temporary core
			$state->engine->wipe($w, DPB::Core->new_noreg($h));
		}
	}
}

sub handle_command
{
	my ($self, $line, $fh) = @_;
	my $state = $self->{state};
	if ($line =~ m/^dontclean\s+(.*)/) {
		for my $p (split(/\s+/, $1)) {
			$state->{builder}{dontclean}{$p} = 1;
		}
	} elsif ($line =~ m/^addhost\s+(.*)/) {
		my @list = split(/\s+/, $1);
		if (!DPB::Config->add_host($state, @list)) {
			$fh->print("Can't add: host already exists\n");
		}
	} elsif ($line =~ m/^stats\b/) {
		$fh->print($state->engine->statline, "\n");
	} elsif ($line =~ m/^status\s+(.*)/) {
		for my $p (split(/\s+/, $1)) {
			my $v = DPB::PkgPath->new($p);
			$v->quick_dump($fh);
			$fh->print("\t", $self->status($v), "\n");
		}
	} elsif ($line =~ m/^pf{6}\b/) {
		$fh->print($motto, "\n");
	} elsif ($line =~ m/^addpath\s+(.*)/) {
		$state->interpret_paths(split(/\s+/, $1),
		    sub {
			my ($pkgpath, $weight) = @_;
			if (defined $weight) {
				$state->heuristics->set_weight($pkgpath);
			}
			$pkgpath->add_to_subdirlist($self->{subdirlist});
		    });
	} elsif ($line =~ m/^wipe\s+(.*)/) {
		for my $p (split(/\s+/, $1)) {
			$self->wipe($fh, $1);
		}
	} elsif ($line =~ m/^help\b/) {
		$fh->print(
		    "Commands:\n",
		    "\taddhost <hostline>\n",
		    "\taddpath <fullpkgpath>...\n",
		    "\tbye\n",
		    "\tdontclean <pkgpath>...\n",
		    "\tstats\n",
		    "\tstatus <fullpkgpath>...\n",
		    "\twipe <fullpkgpath>...\n"
		);
	} else {
		$fh->print("Unknown command or bad syntax: ", $line, " (help for details)\n");
	}
	$fh->print('dpb$ ');
}

sub receive_commands
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
				if (!defined $line || $line =~ m/^bye$/) {
					$fh->close;
					$self->{select}->remove($fh);
				} else {
					chomp $line;
					$self->handle_command($line, $fh);
				}
			}
		}
	}

	if (keys %{$self->{subdirlist}} > 0 && DPB::Core->avail) {
		# XXX store value first, re-entrancy
		my $subdirlist = $self->{subdirlist};
		$self->{subdirlist} = {};
		my $core = DPB::Core->get;
		$self->{state}->grabber->grab_subdirs($core, $subdirlist, 
		    undef);
		$self->{state}->grabber->complete_subdirs($core, undef);
		$core->mark_ready;
	}
}

1;
