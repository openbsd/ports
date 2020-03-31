# ex:ts=8 sw=4:
# $OpenBSD: Init.pm,v 1.47 2020/03/31 11:11:36 espie Exp $
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

# this is the code responsible for initializing all cores

package DPB::Task::Ncpu;
our @ISA = qw(DPB::Task::Pipe);
sub run
{
	my ($self, $core) = @_;
	$core->shell->exec(OpenBSD::Paths->sysctl, '-n', 'hw.ncpuonline');
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
	return $core->{status} == 0;
}

package DPB::Task::WhoAmI;
our @ISA = qw(DPB::Task::Pipe);
sub run
{
	my ($self, $core) = @_;
	$core->shell->nochroot->exec('/usr/bin/whoami');
}

sub finalize
{
	my ($self, $core) = @_;
	my $fh = $self->{fh};
	if ($core->{status} == 0) {
		my $line = <$fh>;
		chomp $line;
		if ($line =~ m/^root$/) {
			$core->prop->{iamroot} = 1;
		} 
		&{$self->{extra_code}};
	}
	close($fh);
	return $core->{status} == 0;
}

package DPB::Job::Init;
our @ISA = qw(DPB::Job);
use DPB::Signature;

sub new
{
	my ($class, $logger) = @_;
	my $o = $class->SUPER::new('init');
	$o->{logger} = $logger;
	return $o;
}

# if everything is okay, we mark our jobs as ready
sub finalize
{
	my ($self, $core) = @_;

	if ($core->{status} != 0) {
		return 0;
	}

	my $prop = $core->prop;
	$prop->{jobs} //= 1;
	$prop->{parallel2} //= $prop->{parallel};
	for my $p (qw(parallel parallel2)) {
		if ($prop->{$p} =~ m/^\/(\d+)$/) {
			if ($prop->{jobs} == 1) {
				$prop->{$p} = 0;
			} else {
				$prop->{$p} = int($prop->{jobs}/$1);
				if ($prop->{$p} < 2) {
					$prop->{$p} = 2;
				}
			}
		}
	}
	if (defined $self->{signature}) {
		$self->{signature}->print_out($core, $self->{logger});
		if (!$self->{signature}->matches($core, $self->{logger})) {
			return 0;
		}
	}
	if (defined $prop->{squiggles}) {
		$core->host->{wantsquiggles} = $prop->{squiggles};
	} elsif ($prop->{jobs} > 3) {
		$core->host->{wantsquiggles} = 1;
	} elsif ($prop->{jobs} > 1) {
		$core->host->{wantsquiggles} = 0.8;
	}
	for my $i (1 .. $prop->{jobs}) {
		$core->clone->mark_ready;
	}
	return 1;
}

# this is a weird one !
package DPB::Core::Init;
our @ISA = qw(DPB::Core::WithJobs);
my $init = {};

sub new
{
	my ($class, $host) = @_;
	return $init->{$host->name} //= $host->new_init_core;
}

sub hostcount
{
	return scalar(keys %$init);
}

sub taint
{
	my ($class, $host, $tag, $source) = @_;
	if (defined $init->{$host}) {
		$init->{$host}->prop->{tainted} = $tag;
		$init->{$host}->prop->{tainted_source} = $source;
	}
}


sub alive_hosts
{
	my @l = ();
	while (my ($host, $c) = each %$init) {
		if (defined $c->prop->{tainted}) {
			$host = "$host(".$c->prop->{tainted}.")";
		}
		if ($c->is_alive) {
			push(@l, $host.$c->shell->stringize_master_pid);
		} else {
			push(@l, $c->prop->{socket}.'-');
		}
	}
	return "Hosts: ".join(' ', sort(@l))."\n";
}

sub changed_hosts
{
	my @l = ();
	while (my ($host, $c) = each %$init) {
		my $was_alive = $c->{is_alive};
		if ($c->is_alive) {
			$c->{is_alive} = 1;
		} else {
			$c->{is_alive} = 0;
		}
		if ($was_alive && !$c->{is_alive}) {
			push(@l, "$host went down\n");
		} elsif (!$was_alive && $c->{is_alive}) {
			push(@l, "$host came up\n");
		}
	}
	return join('', sort(@l));
}

DPB::Core->register_report(\&alive_hosts, \&changed_hosts);

sub cores
{
	return values %$init;
}

sub add_startup
{
	my ($self, $core, $state, $logger, $job, @startup) = @_;
	my $fetch = $state->{fetch_user};
	my $prop = $core->prop;
	my $build = $prop->{build_user};

	$job->add_tasks(DPB::Task::Fork->new(
	    sub {
		my $shell = shift;
		$logger->redirect($logger->logfile("init.".$core->hostname));
		$shell
		    ->chdir($state->ports)
		    ->as_root
		    ->env(PORTSDIR => $state->ports,
			MAKE => $state->make,
			WRKOBJDIR => $prop->{wrkobjdir},
			LOCKDIR => $prop->{portslockdir},
			BUILD_USER => $build->{user},
			BUILD_GROUP => $build->{group},
			FETCH_USER => $fetch->{user},
			FETCH_GROUP => $fetch->{group})
		    ->exec(@startup);
	    }
	));
}

sub init_core
{
	my ($self, $core, $state) = @_;
	my $logger = $state->logger;
	my $startup = $state->{startup_script};
	my $stale = $state->stalelocks;
	if (defined $core->prop->{socket}) {
		my $fh = $logger->open('>>',
		    $logger->logfile("init.".$core->hostname));
		print {$fh} "Socket name: ", 
		    $core->prop->{socket}, "\n";
	}
	my $job = DPB::Job::Init->new($logger);
	my $t = DPB::Task::WhoAmI->new;
	# XXX can't get these before I know who I am
	$t->{extra_code} = sub {
	    my $prop = $core->prop;
	    ($prop->{wrkobjdir}, $prop->{portslockdir}) = 
		DPB::Vars->get($core->shell, $state, 
		"WRKOBJDIR", "LOCKDIR");
	};
	$job->add_tasks($t);
	if (!defined $core->prop->{jobs}) {
		$job->add_tasks(DPB::Task::Ncpu->new);
	}
	if (!$state->{fetch_only}) {
		$job->{signature} = DPB::Signature->new($state);
		$job->{signature}->add_tasks($job);
	}
	if (defined $startup) {
		$self->add_startup($core, $state, $logger, $job, 
		    split(/\s+/, $startup));
	}

	my $tag = $state->locker->find_tag($core->hostname);
	if (defined $tag) {
		$core->prop->{tainted} = $tag;
	}
	if (defined $stale->{$core->hostname}) {
		my $subdirlist=join(' ', @{$stale->{$core->hostname}});
		$job->add_tasks(DPB::Task::Fork->new(
		    sub {
			my $shell = shift;
			$logger->redirect( 
			    $logger->logfile("init.".$core->hostname));
			$shell
			    ->env(SUBDIR => $subdirlist)
			    ->exec($state->make_args, 'unlock');
		    }
		));
	}
	$core->start_job($job);
}

sub init_cores
{
	my ($self, $state) = @_;

	DPB::Core->set_logdir($state->logger->{logdir});
	if (values %$init == 0) {
		$state->fatal("configuration error: no job runner");
	}
	for my $core (values %$init) {
		$self->init_core($core, $state);
	}
	$state->{default_prop}{fetch_user} //= $state->{fetch_user};
	if ($state->opt('f')) {
		$state->{fetch_user}->enforce_local;
		for (1 .. $state->opt('f')) {
			DPB::Core::Fetcher->new(DPB::Host->fetch_host(
			    $state->{default_prop}))->mark_ready;
		}
	}
}

1;
