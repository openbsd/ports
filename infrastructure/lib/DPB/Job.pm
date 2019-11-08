# ex:ts=8 sw=4:
# $OpenBSD: Job.pm,v 1.20 2019/11/08 17:47:01 espie Exp $
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
use DPB::Util;

# a "job" is the actual stuff a core runs at some point.
# it's mostly an abstract class here... it's organized
# as a list of tasks, with a finalization routine

package DPB::Task;
# this is used to gc resources from a task (pipes for instance)
sub end
{
}

sub code
{
	my $self = shift;
	return $self->{code};
}

# no name by default, just display the object
sub name
{
	return shift;
}

sub new
{
	my ($class, $code) = @_;
	return bless {code => $code}, $class;
}

# TODO this should probably be called exec since we're after the fork
sub run
{
	my ($self, $core) = @_;
	&{$self->code($core)}($core->shell);
}

# this is a placeholder in the parent when the task starts
# TODO gc ? this isn't actually used
sub process
{
	my ($self, $core) = @_;
}

sub finalize
{
	my ($self, $core) = @_;
	return $core->{status} == 0;
}

sub redirect_fh
{
	my ($self, $fh, $log) = @_;
	close STDOUT;
	open STDOUT, '>&', $fh or DPB::Util->die_bang("Can't write to $log");
	close STDERR;
	open STDERR, '>&STDOUT' or DPB::Util->die_bang("bad redirect");
}

package DPB::Task::Pipe;
our @ISA =qw(DPB::Task);

sub fork
{
	my $self = shift;
	open($self->{fh}, "-|");
}

sub end
{
	my $self = shift;
	close($self->{fh});
}


package DPB::Task::Fork;
our @ISA =qw(DPB::Task);
sub fork
{
	CORE::fork();
}

package DPB::Job;
sub next_task
{
	my ($self, $core) = @_;
	return shift @{$self->{tasks}};
}

sub name
{
	my $self = shift;
	return $self->{name};
}

sub debug_dump
{
	my $self = shift;
	return $self->{name};
}

sub finalize
{
}

sub watched
{
	my $self = shift;
	return $self->{status};
}

sub add_tasks
{
	my ($self, @tasks) = @_;
	push(@{$self->{tasks}}, @tasks);
}

sub replace_tasks
{
	my ($self, @tasks) = @_;
	$self->{tasks} = [];
	push(@{$self->{tasks}}, @tasks);
}

sub insert_tasks
{
	my ($self, @tasks) = @_;
	unshift(@{$self->{tasks}}, @tasks);
}

sub really_watch
{
}

sub new
{
	my ($class, $name) = @_;
	return bless {name => $name, status => ""}, $class;
}

sub set_status
{
	my ($self, $status) = @_;
	$self->{status} = $status;
}

sub cleanup_after_fork
{
        my $self = shift;
        $DB::inhibit_exit = 0;
        for my $sig (keys %SIG) {
                $SIG{$sig} = 'DEFAULT';
        }
}

package DPB::Job::Normal;
our @ISA =qw(DPB::Job);

sub new
{
	my ($class, $code, $endcode, $name) = @_;
	my $o = $class->SUPER::new($name);
	$o->{tasks} = [DPB::Task::Fork->new($code)];
	$o->{endcode} = $endcode;
	return $o;
}

sub finalize
{
	my $self = shift;
	&{$self->{endcode}}(@_);
}

# the common stuff for jobs that have a kind of watch log, e.g.,
# either fetch jobs or build jobs

package DPB::Job::Watched;
our @ISA =qw(DPB::Job::Normal);

sub kill_on_timeout
{
	my ($self, $diff, $core, $msg) = @_;
	my $to = $self->get_timeout($core);
	return $msg if !defined $to || $diff <= $to;
	local $> = 0;	# XXX switch to root, we don't know for sure which
			# user owns the pid (not really an issue)
	$core->kill(9);
	return $self->{stuck} = "KILLED: ".$self->killinfo." stuck at $msg";
}

sub killinfo
{
	my $self = shift;
	return $self->{current};
}

sub watched
{
	my ($self, $current, $core) = @_;
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
sub next_task
{
	my $job = shift;
	return $job->{task};
}

sub new
{
	my ($class, $task, $name) = @_;
	my $o = $class->SUPER::new($name);
	$o->{task} = $task;
	return $o;
}

package DPB::Job::Pipe;
our @ISA = qw(DPB::Job);
sub new
{
	my ($class, $code, $name) = @_;
	my $o = $class->SUPER::new($name);
	$o->{tasks} = [DPB::Task::Pipe->new($code)];
	return $o;
}

1;
