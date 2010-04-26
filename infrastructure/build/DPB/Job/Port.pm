# ex:ts=8 sw=4:
# $OpenBSD: Port.pm,v 1.16 2010/04/26 08:32:53 espie Exp $
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
package DPB::Task::Port;
use Time::HiRes qw(time);
use OpenBSD::Paths;

our @ISA = qw(DPB::Task::Fork);
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

	my $job = $core->job;
	$self->{started} = time();
	DPB::Clock->register($self);
	$job->{current} = $self->{phase};
	return $self->SUPER::fork($core);
}

sub finalize
{
	my ($self, $core) = @_;
	$self->{ended} = time();
	DPB::Clock->unregister($self);
	$core->job->finished_task($self);
	return $core->{status} == 0;
}

sub elapsed
{
	my $self = shift;
	return $self->{ended} - $self->{started};
}

sub stopped_clock
{
	my ($self, $gap) = @_;
	$self->{started} += $gap;
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
	my @args = ($t, "TRUST_PACKAGES=Yes",
	    "REPORT_PROBLEM='exit 1'", "BULK=No");
	if ($job->{special}) {
		push(@args, "WRKOBJDIR=/tmp/ports");
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

package DPB::Task::Port::Depends;
our @ISA=qw(DPB::Task::Port::NoTime);

sub run
{
	my ($self, $core) = @_;
	my $job = $core->job;
	my $dep = {};
	my $v = $job->{v};
	my $base = $v->{pkgpath};
	for my $kind (qw(BUILD_DEPENDS LIB_DEPENDS)) {
		if (exists $v->{info}{$kind}) {
			for my $d (values %{$v->{info}{$kind}}) {
				next if $d->{pkgpath} eq $v;
				$dep->{$d->fullpkgname} = 1;
			}
		}
	}
	exit(0) unless %$dep;
	my $sudo = OpenBSD::Paths->sudo;
	my $shell = $core->{shell};
	$self->redirect($job->{log});
	my @cmd = ('/usr/sbin/pkg_add');
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
		my $sz = (stat $job->{watched})[7];
		if (defined $sz) {
			$job->{offset} = $sz;
		}
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
	my @todo;
	if ($builder->{clean}) {
		push @todo, "clean";
	}
	push(@todo, qw(depends prepare fetch patch configure build));
	if ($builder->{size}) {
		push @todo, 'show-size';
	}
	push(@todo, qw(fake package));
	if ($builder->{size}) {
		push @todo, 'show-fake-size';
	}
	push @todo, 'clean';
	bless {
	    tasks => [map {DPB::Port::TaskFactory->create($_)} @todo],
	    log => $log, v => $v,
	    special => $special,  current => '',
	    builder => $builder, endcode => $endcode},
		$class;
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
	for my $w ($logger->pathlist($v)) {
		if (defined $logsize->{$w}) {
			$self->{expected} = $logsize->{$w};
			last;
		}
	}
	$self->{watched} = $logger->log_pkgpath($v);
}

sub watch
{
	my $self = shift;
	my $sz = (stat $self->{watched})[7];
	if (defined $self->{offset} && defined $sz) {
		$sz -= $self->{offset};
	}
	if (!defined $self->{sz} || $self->{sz} != $sz) {
		$self->{sz} = $sz;
		$self->{time} = time();
	}
}

sub watched
{
	my ($self, $current) = @_;
	return "" unless defined $self->{watched};
	$self->watch;
	my $progress = '';
	if (defined $self->{sz}) {
		if (defined $self->{expected} &&
		    $self->{sz} < 4 * $self->{expected}) {
			$progress = ' '.
			    int($self->{sz}*100/$self->{expected}). '%';
		} else {
			$progress = ' '.$self->{sz};
	    	}
	}

	my $diff = $current - $self->{time};
	if ($diff > 7200) {
		return "$progress unchanged for ".int($diff/3600)." hours";
	} elsif ($diff > 300) {
		return "$progress unchanged for ".int($diff/60)." minutes";
	} elsif ($diff > 10) {
		return "$progress unchanged for ".int($diff)." seconds";
	} else {
		return $progress;
	}
}

sub really_watch
{
	my ($self, $current) = @_;
	return "" unless defined $self->{watched};
	$self->watch;
	my $diff = $current - $self->{time};
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

