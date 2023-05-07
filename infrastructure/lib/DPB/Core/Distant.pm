# ex:ts=8 sw=4:
# $OpenBSD: Distant.pm,v 1.31 2023/05/07 06:26:41 espie Exp $
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

use DPB::Core;
use OpenBSD::Paths;

package DPB::Host::Distant;
our @ISA = (qw(DPB::Host));
sub shellclass($)
{
	return "DPB::Ssh";
}

sub is_localhost($)
{
	return 0;
}

sub is_alive($self)
{
	return $self->shell->is_alive;
}

sub coreclass($)
{
	return "DPB::Core::Distant";
}

sub create($class, $name, $prop)
{
	my $o = $class->SUPER::create($name, $prop);
	my $m = DPB::Ssh::Master->find($o);
	for my $tries (0 .. 120) {
		last if -e $m->socket;
		sleep 1;
	}
	return $o;
}

package DPB::Ssh;
our @ISA = qw(DPB::Shell::Chroot);

sub ssh($class, $socket)
{
	return ('ssh', '-S', $socket);
}

sub new($class, $host)
{
	return bless {
	    master => DPB::Ssh::Master->find($host),
	    prop => $host->{prop}
	    }, $class;
}

sub is_alive($shell)
{
	return $shell->{master}->is_alive;
}

sub socket($shell)
{
	return $shell->{master}->socket;
}

sub hostname($shell)
{
	return $shell->{master}->hostname;
}

sub stringize_master_pid($shell)
{
	my $pid = $shell->{master}{pid};

	return " [$pid]";
}

sub _run($self, @cmd)
{
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
	    ($self->ssh($self->socket), '-T', $self->hostname, join(' ', @cmd));
}

sub quote($self, $cmd)
{
	return "\"$cmd\"";
}

package DPB::Task::SshMaster;
our @ISA = qw(DPB::Task::Fork);
sub run($self, $core)
{
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
sub finalize($, $)
{
	return 1;
}

sub new($class, $socket, $timeout, $host)
{
	bless {socket => $socket, timeout => $timeout, host => $host}, $class;
}

package DPB::Job::SshMaster;
our @ISA = qw(DPB::Job::Infinite);

sub new($class, $host)
{
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

sub socket($self)
{
	return $self->job->{socket};
}

sub timeout($self)
{
	return $self->job->{timeout};
}

sub is_alive($self)
{
	return -e $self->socket;
}

sub create($class, $host)
{
	my $core = $class->SUPER::new($host);
	$core->start_job(DPB::Job::SshMaster->new($host));
}

sub find($class, $host)
{
	$master->{$host->name} //= $class->create($host);
}

package DPB::Core::Distant;
our @ISA = qw(DPB::Core);
my @dead_cores = ();

sub mark_ready($self)
{
	if ($self->is_alive) {
		$self->SUPER::mark_ready;
	} else {
		delete $self->{job};
		push(@dead_cores, $self);
		return undef;
	}
}

sub check_dead_hosts()
{
	my @redo = @dead_cores;
	@dead_cores = ();
	for my $core (@redo) {
		$core->mark_ready;
	}
}

DPB::Core->register_event(\&check_dead_hosts);

1;
