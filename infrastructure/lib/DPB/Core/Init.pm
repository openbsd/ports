# ex:ts=8 sw=4:
# $OpenBSD: Init.pm,v 1.3 2013/09/21 08:40:09 espie Exp $
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

# this is the code responsible for initializing all cores

package DPB::Task::Ncpu;
our @ISA = qw(DPB::Task::Pipe);
sub run
{
	my ($self, $core) = @_;
	$core->shell->exec(OpenBSD::Paths->sysctl, '-n', 'hw.ncpu');
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
our @ISA = qw(DPB::Job);
use DPB::Signature;

sub new
{
	my ($class, $logger) = @_;
	my $o = $class->SUPER::new('init');
	$o->{logger} = $logger;
	DPB::Signature->add_tasks($o);
	return $o;
}

# if everything is okay, we mark our jobs as ready
sub finalize
{
	my ($self, $core) = @_;
	$self->{signature}->print_out($core, $self->{logger});
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
package DPB::Core::Init;
our @ISA = qw(DPB::Core::WithJobs);
my $init = {};

sub new
{
	my ($class, $host, $prop) = @_;
	if (DPB::Host->name_is_localhost($host)) {
		$host = 'localhost';
	}
	return $init->{$host} //= DPB::Core->new_noreg($host, $prop);
}


sub init_cores
{
	my ($self, $state) = @_;

	my $logger = $state->logger;
	my $startup = $state->{startup_script};
	my $stale = $state->stalelocks;
	DPB::Core->set_logdir($logger->{logdir});
	for my $core (values %$init) {
		my $job = DPB::Job::Init->new($logger);
		if (!defined $core->prop->{jobs}) {
			$job->add_tasks(DPB::Task::Ncpu->new);
		}
		if (defined $startup) {
			my @args = split(/\s+/, $startup);
			$job->add_tasks(DPB::Task::Fork->new(
			    sub {
				my $shell = shift;
				DPB::Task->redirect($logger->logfile("init.".
				    $core->hostname));
				$shell
				    ->chdir($state->ports)
				    ->sudo
				    ->env(PORTSDIR => $state->ports,
				    	MAKE => $state->make)
				    ->exec(@args);
			    }
			));
		}
		if (defined $stale->{$core->hostname}) {
			my $subdirlist=join(' ', @{$stale->{$core->hostname}});
			$job->add_tasks(DPB::Task::Fork->new(
			    sub {
				my $shell = shift;
				DPB::Task->redirect($logger->logfile("init.".
				$core->hostname));
				$shell
				    ->chdir($state->ports)
				    ->env(SUBDIR => $subdirlist)
				    ->exec($state->make, 'unlock');
			    }
			));
		}
		$core->start_job($job);
	}
	if ($state->opt('f')) {
		for (1 .. $state->opt('f')) {
			DPB::Core::Fetcher->new('localhost', {})->mark_ready;
		}
	}
}

1;
