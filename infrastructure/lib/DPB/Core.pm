# ex:ts=8 sw=4:
# $OpenBSD: Core.pm,v 1.111 2023/08/14 13:52:07 espie Exp $
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
use DPB::Util;
use Time::HiRes;

# here, a "core" is an entity responsible for scheduling cpu, such as
# running a job, which is a collection of tasks.
#
# in DPB terms, to run something AND WAIT FOR IT in an asynchronous way,
# you must schedule it on a core, which gives you a process id that's
# registered
#
# the "abstract core" part only sees about registering/unregistering cores,
# and having a global event handler that gets run whenever possible.
package DPB::Core::Abstract;

use POSIX ":sys_wait_h";
use OpenBSD::Error;
use DPB::Util;
use DPB::Job;

# need to know which host are around for affinity purposes
my %allhosts;

sub matches_affinity($self, $v)
{
	my $hostname = $v->{affinity};
	# same host
	if ($self->hostname eq $hostname) {
		return 1;
	}
	# ... or host isn't around
	return 1 if !defined $allhosts{$hostname};
	# okay, try to avoid this
	return 0;
}

# note that we play dangerously, e.g., we only keep cores that are running
# something in there, the code can keep some others.
my ($running, $special) = ({}, {});
sub repositories($)
{
	return ($running, $special);
}

my @extra_stuff = ();

sub register_event($class, $code)
{
	push(@extra_stuff, $code);
}

sub handle_events($)
{
	for my $code (@extra_stuff) {
		&$code();
	}
}

sub is_alive($self)
{
	return $self->host->is_alive;
}

sub shell($self)
{
	if ($self->{user}) {
		return $self->host->shell->run_as($self->{user});
	} else {
		return $self->host->shell;
	}
}

sub new($class, $host)
{
	my $c = bless {host => $host}, $class;
	$allhosts{$c->hostname} = 1;
	return $c;
}

sub clone($self)
{
	my $c = ref($self)->new($self->host);
	return $c;
}

sub host($self)
{
	return $self->{host};
}

sub prop($self)
{
	return $self->host->{prop};
}

sub sf($self)
{
	return $self->prop->{sf};
}

sub stuck_timeout($self)
{
	return $self->prop->{stuck_timeout};
}

sub fetch_timeout($self)
{
	return $self->prop->{fetch_timeout};
}

sub memory($self)
{
	return $self->prop->{memory};
}

sub hostname($self)
{
	return $self->host->name;
}

sub lockname($self)
{
	return "host:".$self->hostname;
}

sub logname	# forwarder
{
	&hostname;
}

# This is so we can handle cores like pkgpaths and distfiles
# for reporting various errors
sub print_parent($, $)
{
	# Nothing to do
}

sub write_parent($, $)
{
	# Likewise
}




sub fullhostname($self)
{
	return $self->host->fullname;
}

sub register($self, $pid)
{
	$self->{pid} = $pid;
	$self->repository->{$self->{pid}} = $self;
}

sub unregister($self, $status)
{
	delete $self->repository->{$self->{pid}};
	delete $self->{pid};
	$self->{status} = $status;
	return $self;
}

sub terminate($self)
{
	if (defined $self->{pid}) {
		waitpid($self->{pid}, 0);
		$self->unregister($?);
		return $self;
    	} else {
		return undef;
	}
}

sub reap_kid($class, $kid = undef)
{
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

sub reap($class)
{
	my $reaped = 0;
	$class->handle_events;
	$reaped++ while $class->reap_kid(waitpid(-1, WNOHANG)) > 0;
	return $reaped;
}

sub reap_wait($class)
{

	return $class->reap_kid(waitpid(-1, 0));
}

sub dump($c)
{
	return join(' ', $c->{pid}, ref($c), 
	    ref($c->job), $c->job->name);
}


sub kill($core, $sig, $pid = $core->{pid})
{
	kill $sig => -$pid;
	kill $sig => $pid;
}

sub send_signal($class, $sig, $h, $verbose)
{
	while (my ($pid, $core) = each %$h) {
		print STDERR "Sending $sig to pg ".$core->dump, "\n"
		    if $verbose;
		$core->kill($sig, $pid);
	}
}

sub wait_for_kill($class, $h, $verbose)
{
	for (my $i = 0; $i < 4;) {
		my $kid = waitpid(-1, WNOHANG);
		if ($kid > 0) {
			my $info = "";
			if (exists $h->{$kid}) {
				$info = $h->{$kid}->dump;
				delete $h->{$kid};
			}
			print STDERR "Killed $kid $? $info\n" if $verbose;
		} elsif ($kid == -1) {
			return 1;
		} else {
			print STDERR "Waiting for children to quit\n";
			sleep 5;
			$i++;
		}
    	}
	return 0;
}

sub cleanup($class, $sig = 'INT', $verbose = 0)
{
	local $> = 0;
	
	# collate repos together
	my $h = {};
	for my $repo ($class->repositories) {
		while (my ($k, $v) = each %$repo) {
			$h->{$k} = $v;
		}
	}
	$class->send_signal($sig, $h, $verbose);

	return if $class->wait_for_kill($h, $verbose);
	return if keys %$h == 0;
	if ($verbose) {
		for my $pid (keys %$h) {
			system {'ps'} ('ps', '-p', $pid, '-o', 
			    'pid,ppid,uid,gid,pgid,command');
		}
	}
	print STDERR "Sending KILL to remaining children\n";
	$class->send_signal('KILL', $h, $verbose);
	$class->wait_for_kill($h, $verbose);
	if (keys %$h > 0) {
		print STDERR "Some children still alive, giving up\n";
	}
}

sub wipehost($class, $h)
{
	my @pids;
	my $r = $class->repository;
	$class->walk_host_jobs($h, 
	    sub($pid, $job) {
		push @pids, $pid;
	    });
	for my $pid (@pids) { 
		local $> = 0;
		$class->kill('KILL', $pid);
		delete $r->{$pid};
	}
}

sub debug_dump($self)
{
	return $self->hostname;
}

# TODO for now handlers *may* be called with a signal or nothing
# I'm revamping it so they always get either a signal OR undef
OpenBSD::Handler->register( sub(@) { __PACKAGE__->cleanup });

# this is a core that can run jobs
package DPB::Core::WithJobs;
our @ISA = qw(DPB::Core::Abstract);

sub fh($self)
{
	return $self->task->{fh};
}

sub job($self)
{
	return $self->{job};
}

sub debug_dump($self)
{
	return join(':',$self->hostname, $self->job->debug_dump);
}

sub task($self)
{
	return $self->job->{task};
}

sub terminate($self)
{
	$self->task->end  if $self->task;
	if ($self->SUPER::terminate) {
		$self->job->finalize($self);
	}
}

sub run_task($core)
{
	my $pid = $core->task->fork($core);
	if (!defined $pid) {
		DPB::Util->die_bang("Oops: task ".$core->task->name." couldn't start");
	} elsif ($pid == 0) {
		$core->job->cleanup_after_fork;
		if (!$core->task->run($core)) {
			exit(1);
		}
		exit(0);
	} else {
		$core->task->process($core);
		$core->register($pid);
	}
}

sub continue($core)
{
	if ($core->task->finalize($core)) {
		return $core->start_task;
	} else {
		return $core->job->finalize($core);
	}
}

sub start_task($core)
{
	my $task = $core->job->next_task($core);
	$core->job->{task} = $task;
	if (defined $task) {
		return $core->run_task;
	} else {
		return $core->job->finalize($core);
	}
}

sub mark_ready($self)
{
	if ($self->{pid}) {
		require Data::Dumper;
		#print Data::Dumper::Dumper($self), "\n";
		DPB::Util->die("Marking ready an incomplete process");
	}
	delete $self->{job};
	return $self;
}

sub start_job($core, $job)
{
	$core->{job} = $job;
	$core->{started} = Time::HiRes::time();
	$core->{status} = 0;
	$core->start_task;
}

sub success($self)
{
	$self->host->{consecutive_failures} = 0;
}

sub failure($self)
{
	$self->host->{consecutive_failures}++;
}

sub start_clock($class, $tm)
{
	DPB::Core::Clock->start($tm);
}

sub details_at($core, $time)
{
	my $hostname = $core->hostname;

	my $s = $core->job->description;
    	if ($core->{squiggle}) {
		$s = '~'.$s;
	}
	if (defined $core->{swallowed}) {
		$s = (scalar(@{$core->{swallowed}})+1).'*'.$s;
	}
	if ($core->{inmem}) {
		$s .= '+';
	}
	$s .= " [$core->{pid}]";
	if (!DPB::Host->name_is_localhost($hostname)) {
		$s .= " on ".$hostname;
	}
	$s .= $core->job->watched($time, $core);
    	return $s;
}

package DPB::Core;
our @ISA = qw(DPB::Core::WithJobs);

my $available = [];

# used to remove cores from the build
my %stopped = ();

my $logdir;
my $lastcount = 0;

sub stats($class, $fh, $state)
{
	$fh->print("Available:\n");
	for my $c (@$available) {
		$fh->print("  ", $c->hostname, "\n");
	}
	my $msg = "Running";
	my $current = Time::HiRes::time();
	for my $repo ($class->repositories) {
		$fh->print("$msg:\n");
		while (my ($k, $c) = each %$repo) {
			$fh->print("  ", $c->details_at($current), "\n");
		}
		$msg = "Special";
	}
}

sub log_concurrency($class, $time, $fh)
{
	my $j = 0;
	while (my ($k, $c) = each %{$class->repository}) {
		$j++;
		if (defined $c->{swallow}) {
			$j += $c->{swallow};
		}
		if (defined $c->{swallowed}) {
			$j += scalar(@{$c->{swallowed}});
		}
	}
	if ($j != $lastcount) {
		print $fh "$$ $time $j\n";
		$lastcount = $j;
	}
}

sub set_logdir($, $l)
{
	$logdir = $l;
}

sub is_local($self)
{
	return $self->host->is_localhost;
}

my @extra_report_tty = ();
my @extra_report_notty = ();
sub register_report($self, $code, $c2)
{
	push (@extra_report_tty, $code);
	push (@extra_report_notty, $c2);
}

sub repository($)
{
	return $running;
}


sub walk_host_jobs($self, $h, $sub)
{
	while (my ($pid, $core) = each %{$self->repository}) {
		next if $core->hostname ne $h;
		# XXX only interested in "real" jobs now
		next if !defined $core->job->{v};
		&$sub($pid, $core->job);
	}
}

sub walk_same_host_jobs($self, $sub)
{
	return $self->walk_host_jobs($self->hostname, $sub);
}

sub same_host_jobs($self)
{
	my @jobs = ();
	$self->walk_same_host_jobs(
	    sub($pid, $job) {
		push(@jobs, $job);
	    });
	return @jobs;
}

sub status($self, $v)
{
	for my $pid (keys %{$self->repository}) {
		my $core = $self->repository->{$pid};
		next if !defined $core->job->{v};
		if ($core->job->{v} == $v) {
			return "building on ".$core->hostname;
		}
	}
	return undef;
}

sub wake_jobs($self)
{
	my ($alarm, $sleepin);
	for my $core (values %{$self->repository}) {
		next if !defined $core->job->{v};
		if ($core->job->{wakemeup}) {
			$alarm->{$core->hostname} = $core;
		}
		if ($core->job->{locked}) {
			$sleepin->{$core->hostname} = 1;
		}
	}
	while (my ($host, $core) = each %$alarm) {
		next if $sleepin->{$host};
		$core->job->wake_others($core);
	}
}

sub report_tty($, $)
{
	my $current = Time::HiRes::time();

	my $s = join("\n", map {$_->details_at($current)} sort {$a->{started} <=> $b->{started}} values %$running). "\n";
	for my $a (@extra_report_tty) {
		$s .= &$a();
	}
	return $s;
}

sub report_notty($, $)
{
	my $current = Time::HiRes::time();
	my $s = '';
	for my $j (values %$running) {
		if ($j->job->really_watch($current)) {
			$s .= $j->details_at($current)."\n";
		}
	}

	for my $a (@extra_report_notty) {
		$s .= &$a();
	}
	return $s;
}

sub mark_ready($self)
{
	$self->SUPER::mark_ready;
	$self->mark_available($self);
	return $self;
}

sub avail($self, $hostname = undef)
{
	for my $h (keys %stopped) {
		if (!-e "$logdir/stop-$h") {
			$self->mark_available(@{$stopped{$h}});
			delete $stopped{$h};
		}
	}
	if (defined $hostname) {
		return scalar(grep {$_->hostname eq $hostname} 
		    @{$self->available});
	} else {
		return scalar(@{$self->available});
	}
}

sub stopped($, $host)
{
	return $stopped{$host};
}

sub available($)
{
	return $available;
}

sub can_swallow($core, $n)
{
	$core->{swallow} = $n;
	$core->{swallowed} = [];
	$core->{realjobs} = $n+1;
	$core->host->{swallow}{$core} = $core;

	# try to reswallow freed things right away.
	if (@$available > 0) {
		my @l = @$available;
		$available = [];
		$core->mark_available(@l);
	}
}

sub unswallow($self)
{
	return unless defined $self->{swallowed};
	my $l = $self->{swallowed};

	# first prevent the recursive call from taking us into
	# account
	delete $self->{swallowed};
	delete $self->host->{swallow}{$self};
	delete $self->{swallow};
	delete $self->{realjobs};

	# then free up our swallowed jobs
	$self->mark_available(@$l);
}

sub mark_available($self, @cores)
{
	LOOP: for my $core (@cores) {
		# okay, if this core swallowed stuff, then we release 
		# the swallowed stuff first
		$core->unswallow;

		# if this host has cores that swallow things, let us 
		# be swallowed
		if ($core->can_be_swallowed) {
			for my $c (values %{$core->host->{swallow}}) {
				$core->unsquiggle;
				push(@{$c->{swallowed}}, $core);
				if (--$c->{swallow} == 0) {
					delete $core->host->{swallow}{$c};
				}
				next LOOP;
			}
		}
		my $hostname = $core->hostname;
		if (-e "$logdir/stop-$hostname") {
			push(@{$stopped{$hostname}}, $core);
		} else {
			push(@{$self->available}, $core);
		}
	}
}

sub running($)
{
	return scalar(%$running);
}

sub get($self, $hostname = undef)
{
	$a = $self->available;
	if (@$a > 1) {
		if (DPB::HostProperties->has_sf) {
			@$a = sort {$b->sf <=> $a->sf} @$a;
		} else {
			my %cores;
			for my $c (@$a) {
				$cores{$c->hostname}++;
			}
			@$a = sort {$cores{$b->hostname} <=> $cores{$a->hostname}} @$a;
		}
	}
	if (defined $hostname) {
		@$a = ((grep {$_->hostname eq $hostname} @$a),
		    (grep {$_->hostname ne $hostname} @$a));
	}
	my $core = shift @$a;
	if ($core->may_unsquiggle) {
		return $core;
	}
	if (!$core->{squiggle} && $core->host->{wantsquiggles}) {
		if ($core->host->{wantsquiggles} < 1) {
			if (rand() <= $core->host->{wantsquiggles}) {
				$core->{squiggle} = $core->host->{wantsquiggles};
				$core->host->{wantsquiggles} = 0;
			}
		} else {
			$core->host->{wantsquiggles}--;
			$core->{squiggle} = 1;
		}
	}
	return $core;
}

sub can_be_swallowed($core)
{
	return defined $core->host->{swallow};
}

sub may_unsquiggle($core)
{
	if ($core->{squiggle} && $core->{squiggle} < 1) {
		if (rand() >= $core->{squiggle}) {
			$core->unsquiggle;
			return 1;
		}
	}
	return 0;
}

sub unsquiggle($core)
{
	if ($core->{squiggle}) {
		$core->host->{wantsquiggles} += $core->{squiggle};
		delete $core->{squiggle};
	}
	return $core;
}

sub get_affinity($self, $v)
{
	my $host = $v->{affinity};
	my $l = [];
	while (@$available > 0) {
		my $core = shift @$available;
		if ($core->hostname eq $host) {
			push(@$available, @$l);
			return $core;
		}
		push(@$l, $core);
	}
	$available = $l;
	return undef
}

sub get_compatible($self, $v)
{
	my $l = [];
	while (@$available > 0) {
		my $core = shift @$available;
		if (!$core->prop->taint_incompatible($v)) {
			push(@$available, @$l);
			return $core;
		}
		push(@$l, $core);
	}
	$available = $l;
	return undef
}

my @all_cores = ();

sub all_sf($)
{
	my $l = [];
	for my $j (@all_cores) {
		next unless $j->is_alive;
		push(@$l, $j->sf);
	}
	return [sort {$a <=> $b} @$l];
}

sub new($class, $host)
{
	my $o = $class->SUPER::new($host);
	push(@all_cores, $o);
	return $o;
}

sub new_noreg($class, $host)
{
	$class->SUPER::new($host);
}

sub start_pipe($self, $code, $name)
{
	$self->start_job(DPB::Job::Pipe->new($code, $name));
}

package DPB::Core::Special;
our @ISA = qw(DPB::Core::WithJobs);
sub repository($)
{
	return $special;
}

package DPB::Core::Local;
our @ISA = qw(DPB::Core);

my ($host, $shorthost);
sub hostname($)
{
	if (!defined $host) {
		chomp($host = `hostname`);
		$shorthost = $host;
		$shorthost =~ s/\..*//;
	}
	return $host;
}

sub short_hostname($class)
{
	$class->hostname;
	return $shorthost;
}

package DPB::Core::Fetcher;
our @ISA = qw(DPB::Core::Local);

my $fetchcores = [];

sub available($)
{
	return $fetchcores;
}

sub may_unsquiggle($)
{
	return 1;
}

sub can_be_swallowed($)
{
	return 0;
}

sub new($class, $host)
{
	my $c = $class->SUPER::new($host);
	$c->{user} = $c->prop->{fetch_user};
	return $c;
}

package DPB::Core::Clock;
our @ISA = qw(DPB::Core::Special);

sub start($class, $reporter)
{
	my $core = $class->new(DPB::Host->new('localhost'));
	$core->start_job(DPB::Job::Infinite->new(DPB::Task::Fork->new(sub($) {
		sleep($reporter->timeout);
		exit(0);
		}), 'clock'));
}

1;
