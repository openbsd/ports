# ex:ts=8 sw=4:
# $OpenBSD: Core.pm,v 1.4 2010/03/01 17:59:49 espie Exp $
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
	my ($class, $host) = @_;
	bless {host => $host}, $class;
}

sub host
{
	my $self = shift;
	return $self->{host};
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

sub start_clock
{
	my ($class, $tm) = @_;
	DPB::Core::Clock->start($tm);
}

package DPB::Job::Init;
our @ISA = qw(DPB::Job::Normal);
use DPB::Signature;

sub new
{
	my $class = shift;
	my $o = bless {name => "init"}, $class;
	DPB::Signature->add_tasks($o);
	return $o;
}

# if everything is okay, we mark our jobs as ready
sub finalize
{
	my ($self, $core) = @_;
	if ($self->{signature}->matches($core)) {
		for my $i (@{$core->{list}}) {
			$i->mark_ready;
		}
	}
}

# this is a weird one !
package DPB::Core::Factory;
our @ISA = qw(DPB::Core::WithJobs);
my $init = {};

sub new
{
	my ($class, $host, $prop) = @_;
	my $cloner;
	if ($host eq "localhost" or $host eq DPB::Core::Local->host) {
		$cloner = $init->{localhost} //= DPB::Core::Local->new_noreg($host, $prop);
	} else {
		require DPB::Core::Distant;
		$cloner = $init->{$host} //= DPB::Core::Distant->new_noreg($host, $prop);
	}
	my $o = ref($cloner)->new($host, $prop);
	push(@{$cloner->{list}}, $o);
	return $o;
}

sub init_cores
{
	for my $core (values %$init) {
		$core->start_job(DPB::Job::Init->new);
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
	return $core->job->name." [$core->{pid}] on ".$core->host.
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
		@available = sort {$b->{sf} <=> $a->{sf}} @available;
	}
	return shift @available;
}

my @all_cores = ();

sub all_sf
{
	my $l = [];
	for my $j (@all_cores) {
		next unless $j->is_alive;
		push(@$l, $j->{sf});
	}
	return [sort {$a <=> $b} @$l];
}

sub new
{
	my ($class, $host, $prop) = @_;
	my $o = $class->SUPER::new($host);
	$o->{sf} //= $prop->{sf};
	$o->{sf} //= 1;
	if (defined $prop->{memory}) {
		$o->{memory} = $prop->{memory};
	}
	push(@all_cores, $o);
	return $o;
}

sub new_noreg
{
	my ($class, $host, $prop) = @_;
	$class->SUPER::new($host);
}

my $has_sf = 0;

sub has_sf
{
	return $has_sf;
}

sub parse_hosts_file
{
	my ($class, $filename, $arch) = @_;
	open my $fh, '<', $filename or die "Can't read host files $filename\n";
	my $_;
	my $sf;
	my $cores = {};
	while (<$fh>) {
		chomp;
		s/\s*\#.*$//;
		next if m/^$/;
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
		$prop->{jobs} //= 1;
		if (defined $prop->{mem}) {
			$prop->{memory} = $prop->{mem};
		}
		$sf //= $prop->{sf};
		if (defined $prop->{sf} && $prop->{sf} != $sf) {
			$has_sf = 1;
		}
		for my $j (1 .. $prop->{jobs}) {
			DPB::Core::Factory->new($host, $prop);
	    	}
	}
	DPB::Core::Factory->init_cores;
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
sub host
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
