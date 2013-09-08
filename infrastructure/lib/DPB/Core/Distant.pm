# ex:ts=8 sw=4:
# $OpenBSD: Distant.pm,v 1.9 2013/09/08 11:10:59 espie Exp $
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

use DPB::Core;
use OpenBSD::Paths;

package DPB::Ssh;
our @ISA = qw(DPB::Shell::Abstract);

sub ssh
{
	my ($class, $socket, $timeout) = @_;
	return ('ssh', '-o', "connectTimeout=$timeout",
	    '-o', "serverAliveInterval=$timeout",
	    '-S', $socket);
}

#	    '-o', 'clearAllForwardings=yes',
#	    '-o', 'EscapeChar=none',

sub new
{
	my ($class, $host) = @_;
	bless {
	    master => DPB::Ssh::Master->find($host->name, 
	    	$host->{prop}->{timeout})
	    }, $class;
}

sub is_alive
{
	shift->{master}->is_alive;
}

sub socket
{
	shift->{master}->socket;
}

sub timeout
{
	shift->{master}->timeout;
}

sub hostname
{
	shift->{master}->hostname;
}

sub _run
{
	my ($self, $cmd) = @_;
	exec {OpenBSD::Paths->ssh}
	    ($self->ssh($self->socket, $self->timeout),
	    $self->hostname, $cmd);
}

sub exec
{
	my ($self, @argv) = @_;
	if ($self->{env}) {
		while (my ($k, $v) = each %{$self->{env}}) {
			$v //= '';
			unshift @argv, "$k=\'$v\'";
		}
	}
	if ($self->{sudo}) {
		unshift(@argv, OpenBSD::Paths->sudo, "-E");
	}
	my $cmd = join(' ', @argv);
	if ($self->{dir}) {
		$cmd = "cd $self->{dir} && $cmd";
	}
	my $umask = $self->{master}{host}{prop}{umask};
	$self->_run("umask $umask && $cmd");
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
	close STDOUT;
	close STDERR;
	open STDOUT, '>/dev/null';
	open STDERR, '>&STDOUT';
	exec {OpenBSD::Paths->ssh}
	    (DPB::Ssh->ssh($socket, $timeout),
		'-N', '-M', $host);
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

my $TMPDIR;
sub new
{
	my ($class, $host) = @_;
	$TMPDIR //= $ENV{PKG_TMPDIR} || '/var/tmp';
	my $timeout = 60;
	my $socket = "$TMPDIR/ssh-$host-$$";
	my $o = $class->SUPER::new(DPB::Task::SshMaster->new($socket,
	    $timeout, $host), "ssh master for $host");
	$o->{host} = $host;
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
	my ($class, $host, $timeout) = @_;

	my $core = $class->SUPER::new($host);
	$core->start_job(DPB::Job::SshMaster->new($host, $timeout));
}

sub find
{
	my ($class, $host, $timeout) = @_;
	$master->{$host} //= $class->create($host, $timeout);
}

sub alive_hosts
{
	my @l = ();
	for my $shell (values %$master) {
		my $host = $shell->hostname;
		if ($shell->is_alive) {
			push(@l, $host." [$shell->{pid}]");
		} else {
			push(@l, $host.'-');
		}
	}
	return "Hosts: ".join(' ', sort(@l))."\n";
}

sub changed_hosts
{
	my @l = ();
	for my $shell (values %$master) {
		my $host = $shell->hostname;
		my $was_alive = $shell->{is_alive};
		if ($shell->is_alive) {
			$shell->{is_alive} = 1;
		} else {
			$shell->{is_alive} = 0;
		}
		if ($was_alive && !$shell->{is_alive}) {
			push(@l, "$host went down\n");
		} elsif (!$was_alive && $shell->{is_alive}) {
			push(@l, "$host came up\n");
		}
	}
	return join('', sort(@l));
}

DPB::Core->register_report(\&alive_hosts, \&changed_hosts);

package DPB::Core::Distant;
our @ISA = qw(DPB::Core);
my @dead_cores = ();

sub shellclass
{
	"DPB::Ssh"
}

sub is_alive
{
	my $self = shift;
	return $self->{shell}->is_alive;
}

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
