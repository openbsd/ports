# ex:ts=8 sw=4:
# $OpenBSD: Distant.pm,v 1.25 2019/10/07 04:52:15 espie Exp $
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

use DPB::Core;
use OpenBSD::Paths;

package DPB::Host::Distant;
our @ISA = (qw(DPB::Host));
sub shellclass
{
	return "DPB::Ssh";
}

sub is_localhost
{
	return 0;
}

sub is_alive
{
	my $self = shift;
	return $self->shell->is_alive;
}

sub coreclass
{
	return "DPB::Core::Distant";
}

package DPB::Ssh;
our @ISA = qw(DPB::Shell::Chroot);

sub ssh
{
	my ($class, $socket) = @_;
	return ('ssh', '-T', '-S', $socket);
}

sub new
{
	my ($class, $host) = @_;
	return bless {
	    master => DPB::Ssh::Master->find($host),
	    prop => $host->{prop}
	    }, $class;
}

sub is_alive
{
	my $shell = shift;
	return $shell->{master}->is_alive;
}

sub socket
{
	my $shell = shift;
	return $shell->{master}->socket;
}

sub hostname
{
	my $shell = shift;
	return $shell->{master}->hostname;
}

sub stringize_master_pid
{
	my $shell = shift;
	my $pid = $shell->{master}{pid};

	return " [$pid]";
}

sub _run
{
	my ($self, @cmd) = @_;
	my $try = 0;
	while (!-e $self->socket) {
		sleep(1);
		$try++;
		if ($try >= 60) {
			exit(1);
		}
	}
	# XXX ssh does not like uid games
	$) = $(;
	$> = $<;
	exec {OpenBSD::Paths->ssh}
	    ($self->ssh($self->socket), $self->hostname, join(' ', @cmd));
}

sub quote
{
	my ($self, $cmd) = @_;
	return "\"$cmd\"";
}

package DPB::Task::SshMaster;
our @ISA = qw(DPB::Task::Fork);
sub run
{
	my $self = shift;
	my $socket = $self->{socket};
	unlink($socket);
	my $timeout = $self->{timeout};
	my $host = $self->{host};
	# XXX ssh does not like uid games
	$> = $<;
	close STDOUT;
	close STDERR;
	open STDOUT, '>/dev/null';
	open STDERR, '>&STDOUT';
	exec {OpenBSD::Paths->ssh}
	    (DPB::Ssh->ssh($socket),
	    	'-o', "connectTimeout=$timeout",
		'-o', "serverAliveInterval=$timeout",
		#'-o', "ClearAllForwardings=yes",
		'-o', "ForwardX11=no",
		'-o', "ForwardAgent=no",
		'-o', "GatewayPorts=no",
		'-N', '-M', $host) or
	    exit(1);
}

# we never error out
sub finalize
{
	return 1;
}

sub new
{
	my ($class, $socket, $timeout, $host) = @_;
	bless {socket => $socket, timeout => $timeout, host => $host}, $class;
}

package DPB::Job::SshMaster;
our @ISA = qw(DPB::Job::Infinite);

sub new
{
	my ($class, $host) = @_;
	my $h = $host->name;
	my $timeout = $host->{prop}{timeout} // 10;
	my $socket = $host->{prop}{socket};
	my $o = $class->SUPER::new(DPB::Task::SshMaster->new($socket,
	    $timeout, $h), "ssh master for $h");
	$o->{host} = $h;
	$o->{timeout} = $timeout;
	$o->{socket} = $socket;
	return $o;
}

package DPB::Ssh::Master;
our @ISA = qw(DPB::Core::Special);

my $master = {};

sub socket
{
	my $self = shift;
	return $self->job->{socket};
}

sub timeout
{
	my $self = shift;
	return $self->job->{timeout};
}

sub is_alive
{
	my $self = shift;
	return -e $self->socket;
}

sub create
{
	my ($class, $host) = @_;

	my $core = $class->SUPER::new($host);
	$core->start_job(DPB::Job::SshMaster->new($host));
}

sub find
{
	my ($class, $host) = @_;
	$master->{$host->name} //= $class->create($host);
}

package DPB::Core::Distant;
our @ISA = qw(DPB::Core);
my @dead_cores = ();

sub mark_ready
{
	my $self = shift;
	if ($self->is_alive) {
		$self->SUPER::mark_ready;
	} else {
		delete $self->{job};
		push(@dead_cores, $self);
		return undef;
	}
}

sub check_dead_hosts
{
	my @redo = @dead_cores;
	@dead_cores = ();
	for my $core (@redo) {
		$core->mark_ready;
	}
}

DPB::Core->register_event(\&check_dead_hosts);

1;
