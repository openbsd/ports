# ex:ts=8 sw=4:
# $OpenBSD: Port.pm,v 1.66 2013/01/10 12:27:21 espie Exp $
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
package DPB::Task::BasePort;
our @ISA = qw(DPB::Task::Clocked);
use OpenBSD::Paths;

sub finalize
{
	my ($self, $core) = @_;
	$self->SUPER::finalize($core);
	$core->job->finished_task($self);
	return $core->{status} == 0;
}

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

sub handle_output
{
	my ($self, $job) = @_;
	$self->redirect_fh($job->{logfh}, $job->{log});
	print ">>> Running $self->{phase} in $job->{path} at ", time(), "\n";
}

sub run
{
	my ($self, $core) = @_;
	my $job = $core->job;
	my $t = $self->{phase};
	my $builder = $job->{builder};
	my $ports = $builder->ports;
	my $fullpkgpath = $job->{path};
	$self->handle_output($job);
	close STDIN;
	open STDIN, '</dev/null';
	if ($t eq 'patch' && defined $job->{v}{info}{distsize}) {
		print "distfiles size=$job->{v}{info}{distsize}\n";
	}
	my @args = ($t, "TRUST_PACKAGES=Yes",
	    "FETCH_PACKAGES=No",
	    "PREPARE_CHECK_ONLY=Yes",
	    "REPORT_PROBLEM='exit 1'", "BULK=No");
	if ($job->{parallel}) {
		push(@args, "MAKE_JOBS=$job->{parallel}");
	}
	if ($job->{special}) {
		push(@args, "WRKOBJDIR=/tmp/ports");
	}
	if ($builder->{fetch}) {
		push(@args, "NO_CHECKSUM=Yes");
	}

	my @l = $builder->make_args;
	my $make = $builder->make;
	if (defined $builder->{rsslog}) {
		unless ($self->notime) {
			$make = $builder->{wrapper};
			$l[0] = $make;
		}
	}

	unshift(@args, @l);
	if ($self->{sudo}) {
		unshift(@args, OpenBSD::Paths->sudo, "-E");
	}

	$core->shell
	    ->chdir($ports)
	    ->env(SUBDIR => $fullpkgpath, 
		PHASE => $t, 
		WRAPPER_OUTPUT => $builder->{rsslog})
	    ->exec(@args);
	exit(1);
}

sub notime { 0 }

# this code is only necessary thanks to NFS's brain-damage...
sub make_sure_we_have_packages
{
	my ($self, $core) = @_;
	my $job = $core->job;
	my $check = 1;
	# check ALL BUILD_PACKAGES
	for my $w ($job->{v}->build_path_list) {
		my $f = $job->{builder}->pkgfile($w);
		unless (-f $f) {
			$check = 0;
			print {$job->{logfh}} ">>> Missing $f\n";
		}
	}
	return if $check;
	if (!defined $job->{waiting}) {
		$job->{waiting} = 0;
	}
	if ($core->prop->{wait_timeout}) {
		if ($job->{waiting}*10 > $core->prop->{wait_timeout}) {
			print {$job->{logfh}} ">>> giving up\n";
		} else {
			print {$job->{logfh}} ">>> waiting 10 seconds\n";
			$job->insert_tasks(
			    DPB::Task::Port::VerifyPackages->new(
				'waiting-'.$job->{waiting}++));
		}
	}
}

package DPB::Task::Port;
our @ISA = qw(DPB::Task::BasePort);

sub finalize
{
	my ($self, $core) = @_;
	$self->SUPER::finalize($core);
	if ($core->{status} == 0) {
		return 1;
	}
	if ($core->prop->{always_clean}) {
		$core->job->insert_tasks(DPB::Task::Port::BaseClean->new(
			'clean'));
		return 1;
	}
	return 0;
}

package DPB::Task::Port::Signature;
our @ISA =qw(DPB::Task::Port);

sub notime { 1 }

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
		my $v = $job->{v};
		my $builder = $job->{builder};
		$job->add_normal_tasks($builder->{dontclean}{$v->pkgpath});
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
	$self->handle_output($job);
	my $exit = 0;
	for my $dist (values %{$job->{v}{info}{DIST}}) {
		if (!$dist->checksum($dist->filename)) {
			$exit = 1;
		} else {
			unlink($dist->tempfilename);
		}
	}
	exit($exit);
}

sub finalize
{
	my ($self, $core) = @_;
	$self->SUPER::finalize($core);
	if ($core->{status} == 0) {
		delete $core->job->{v}{info}{DIST};
	}
}

package DPB::Task::Port::Serialized;
our @ISA = qw(DPB::Task::Port);

# XXX can't move junk_lock on the other side of the fork, because
# it may have to wait.

sub junk_lock
{
	my ($self, $core) = @_;
	my $job = $core->job;
	my $locker = $job->{builder}->locker;

	while (1) {
		my $fh = $locker->lock($core);
		if ($fh) {
			print $fh "path=".$job->{path}, "\n";
			print {$job->{logfh}} "(Junk lock obtained for ",
			    $core->hostname, " at ", time(), ")\n";
			return;
		}
		sleep 1;
	}
}

sub junk_unlock
{
	my ($self, $core) = @_;

	$core->job->{builder}->locker->unlock($core);
	print {$core->job->{logfh}} "(Junk lock released for ", 
	    $core->hostname, " at ", time(), ")\n";
}

sub finalize
{
	my ($self, $core) = @_;
	if ($core->{status} != 0) {
		$self->junk_unlock($core);
	}
	$self->SUPER::finalize($core);
}

package DPB::Task::Port::Depends;
our @ISA=qw(DPB::Task::Port::Serialized);

sub notime { 1 }

sub run
{
	my ($self, $core) = @_;
	my $job = $core->job;
	my $dep = $job->{depends};

	$self->junk_lock($core);
	$self->handle_output($job);
	my @cmd = ('/usr/sbin/pkg_add', '-aI');
	if ($job->{builder}->{update}) {
		push(@cmd, "-rqU", "-Dupdate", "-Dupdatedepends");
	}
	if ($job->{builder}->{forceupdate}) {
		push(@cmd,  "-Dinstalled");
	}
	print join(' ', @cmd, (sort keys %$dep)), "\n";
	my $path = $job->{builder}->{fullrepo}.'/';
	$core->shell->env(PKG_PATH => $path)
	    ->exec(OpenBSD::Paths->sudo, @cmd, (sort keys %$dep));
	exit(1);
}

sub finalize
{
	my ($self, $core) = @_;
	$core->{status} = 0;
	$self->SUPER::finalize($core);
	return 1;
}

package DPB::Task::Port::PrepareResults;
our @ISA = qw(DPB::Task::Port::Serialized);

sub result_filename
{
	my ($self, $job) = @_;
	return $job->{builder}->logger->log_pkgpath($job->{v}).".tmp";
}

sub handle_output
{
	my ($self, $job) = @_;
	print {$job->{logfh}} ">>> Running $self->{phase} in $job->{path} at ", 
	    time(), "\n";
	$self->redirect($self->result_filename($job));
}

sub finalize
{
	my ($self, $core) = @_;

	my $job = $core->{job};
	my $v = $job->{v};
	my $file = $self->result_filename($job);
	if (open my $fh, '<', $file) {
		my @r;
		while (<$fh>) {
			print {$job->{logfh}} $_;
			# zap headers
			next if m/^\>\>\>\s/ || m/^\=\=\=\>\s/;
			chomp;
			push(@r, $_);
		}
		if ($v->{info}->has_property('nojunk')) {
			print {$job->{lock}} "nojunk\n";
			$job->{nojunk} = 1;
		}
		print {$job->{lock}} "needed=", join(' ', sort @r), "\n";
		close $fh;
		unlink($file);
		$job->{live_depends} = \@r;
	} else {
		$core->{status} = 1;
	}
	$self->junk_unlock($core);
	$self->SUPER::finalize($core);
}

package DPB::Task::Port::Uninstall;
our @ISA=qw(DPB::Task::Port::Serialized);

sub notime { 1 }

sub add_dontjunk
{
	my ($self, $job, $h) = @_;
	return if !defined $job->{builder}{dontjunk};
	for my $pkgname (keys %{$job->{builder}{dontjunk}}) {
		$h->{$pkgname} = 1;
	}
}
sub add_live_depends
{
	my ($self, $h, $core) = @_;
	for my $job ($core->same_host_jobs) {
		if ($job->{nojunk}) {
			return 0;
		}
		next unless defined $job->{live_depends};
		for my $d (@{$job->{live_depends}}) {
			$h->{$d} = 1;
		}
	}
	return 1;
}

sub run
{
	my ($self, $core) = @_;
	my $job = $core->job;
	my $v = $job->{v};

	$self->junk_lock($core);
	# we got pre-empted
	if ($core->prop->{junk_count} < $core->prop->{junk}) {
		exit(2);
	}
	$self->handle_output($job);

	my $h = $job->{builder}->locker->find_dependencies(
	    $core->hostname);
	if (defined $h && $self->add_live_depends($h, $core)) {
		$self->add_dontjunk($job, $h);
		my @cmd = ('/usr/sbin/pkg_delete', '-aIX', sort keys %$h);
		print join(' ', @cmd, "\n");
		$core->shell->exec(OpenBSD::Paths->sudo, @cmd);
		exit(1);
	} else {
		exit(2);
	}
}

sub finalize
{
	my ($self, $core) = @_;
	if ($core->{status} == 0) {
		$core->prop->{junk_count} = 0;
	}
	$core->{status} = 0;
	$self->junk_unlock($core);
	$self->SUPER::finalize($core);
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

sub handle_output
{
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
			my $f2 = $job->{builder}->logger->open("size");
			print $f2 $job->{path}, " $job->{wrkdir} $sz\n";
		}
	}
	close($fh);
	return 1;
}

package DPB::Task::Port::Install;
our @ISA=qw(DPB::Task::Port);

sub notime { 1 }

sub run
{
	my ($self, $core) = @_;
	my $job = $core->job;
	my $v = $job->{v};

	$self->handle_output($job);
	my @cmd = ('/usr/sbin/pkg_add', '-I');
	if ($job->{builder}->{update}) {
		push(@cmd, "-rqU", "-Dupdate", "-Dupdatedepends");
	}
	if ($job->{builder}->{forceupdate}) {
		push(@cmd,  "-Dinstalled");
	}
	print join(' ', @cmd, $v->fullpkgname, "\n");
	my $path = $job->{builder}->{fullrepo}.'/';
	$ENV{PKG_PATH} = $path;
	$core->shell->env(PKG_PATH => $path)
	    ->exec(OpenBSD::Paths->sudo, @cmd, $v->fullpkgname);
	exit(1);
}

sub finalize
{
	my ($self, $core) = @_;
	$core->{status} = 0;
	$self->SUPER::finalize($core);
	return 1;
}


package DPB::Task::Port::Fetch;
our @ISA = qw(DPB::Task::Port);

sub notime { 1 }

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

package DPB::Task::Port::BaseClean;
our @ISA = qw(DPB::Task::BasePort);

sub notime { 1 }

sub finalize
{
	my ($self, $core) = @_;
	if ($self->requeue($core)) {
		return 1;
	}
	$self->SUPER::finalize($core);
	return 1;
}

sub requeue
{
	my ($self, $core) = @_;
	# didn't clean right, and no sudo yet:
	# run ourselves again (but log the problem)
	if ($core->{status} != 0 && !$self->{sudo}) {
		$self->{sudo} = 1;
		my $job = $core->job;
		$job->insert_tasks($self);
		my $fh = $job->{builder}->logger->open("clean");
		print $fh $job->{path}, "\n";
		$core->{status} = 0;
		return 1;
	}
	return 0;
}

package DPB::Task::Port::Clean;
our @ISA = qw(DPB::Task::Port::BaseClean);

sub finalize
{
	my ($self, $core) = @_;
	if (!$self->requeue($core)) {
		$self->make_sure_we_have_packages($core);
	}
	$self->SUPER::finalize($core);
}

package DPB::Task::Port::VerifyPackages;
our @ISA = qw(DPB::Task::Port);
sub finalize
{
	my ($self, $core) = @_;
	if ($core->{status} != 0) {
		return 0;
	}
	$self->make_sure_we_have_packages($core);
}

sub run
{
	sleep 10;
	exit(0);
}

package DPB::Port::TaskFactory;
my $repo = {
	default => 'DPB::Task::Port',
	checksum => 'DPB::Task::Port::Checksum',
	clean => 'DPB::Task::Port::Clean',
	'show-prepare-results' => 'DPB::Task::Port::PrepareResults',
	fetch => 'DPB::Task::Port::Fetch',
	depends => 'DPB::Task::Port::Depends',
	'show-size' => 'DPB::Task::Port::ShowSize',
	'show-fake-size' => 'DPB::Task::Port::ShowFakeSize',
	'junk' => 'DPB::Task::Port::Uninstall',
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
	my ($class, $log, $v, $builder, $special, $core, $endcode) = @_;
	my $job = bless {
	    tasks => [],
	    log => $log, v => $v,
	    path => $v->fullpkgpath,
	    special => $special,  current => '',
	    builder => $builder},
		$class;

	open $job->{logfh}, ">>", $job->{log} or die "can't open $job->{log}";

	$job->{endcode} = sub { 
		close($job->{logfh}); 
		$builder->register_built($v); 
		&$endcode; };

	my $prop = $core->prop;
	if ($prop->{parallel} =~ m/^\/(\d+)$/) {
		if ($prop->{jobs} == 1) {
			$prop->{parallel} = 0;
		} else {
			$prop->{parallel} = int($prop->{jobs}/$1);
			if ($prop->{parallel} < 2) {
				$prop->{parallel} = 2;
			}
		}
	}
	if ($prop->{parallel} && $v->{info}->has_property('parallel')) {
		$job->{parallel} = $prop->{parallel};
	}

	if ($builder->checks_rebuild($v)) {
		push(@{$job->{tasks}},
		    DPB::Task::Port::Signature->new('signature'));
	} else {
		$job->add_normal_tasks($builder->{dontclean}{$v->pkgpath},
		    $prop);
	}
	return $job;
}

sub has_depends
{
	my $self = shift;
	my $dep = {};
	my $v = $self->{v};
	if (exists $v->{info}{BDEPENDS}) {
		for my $d (values %{$v->{info}{BDEPENDS}}) {
			$dep->{$d->fullpkgname} = 1;
		}
	}
	# recurse for extra stuff
	if (exists $v->{info}{BEXTRA}) {
		for my $two (values %{$v->{info}{BEXTRA}}) {
			$two->quick_dump($self->{logfh});
			if (exists $two->{info}{BDEPENDS}) {
				for my $d (values %{$two->{info}{BDEPENDS}}) {
					$dep->{$d->fullpkgname} = 1;
				}
			}
			# XXX
			if (exists $two->{info}{DEPENDS}) {
				for my $d (values %{$two->{info}{DEPENDS}}) {
					$dep->{$d->fullpkgname} = 1;
				}
			}
		}
	}
	return 0 unless %$dep;
	$self->{depends} = $dep;
	return 1;
}

sub need_checksum
{
	my $self = shift;
	my $need = 0;
	for my $dist (values %{$self->{v}{info}{DIST}}) {
		if (!$dist->cached_checksum($self->{logfh}, $dist->filename)) {
			$need = 1;
		} else {
			unlink($dist->tempfilename);
		}
	}
	return $need;
}

my $logsize = {};
my $times = {};

sub add_build_info
{
	my ($class, $pkgpath, $host, $time, $sz) = @_;
	$logsize->{$pkgpath} = $sz;
	$times->{$pkgpath} = $time;
}

sub add_normal_tasks
{
	my ($self, $dontclean, $hostprop) = @_;

	my @todo;
	my $builder = $self->{builder};
	my $small = 0;
	if (defined $times->{$self->{v}} && 
	    $times->{$self->{v}} < ($hostprop->{small} // 120)) {
		$small = 1;
	}

	if ($builder->{clean}) {
		$self->insert_tasks(DPB::Task::Port::BaseClean->new('clean'));
	}
	if ($self->has_depends) {
		push(@todo, qw(depends show-prepare-results));
	}
	if ($hostprop->{junk}) {
		if ($hostprop->{junk_count}++ >= $hostprop->{junk}) {
			push(@todo, 'junk');
		}
	}
	if ($builder->{fetch}) {
		if ($self->need_checksum) {
			push(@todo, qw(checksum));
		}
	} else {
		push(@todo, qw(fetch));
	}
	if (!$small) {
		push(@todo, qw(patch configure));
	}
	push(@todo, qw(build));

	if ($builder->{size}) {
		push @todo, 'show-size';
	}
	if (!$small) {
		push(@todo, qw(fake));
	}
	push(@todo, qw(package));
	if ($builder->{size}) {
		push @todo, 'show-fake-size';
	}
	if (!$dontclean) {
		push @todo, 'clean';
	}
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
	return $self->{path}."(".$self->{task}{phase}.")";
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
	$t *= $self->{parallel} if $self->{parallel};
	return sprintf("%.2f", $t);
}

sub timings
{
	my $self = shift;
	return join('/', "max_stuck=".$self->{watched}{max}, map {sprintf("%s=%.2f", $_->name, $_->elapsed)} @{$self->{done}});
}

sub equates
{
	my ($class, $h) = @_;
	for my $v (values %$h) {
		next unless defined $logsize->{$v};
		for my $w (values %$h) {
			$logsize->{$w} //= $logsize->{$v};
			$times->{$w} //= $logsize->{$v};
		}
		return;
	}
}

sub set_watch
{
	my ($self, $logger, $v) = @_;
	my $expected;
	for my $w ($v->build_path_list) {
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

package DPB::Job::Port::Install;
our @ISA = qw(DPB::Job::Port);

sub new
{
	my ($class, $log, $v, $builder, $endcode) = @_;
	my $job = bless {
	    tasks => [],
	    log => $log, v => $v,
	    path => $v->fullpkgpath,
	    builder => $builder},
		$class;

	open $job->{logfh}, ">>", $job->{log} or die "can't open $job->{log}";

	$job->{endcode} = sub { 
		close($job->{logfh}); 
		&$endcode; };

	push(@{$job->{tasks}},
		    DPB::Task::Port::Install->new('install'));
	return $job;
}

1;

