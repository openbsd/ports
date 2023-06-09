# ex:ts=8 sw=4:
# $OpenBSD: Job.pm,v 1.26 2023/06/09 11:17:20 espie Exp $
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

# a "job" is the actual stuff a core runs at some point.
# it's mostly an abstract class here... it's organized
# as a list of tasks, with a finalization routine

package DPB::Task;
# this is used to gc resources from a task (pipes for instance)
sub end($)
{
}

# $self->code($core):
#	the code to run may depend on the core !
sub code($self, $)
{
	return $self->{code};
}

# no name by default, so this will return undef unless explicitly overriden.
sub name($self)
{
	return $self->{name};
}

# XXX some tasks do not need actual code to run
# Those tasks will override run obviously
sub new($class, $code = undef)
{
	return bless {code => $code}, $class;
}

# TODO this should probably be called exec since we're after the fork
# calls the code we're supposed to run, passing it "the shell" that runs it
# (the shell class is responsible for cd'ing and exec'ing external programs
# if need be, handling users, chroot, on localhost and distant boxes)
sub run($self, $core)
{
	&{$self->code($core)}($core->shell);
}

# one single user so far: DPB::Signature::Task
# $self->process($core)
sub process($, $)
{
}

# $self->finalize($core):
#	returns true if the task succeeded
sub finalize($, $core)
{
	return $core->{status} == 0;
}

# $self->redirect_fh($fh, $log):
#	redirects output to an opened $fh corresponding to a given $log.
#	we don't reopen $log ourselves for efficiency reasons, and also
#	because we may not have the right permissions thanks to privsep
sub redirect_fh($, $fh, $log)
{
	close STDOUT;
	open STDOUT, '>&', $fh or DPB::Util->die_bang("Can't write to $log");
	close STDERR;
	open STDERR, '>&STDOUT' or DPB::Util->die_bang("bad redirect");
}

package DPB::Task::Pipe;
our @ISA =qw(DPB::Task);

# $self->fork($core)
sub fork($self, $)
{
	open($self->{fh}, "-|");
}

sub end($self)
{
	close($self->{fh});
}

package DPB::Task::Fork;
our @ISA =qw(DPB::Task);
sub fork($, $)
{
	CORE::fork();
}

package DPB::Job;

# $self->next_task($core):
#	in some cases, we may need to repeat a task, or add intermediate
#	tasks, so this needs to be a method
sub next_task($self, $)
{
	return shift @{$self->{tasks}};
}

sub name($self)
{
	return $self->{name};
}

sub debug_dump($self)
{
	return $self->{name};
}

sub description($self)
{
	my $d = $self->name;
	if (defined $self->{task}) {
		my $extra = $self->{task}->name;
		if (defined $extra) {
			$d .= "($extra)";
		}
	}
	return $d;
}

sub finalize($, $)
{
}

# $self->watched($current, $core)
sub watched($self, $, $)
{
	return $self->{status};		# XXX why ?
}

sub add_tasks($self, @tasks)
{
	push(@{$self->{tasks}}, @tasks);
}

sub replace_tasks($self, @tasks)
{
	$self->{tasks} = [];
	push(@{$self->{tasks}}, @tasks);
}

sub insert_tasks($self, @tasks)
{
	unshift(@{$self->{tasks}}, @tasks);
}

# $self->really_watch($current)
sub really_watch($, $)
{
}

sub new($class, $name)
{
	return bless {name => $name, status => ""}, $class;
}

sub set_status($self, $status)
{
	$self->{status} = $status;
}

sub cleanup_after_fork($self)
{
        $DB::inhibit_exit = 0;
        for my $sig (keys %SIG) {
                $SIG{$sig} = 'DEFAULT';
        }
}

package DPB::Job::Normal;
our @ISA =qw(DPB::Job);

sub new($class, $code, $endcode, $name)
{
	my $o = $class->SUPER::new($name);
	$o->{tasks} = [DPB::Task::Fork->new($code)];
	$o->{endcode} = $endcode;
	return $o;
}

sub finalize($self, $core)
{
	&{$self->{endcode}}($core);
}

# the common stuff for jobs that have a kind of watch log, e.g.,
# either fetch jobs or build jobs

package DPB::Job::Watched;
our @ISA =qw(DPB::Job::Normal);

sub kill_on_timeout($self, $diff, $core, $msg)
{
	my $to = $self->get_timeout($core);
	return $msg if !defined $to || $diff <= $to;
	local $> = 0;	# XXX switch to root, we don't know for sure which
			# user owns the pid (not really an issue)
	$core->kill(9);
	return $self->{stuck} = "KILLED: ".$self->description." stuck at $msg";
}

sub watched($self, $current, $core)
{
	my $w = $self->{watched};
	return "" unless defined $w;
	my $diff = $w->check_change($current);
	my $msg = '';
	if ($self->{task}->want_percent) {
		$msg .= $w->percent_message;
	}
	if ($self->{task}->want_frozen) {
		return $self->kill_on_timeout($diff, $core, 
		    $msg.$w->frozen_message($diff));
	} else {
		return $msg;
	}
}

package DPB::Job::Infinite;
our @ISA = qw(DPB::Job);
sub next_task($job, $core)
{
	return $job->{task};
}

sub new($class, $task, $name)
{
	my $o = $class->SUPER::new($name);
	$o->{task} = $task;
	return $o;
}

package DPB::Job::Pipe;
our @ISA = qw(DPB::Job);
sub new($class, $code, $name)
{
	my $o = $class->SUPER::new($name);
	$o->{tasks} = [DPB::Task::Pipe->new($code)];
	return $o;
}

1;
