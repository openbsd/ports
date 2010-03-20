# ex:ts=8 sw=4:
# $OpenBSD: Core.pm,v 1.6 2010/03/20 18:29:18 espie Exp $
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

# we have unique objects for hosts, so we can put properties in there.
package DPB::Host;

my $hosts = {};

sub new
{
	my ($class, $name, $prop) = @_;
	$hosts->{$name} //= bless {host => $name, prop => $prop}, $class;
}

sub name
{
	my $self = shift;
	return $self->{host};
}

sub fullname
{
	my $self = shift;
	my $name = $self->name;
	if (defined $self->{prop}->{jobs}) {
		$name .= "/$self->{prop}->{jobs}";
	}
	return $name;
}


# here, a "core" is an entity responsible for scheduling cpu, such as
# running a job, which is a collection of tasks.
# the "abstract core" part only sees about registering/unregistering cores,
# and having a global event handler that gets run whenever possible.
package DPB::Core::Abstract;

use POSIX ":sys_wait_h";
use OpenBSD::Error;
use DPB::Util;
use DPB::Job;


# note that we play dangerously, e.g., we only keep cores that are running
# something in there, the code can keep some others.
my ($running, $special) = ({}, {});
sub repositories
{
	return ($running, $special);
}

my @extra_stuff = ();

sub register_event
{
	my ($class, $code) = @_;
	push(@extra_stuff, $code);
}

sub handle_events
{
	for my $code (@extra_stuff) {
		&$code;
	}
}

sub is_alive
{
	return 1;
}

sub new
{
	my ($class, $host, $prop) = @_;
	bless {host => DPB::Host->new($host, $prop)}, $class;
}

sub host
{
	my $self = shift;
	return $self->{host};
}

sub prop
{
	my $self = shift;
	return $self->host->{prop};
}

sub sf
{
	my $self = shift;
	return $self->prop->{sf};
}

sub memory
{
	my $self = shift;
	return $self->prop->{memory};
}

sub hostname
{
	my $self = shift;
	return $self->host->name;
}

sub fullhostname
{
	my $self = shift;
	return $self->host->fullname;
}

sub register
{
	my ($self, $pid) = @_;
	$self->{pid} = $pid;
	$self->repository->{$self->{pid}} = $self;
}

sub unregister
{
	my ($self, $status) = @_;
	delete $self->repository->{$self->{pid}};
	delete $self->{pid};
	$self->{status} = $status;
	return $self;
}

sub terminate
{
	my $self = shift;
	if (defined $self->{pid}) {
		waitpid($self->{pid}, 0);
		$self->unregister($?);
		return $self;
    	} else {
		return undef;
	}
}

sub reap_kid
{
	my ($class, $kid) = @_;
	if (defined $kid && $kid > 0) {
		for my $repo ($class->repositories) {
			if (defined $repo->{$kid}) {
				$repo->{$kid}->unregister($?)->continue;
				last;
			}
		}
	}
	return $kid;
}

my $inited = 0;
sub reap
{
	my ($class, $all) = @_;
	my $reaped = 0;
	if (!$inited) {
		DPB::Core::Factory->init_cores;
	}
	$class->handle_events;
	$reaped++ while $class->reap_kid(waitpid(-1, WNOHANG)) > 0;
	return $reaped;
}

sub reap_wait
{
	my ($class, $reporter) = @_;

	return $class->reap_kid(waitpid(-1, 0));
}

sub cleanup
{
	my $class = shift;
	for my $repo ($class->repositories) {
		for my $pid (keys %$repo) {
			kill INT => $pid;
		}
	}
}

OpenBSD::Handler->register( sub { __PACKAGE__->cleanup });

# this is a core that can run jobs
package DPB::Core::WithJobs;
our @ISA = qw(DPB::Core::Abstract);

sub fh
{
	my $self = shift;
	return $self->task->{fh};
}

sub job
{
	my $self = shift;
	return $self->{job};
}

sub task
{
	my $self = shift;
	return $self->job->{task};
}

sub terminate
{
	my $self = shift;
	$self->task->end  if $self->task;
	if ($self->SUPER::terminate) {
		$self->job->finalize($self);
	}
}

sub run_task
{
	my $core = shift;
	my $pid = $core->task->fork($core);
	if (!defined $pid) {
		die "Oops: task couldn't start\n";
	} elsif ($pid == 0) {
		for my $sig (keys %SIG) {
			$SIG{$sig} = 'DEFAULT';
		}
		if (!$core->task->run($core)) {
			exit(1);
		}
		exit(0);
	} else {
		$core->task->process($core);
		$core->register($pid);
	}
}

sub continue
{
	my $core = shift;
	if ($core->task->finalize($core)) {
		return $core->start_task;
	} else {
		return $core->job->finalize($core);
	}
}

sub start_task
{
	my $core = shift;
	my $task = $core->job->next_task($core);
	$core->job->{task} = $task;
	if (defined $task) {
		return $core->run_task;
	} else {
		return $core->job->finalize($core);
	}
}

sub mark_ready
{
	my $self = shift;
	delete $self->{job};
	return $self;
}

use Time::HiRes qw(time);
sub start_job
{
	my ($core, $job) = @_;
	$core->{job} = $job;
	$core->{started} = time;
	$core->{status} = 0;
	$core->start_task;
}

sub success
{
	my $self = shift;
	$self->host->{consecutive_failures} = 0;
}

sub failure
{
	my $self = shift;
	$self->host->{consecutive_failures}++;
}

sub start_clock
{
	my ($class, $tm) = @_;
	DPB::Core::Clock->start($tm);
}

package DPB::Task::Ncpu;
our @ISA = qw(DPB::Task::Pipe);
sub run
{
	my ($self, $core) = @_;
	my $shell = $core->{shell};
	my $sysctl = OpenBSD::Paths->sysctl;
	if (defined  $shell) {
		$shell->run("$sysctl -n hw.ncpu");
	} else {
		exec{$sysctl} ($sysctl, '-n', 'hw.ncpu');
	}
}

sub finalize
{
	my ($self, $core) = @_;
	my $fh = $self->{fh};
	if ($core->{status} == 0) {
		my $line = <$fh>;
		chomp $line;
		if ($line =~ m/^\d+$/) {
			$core->prop->{jobs} = $line;
		}
	}
	close($fh);
	$core->prop->{jobs} //= 1;
	return 1;
}

package DPB::Job::Init;
our @ISA = qw(DPB::Job::Normal);
use DPB::Signature;

sub new
{
	my ($class, $logger) = @_;
	my $o = bless {name => "init", logger => $logger}, $class;
	DPB::Signature->add_tasks($o);
	return $o;
}

# if everything is okay, we mark our jobs as ready
sub finalize
{
	my ($self, $core) = @_;
	if ($self->{signature}->matches($core, $self->{logger})) {
		for my $i (1 .. $core->prop->{jobs}) {
			ref($core)->new($core->hostname, $core->prop)->mark_ready;
		}
		return 1;
	} else {
		return 0;
    	}
}

# this is a weird one !
package DPB::Core::Factory;
our @ISA = qw(DPB::Core::WithJobs);
my $init = {};

sub new
{
	my ($class, $host, $prop) = @_;
	if ($host eq "localhost" or $host eq DPB::Core::Local->hostname) {
		return $init->{localhost} //= DPB::Core::Local->new_noreg($host, $prop);
	} else {
		require DPB::Core::Distant;
		return $init->{$host} //= DPB::Core::Distant->new_noreg($host, $prop);
	}
}

sub init_cores
{
	my ($self, $logger, $startup) = @_;
	for my $core (values %$init) {
		my $job = DPB::Job::Init->new($logger);
		if (!defined $core->prop->{jobs}) {
			$job->add_tasks(DPB::Task::Ncpu->new);
		}
		if (defined $startup) {
			$job->add_tasks(DPB::Task::Fork->new(
				sub {
					my $shell = shift;
					if (defined $shell) {
						$shell->run($startup);
					} else {
						exec{$startup}($startup);
					}
				}
			));
		}
		$core->start_job($job);
	}
	$inited = 1;
}

package DPB::Core;
our @ISA = qw(DPB::Core::WithJobs);

my @available = ();

my @extra_report = ();
my @extra_important = ();
sub register_report
{
	my ($self, $code, $important) = @_;
	push (@extra_report, $code);
	push (@extra_important, $important);
}

sub repository
{
	return $running;
}


sub one_core
{
	my ($core, $time) = @_;
	return $core->job->name." [$core->{pid}] on ".$core->hostname.
	    $core->job->watched($time);
}

sub report 
{
	my $current = time();

	my $s = join("\n", map {one_core($_, $current)} sort {$a->{started} <=> $b->{started}} values %$running). "\n";
	for my $a (@extra_report) {
		$s .= &$a;
	}
	return $s;
}

sub important
{
	my $current = time();
	my $s = '';
	for my $j (values %$running) {
		if ($j->job->really_watch($current)) {
			$s .= one_core($j, $current)."\n";
		}
	}

	for my $a (@extra_important) {
		$s .= &$a;
	}
	return $s;
}

sub mark_ready
{
	my $self = shift;
	$self->SUPER::mark_ready;
	push(@available, $self);
	return $self;
}

sub avail
{
	my $self = shift;
	return @available > 0;
}

sub running
{
	return scalar(%$running);
}

sub get
{
	if (@available > 1) {
		@available = sort {$b->sf <=> $a->sf} @available;
	}
	return shift @available;
}

my @all_cores = ();

sub all_sf
{
	my $l = [];
	for my $j (@all_cores) {
		next unless $j->is_alive;
		push(@$l, $j->sf);
	}
	return [sort {$a <=> $b} @$l];
}

sub new
{
	my ($class, $host, $prop) = @_;
	$prop->{sf} //= 1;
	my $o = $class->SUPER::new($host, $prop);
	push(@all_cores, $o);
	return $o;
}

sub new_noreg
{
	my ($class, $host, $prop) = @_;
	$class->SUPER::new($host, $prop);
}

my $has_sf = 0;

sub has_sf
{
	return $has_sf;
}

sub parse_hosts_file
{
	my ($class, $filename, $arch, $timeout, $logger, $heuristics) = @_;
	open my $fh, '<', $filename or die "Can't read host files $filename\n";
	my $_;
	my $sf;
	my $cores = {};
	my $startup_script;
	while (<$fh>) {
		chomp;
		s/\s*\#.*$//;
		next if m/^$/;
		if (m/^STARTUP=\s*(.*)\s*$/) {
			$startup_script = $1;
			next;
		}
		my $prop = {};
		my ($host, @properties) = split(/\s+/, $_);
		for my $_ (@properties) {
			if (m/^(.*?)=(.*)$/) {
				$prop->{$1} = $2;
			}
		}
		if (defined $prop->{arch} && $prop->{arch} != $arch) {
			next;
		}
		if (defined $prop->{mem}) {
			$prop->{memory} = $prop->{mem};
		}
		$sf //= $prop->{sf};
		if (defined $prop->{sf} && $prop->{sf} != $sf) {
			$has_sf = 1;
		}
		if (defined $timeout) {
			$prop->{timeout} //= $timeout;
		}
		$heuristics->calibrate(DPB::Core::Factory->new($host, $prop));
	}
	DPB::Core::Factory->init_cores($logger, $startup_script);
}

sub start_pipe
{
	my ($self, $code, $name) = @_;
	$self->start_job(DPB::Job::Pipe->new($code, $name));
}

package DPB::Core::Special;
our @ISA = qw(DPB::Core::WithJobs);
sub repository
{
	return $special;
}

package DPB::Core::Local;
our @ISA = qw(DPB::Core);

my $host;
sub hostname
{
	if (!defined $host) {
		chomp($host = `hostname`);
	}
	return $host;
}
 
package DPB::Core::Clock;
our @ISA = qw(DPB::Core::Special);

sub start
{	
	my ($class, $timeout) = @_;
	my $core = $class->new('localhost');
	$timeout //= 10;
	$core->start_job(DPB::Job::Infinite->new(DPB::Task::Fork->new(sub { 
		sleep($timeout);
		exit(0);
		}), 'clock'));
}

1;
