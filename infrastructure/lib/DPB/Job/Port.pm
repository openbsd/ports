# ex:ts=8 sw=4:
# $OpenBSD: Port.pm,v 1.10 2011/06/02 17:09:25 espie Exp $
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

use DPB::Job;
use DPB::Clock;
package DPB::Task::Port;
use OpenBSD::Paths;

our @ISA = qw(DPB::Task::Clocked);
sub new
{
	my ($class, $phase) = @_;
	bless {phase => $phase}, $class;
}

sub name
{
	my $self = shift;
	return $self->{phase};
}

sub fork
{
	my ($self, $core) = @_;

	$core->job->{current} = $self->{phase};
	return $self->SUPER::fork($core);
}

sub finalize
{
	my ($self, $core) = @_;
	$self->SUPER::finalize($core);
	$core->job->finished_task($self);
	return $core->{status} == 0;
}

sub run
{
	my ($self, $core) = @_;
	my $job = $core->job;
	my $t = $self->{phase};
	my $builder = $job->{builder};
	my $ports = $builder->{ports};
	my $fullpkgpath = $job->{v}->fullpkgpath;
	my $sudo = OpenBSD::Paths->sudo;
	my $shell = $core->{shell};
	$self->redirect($job->{log});
	if ($builder->{state}->opt('v')) {
		print ">>> Running $t in $fullpkgpath\n";
	}
	my @args = ($t, "TRUST_PACKAGES=Yes",
	    "FETCH_PACKAGES=No",
	    "REPORT_PROBLEM='exit 1'", "BULK=No");
	if ($job->{special}) {
		push(@args, "WRKOBJDIR=/tmp/ports");
	}
	if ($builder->{fetch}) {
		push(@args, "NO_CHECKSUM=Yes");
	}
	if (defined $shell) {
		unshift(@args, $shell->make);
		if ($self->{sudo}) {
			unshift(@args, $sudo, "-E");
		}
		$shell->run("cd $ports && SUBDIR=".
		    $fullpkgpath." ".join(' ', @args));
	} else {
		chdir($ports) or
		    die "Wrong ports tree $ports";
		$ENV{SUBDIR} = $fullpkgpath;
		if ($self->{sudo}) {
			exec {$sudo}("sudo", "-E", $builder->{make}, @args);
		} else {
			exec {$builder->{make}} ("make", @args);
		}
	}
	exit(1);
}

sub notime { 0 }

package DPB::Task::Port::NoTime;
our @ISA = qw(DPB::Task::Port);
sub notime { 1 }

package DPB::Task::Port::Signature;
our @ISA =qw(DPB::Task::Port::NoTime);

sub run
{
	my ($self, $core) = @_;
	my $job = $core->job;
	exit($job->{builder}->check_signature($core, $job->{v}));
}

sub finalize
{
	my ($self, $core) = @_;
	$self->SUPER::finalize($core);
	my $job = $core->job;
	if ($core->{status} == 0) {
		$job->add_normal_tasks;
	} else {
		$job->{signature_only} = 1;
	}
	return 1;
}

package DPB::Task::Port::Checksum;
our @ISA = qw(DPB::Task::Port);
sub run
{
	my ($self, $core) = @_;
	my $job = $core->job;
	$self->redirect($job->{log});
	my $exit = 0;
	for my $dist (values %{$job->{v}{info}{DIST}}) {
		if (!$dist->checksum($dist->filename)) {
			$exit = 1;
		}
	}
	exit($exit);
}

package DPB::Task::Port::Depends;
our @ISA=qw(DPB::Task::Port::NoTime);

sub run
{
	my ($self, $core) = @_;
	my $job = $core->job;
	my $dep = {};
	my $v = $job->{v};
	for my $kind (qw(BUILD_DEPENDS LIB_DEPENDS)) {
		if (exists $v->{info}{$kind}) {
			for my $d (values %{$v->{info}{$kind}}) {
				next if $d->{pkgpath} eq $v->{pkgpath};
				$dep->{$d->fullpkgname} = 1;
			}
		}
	}
	# recurse for extra stuff
	if (exists $v->{info}{EXTRA}) {
		for my $two (values %{$v->{info}{EXTRA}}) {
			for my $kind (qw(RUN_DEPENDS LIB_DEPENDS)) {
				if (exists $two->{info}{$kind}) {
					for my $d (values %{$two->{info}{$kind}}) {
						$dep->{$d->fullpkgname} = 1;
					}
				}
			}
		}
	}

	exit(0) unless %$dep;
	my $sudo = OpenBSD::Paths->sudo;
	my $shell = $core->{shell};
	$self->redirect($job->{log});
	my @cmd = ('/usr/sbin/pkg_add', '-a');
	if ($job->{builder}->{update}) {
		push(@cmd, "-rqU", "-Dupdate", "-Dupdatedepends");
	}
	if ($job->{builder}->{forceupdate}) {
		push(@cmd,  "-Dinstalled");
	}
	print join(' ', @cmd, (sort keys %$dep)), "\n";
	my $path = $job->{builder}->{fullrepo}.'/';
	if (defined $shell) {
		$shell->run(join(' ', "PKG_PATH=$path", $sudo, @cmd,
		    (sort keys %$dep)));
	} else {
		$ENV{PKG_PATH} = $path;
		exec{$sudo}($sudo, @cmd, sort keys %$dep);
	}
	exit(1);
}

sub finalize
{
	my ($self, $core) = @_;
	$self->SUPER::finalize($core);
	$core->{status} = 0;
	return 1;
}


package DPB::Task::Port::ShowSize;
our @ISA = qw(DPB::Task::Port);

sub fork
{
	my ($self, $core) = @_;
	$self->{sudo} = 1;
	open($self->{fh}, "-|");
}

sub redirect
{
	my ($self, $log) = @_;
}

sub finalize
{
	my ($self, $core) = @_;
	my $fh = $self->{fh};
	if ($core->{status} == 0) {
		my $line = <$fh>;
		$line = <$fh>;
		if ($line =~ m/^\s*(\d+)\s+/) {
			my $sz = $1;
			my $job = $core->job;
			$core->job->{wrkdir} = $sz;
		}
	}
	close($fh);
	return 1;
}
package DPB::Task::Port::ShowFakeSize;
our @ISA = qw(DPB::Task::Port::ShowSize);

sub finalize
{
	my ($self, $core) = @_;
	my $fh = $self->{fh};
	if ($core->{status} == 0) {
		my $line = <$fh>;
		$line = <$fh>;
		if ($line =~ m/^\s*(\d+)\s+/) {
			my $sz = $1;
			my $job = $core->job;
			my $f2 = $job->{builder}->{logger}->open("size");
			print $f2 $job->{v}->fullpkgpath, " $job->{wrkdir} $sz\n";
		}
	}
	close($fh);
	return 1;
}


package DPB::Task::Port::Fetch;
our @ISA = qw(DPB::Task::Port::NoTime);

sub finalize
{
	my ($self, $core) = @_;

	# if there's a watch file, then we remove the current size,
	# so that we DON'T take prepare into account.
	my $job = $core->job;
	if (defined $job->{watched}) {
		$job->{watched}->reset_offset;
	}
	$self->SUPER::finalize($core);
}

package DPB::Task::Port::Clean;
our @ISA = qw(DPB::Task::Port::NoTime);

sub finalize
{
	my ($self, $core) = @_;
	# didn't clean right, and no sudo yet:
	# run ourselves again (but log the problem)
	if ($core->{status} != 0 && !$self->{sudo}) {
		$self->{sudo} = 1;
		my $job = $core->job;
		unshift(@{$job->{tasks}}, $self);
		my $fh = $job->{builder}->{logger}->open("clean");
		print $fh $job->{v}->fullpkgpath, "\n";
		$core->{status} = 0;
		return 1;
	}
	$self->SUPER::finalize($core);
}

package DPB::Port::TaskFactory;
my $repo = {
	default => 'DPB::Task::Port',
	checksum => 'DPB::Task::Port::Checksum',
	clean => 'DPB::Task::Port::Clean',
	prepare => 'DPB::Task::Port::NoTime',
	fetch => 'DPB::Task::Port::Fetch',
	depends => 'DPB::Task::Port::Depends',
	'show-size' => 'DPB::Task::Port::ShowSize',
	'show-fake-size' => 'DPB::Task::Port::ShowFakeSize',
};

sub create
{
	my ($class, $k) = @_;
	my $fw = $repo->{$k};
	$fw //= $repo->{default};
	$fw->new($k);
}

package DPB::Job::Port;
our @ISA = qw(DPB::Job::Normal);

use Time::HiRes qw(time);

sub new
{
	my ($class, $log, $v, $builder, $special, $endcode) = @_;
	my $e;
	if ($builder->{rebuild}) {
		$e = sub { $builder->register_built($v); &$endcode; };
	} else {
		$e = $endcode;
	}
	my $job = bless {
	    tasks => [],
	    log => $log, v => $v,
	    special => $special,  current => '',
	    builder => $builder, endcode => $e},
		$class;

	if ($builder->{rebuild}) {
		push(@{$job->{tasks}}, 
		    DPB::Task::Port::Signature->new('signature'));
	} else {
		$job->add_normal_tasks;
	}
	return $job;
}

sub add_normal_tasks
{
	my $self = shift;

	my @todo;
	my $builder = $self->{builder};
	if ($builder->{clean}) {
		push @todo, "clean";
	}
	push(@todo, qw(depends prepare));
	if ($builder->{fetch}) {
		push(@todo, qw(checksum));
	} else {
		push(@todo, qw(fetch));
	}
	push(@todo, qw(patch configure build));
	if ($builder->{size}) {
		push @todo, 'show-size';
	}
	push(@todo, qw(fake package));
	if ($builder->{size}) {
		push @todo, 'show-fake-size';
	}
	push @todo, 'clean';
	$self->add_tasks(map {DPB::Port::TaskFactory->create($_)} @todo);
}

sub current_task
{
	my $self = shift;
	if (@{$self->{tasks}} > 0) {
		return $self->{tasks}[0]{phase};
	} else {
		return "<nothing>";
	}
}

sub pkgpath
{
	my $self = shift;
	return $self->{v};
}

sub name
{
	my $self = shift;
	return $self->{v}->fullpkgpath."(".$self->{task}->name.")";
}

sub finished_task
{
	my ($self, $task) = @_;
	push(@{$self->{done}}, $task);
}

sub finalize
{
	my $self = shift;
	if ($self->{stuck}) {
		open my $fh, ">>", $self->{log};
		print $fh $self->{stuck}, "\n";
	}
	$self->SUPER::finalize(@_);
}

sub totaltime
{
	my $self = shift;
	my $t = 0;
	for my $plus (@{$self->{done}}) {
		next if $plus->notime;
		$t += $plus->elapsed;
    	}
	return sprintf("%.2f", $t);
}

sub timings
{
	my $self = shift;
	return join('/', map {sprintf("%s=%.2f", $_->name, $_->elapsed)} @{$self->{done}});
}

my $logsize = {};

sub add_build_info
{
	my ($class, $pkgpath, $host, $time, $sz) = @_;
	$logsize->{$pkgpath} = $sz;
}

sub set_watch
{
	my ($self, $logger, $v) = @_;
	my $expected;
	for my $w ($logger->pathlist($v)) {
		if (defined $logsize->{$w}) {
			$expected = $logsize->{$w};
			last;
		}
	}
	$self->{watched} = DPB::Watch->new($logger->log_pkgpath($v),
	    $expected, $self->{offset}, $self->{started});
}

sub watched
{
	my ($self, $current, $core) = @_;
	return "" unless defined $self->{watched};
	my $diff = $self->{watched}->check_change($current);
	my $msg = $self->{watched}->change_message($diff);
	my $stuck = $core->stuck_timeout;
	if (defined $stuck) {
		if ($diff > $stuck) {
			$self->{stuck} = 
			    "KILLED: $self->{current} stuck at $msg";
			kill 9, $core->{pid};
			return $self->{stuck};
		}
	}
	return $msg;
}

sub really_watch
{
	my ($self, $current) = @_;
	return "" unless defined $self->{watched};
	my $diff = $self->{watched}->check_change($current);
	$self->{lastdiff} //= 5;
	if ($diff > $self->{lastdiff} * 2) {
		$self->{lastdiff} = $diff;
		return 1;
	} elsif ($diff < $self->{lastdiff}) {
		$self->{lastdiff} = 5;
	}
	return 0;
}
1;

