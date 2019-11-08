# ex:ts=8 sw=4:
# $OpenBSD: Port.pm,v 1.200 2019/11/08 17:47:01 espie Exp $
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

use DPB::Job;
use DPB::Clock;

package DPB::Junk;
sub want
{
	my ($class, $core, $job) = @_;
	# job is normally attached to core, unless it's not attached,
	# and then we pass it as an extra parameter
	$job //= $core->job;
	return 2 if $job->{v}->forcejunk;
	# XXX let's wipe the slates at the start of the first tagged
	# job, as we don't know the exact state of the host.
	return 2 if $job->{v}{info}->has_property('tag') &&
	    !defined $core->prop->{last_junk};
	return 0 unless defined $core->prop->{junk};
	if ($core->prop->{depends_count} >= $core->prop->{junk}) {
		return 1;
	} else {
		return 0;
	}
}

package DPB::Task::BasePort;
our @ISA = qw(DPB::Task::Clocked);
use OpenBSD::Paths;

sub setup
{
	return $_[0];
}

sub is_serialized { 0 }
sub want_frozen { 1 }
sub want_percent { 1 }

sub finalize
{
	my ($self, $core) = @_;
	$self->SUPER::finalize($core);
	$core->job->finished_task($self);
	return $core->{status} == 0;
}

# note that tasks are using the "flyweight" pattern: they're
# just a name + behavior, and all the data is in job (which is
# obtained thru core)
sub new
{
	my ($class, $phase) = @_;
	bless {phase => $phase}, $class;
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
	print ">>> Running $self->{phase} in $job->{path} at ", 
	    DPB::Util->current_ts, "\n";
}

sub tweak_args
{
	my ($self, $args, $job, $builder) = @_;
	push(@$args,
	    "FETCH_PACKAGES=No",
	    "PREPARE_CHECK_ONLY=Yes",
	    "REPORT_PROBLEM='exit 1'", "BULK=No");
	if ($job->{parallel}) {
		push(@$args, "MAKE_JOBS=$job->{parallel}");
	}
	if ($job->{memsize}) {
		push(@$args, "USE_MFS=Yes");
	}
	if ($builder->{nochecksum}) {
		push(@$args, "NO_CHECKSUM=Yes");
	}
}

sub run
{
	my ($self, $core) = @_;
	my $job = $core->job;
	my $t = $self->{phase};
	my $builder = $job->{builder};
	my $ports = $builder->ports;
	my $fullpkgpath = $job->{path};
	if ($core->prop->{syslog}) {
		Sys::Syslog::syslog('info', "start $fullpkgpath($t)");
	}
	$self->handle_output($job);
	close STDIN;
	open STDIN, '</dev/null';
	my @args = ($t);
	$self->tweak_args(\@args, $job, $builder);

	my @l = $builder->make_args;
	my $make = $builder->make;
	my @env = ();
	if (defined $builder->{rsslog}) {
		unless ($self->notime) {
			$make = $builder->{wrapper};
			$l[0] = $make;
			push(@env, WRAPPER_OUTPUT => $builder->{rsslog});
		}
	}

	unshift(@args, @l);
	$core->shell
	    ->as_root($self->{as_root})
	    ->env(SUBDIR => $fullpkgpath, 
		PHASE => $t, 
		@env)
	    ->exec(@args);
	exit(1);
}

sub notime { 0 }

package DPB::Task::Port;
our @ISA = qw(DPB::Task::BasePort);

sub finalize
{
	my ($self, $core) = @_;
	$self->SUPER::finalize($core);
	if ($core->prop->{syslog}) {
		my $fullpkgpath = $core->job->{path};
		my $t = $self->{phase};
		Sys::Syslog::syslog('info', "end $fullpkgpath($t)");
	}
	if ($core->{status} == 0) {
		return 1;
	}
	$core->job->{failed} = $core->{status};
	if ($core->prop->{always_clean}) {
		$core->job->replace_tasks(DPB::Port::TaskFactory->create('clean'));
		return 1;
	}
	# XXX in case we taint the core, we will mark ourselves as cleaned
	# so the tag and dependencies may vanish.
	#
	# this is a bit of a pain for fixing errors, but this ensures bulks
	# *will* finish anyhow
	#
	if ($core->job->{v}{info}->has_property('tag')) {
		$core->job->{lock}->write("cleaned");
	}
	return 0;
}

# return swallowed cores at the end of fake: package is inherently sequential
# and there's some "thundering herd" effect when we release lots of cores,
# so release them a bit early, so by the time we're finished packaging,
# they're mostly out of "waiting-for-lock"
package DPB::Task::Port::Fake;
our @ISA = qw(DPB::Task::Port);

sub finalize
{
	my ($self, $core) = @_;
	$core->unswallow;
	delete $core->job->{nojunk};
	$self->SUPER::finalize($core);
}


# some ports prevent junking only up-to-configure
package DPB::Task::Port::Configure;
our @ISA = qw(DPB::Task::Port);

sub finalize
{
	my ($self, $core) = @_;
	my $job = $core->job;
	if ($job->{noconfigurejunk}) {
		delete $core->job->{nojunk};
	}
	$self->SUPER::finalize($core);
}

package DPB::Task::Port::Extract;
our @ISA = qw(DPB::Task::Port);

sub finalize
{
	my ($self, $core) = @_;
	my $job = $core->job;
	# XXX we only exist because there is nojunk involved
	$job->{nojunk} = 1;
	# XXX don't bother marking ourselves for configurejunk
	if (!$job->{noconfigurejunk}) {
		$job->{lock}->write("nojunk");
	}
	$self->SUPER::finalize($core);
}

package DPB::Task::Port::Signature;
our @ISA =qw(DPB::Task::BasePort);

sub notime { 1 }

sub run
{
	my ($self, $core) = @_;
	my $job = $core->job;
	$self->handle_output($job);
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
		$job->add_normal_tasks($builder->{dontclean}{$v->pkgpath}, 
		    $core);
	} else {
		$job->{signature_only} = 1;
		$job->{builder}->register_updates($job->{v});
	}
	return 1;
}

package DPB::Task::Port::Checksum;
our @ISA = qw(DPB::Task::Port);

sub need_checksum
{
	my ($self, $log, $info) = @_;
	my $need = 0;
	for my $dist (values %{$info->{DIST}}) {
		if (!$dist->cached_checksum($log, $dist->filename)) {
			$need = 1;
		} else {
			unlink($dist->tempfilename);
		}
	}
	return $need;
}

sub setup
{
	my ($task, $core) = @_;
	my $job = $core->job;
	my $info = $job->{v}{info};
	if (defined $info->{distsize}) {
		print {$job->{logfh}} "distfiles size=$info->{distsize}\n";
	}
	if ($task->need_checksum($job->{logfh}, $info)) {
		return $task;
	} else {
		delete $info->{DIST};
		return $job->next_task($core);
    	}
}

sub checksum
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
	return $exit;
}

sub run
{
	my ($self, $core) = @_;
	exit($self->checksum($core));
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

sub is_serialized { 1 }
sub want_percent { 0 }

# note that serialized's setup will return its task only if lock
# happened succesfully, so we can use that in serialized tasks
sub setup
{
	my ($task, $core) = @_;
	my $job = $core->job;
	if (!$job->{locked}) {
		$task->try_lock($core);
	}
	if (!$job->{locked}) {
		unshift(@{$job->{tasks}}, $task);
		$job->{wakemeup} = $core->prop->{waited_for_lock}++;
		my $o = $job->{builder}->locker->lock_has_other_owner($core);
		my $status = 'waiting-for-lock #'.$job->{wakemeup};
		if (defined $o) {
			$status ='locked by '.$o;
		}
		return DPB::Task::Port::Lock->new($status);
	}

	return $task;
}

sub try_lock
{
	my ($self, $core) = @_;
	my $job = $core->job;

	my $lock = $job->{builder}->locker->lock($core);
	if ($lock) {
		$lock->write("path", $job->{path});
		print {$job->{logfh}} "(Junk lock obtained for ",
		    $core->hostname, " at ", DPB::Util->current_ts, ")\n";
		$job->{locked} = 1;
	}
}

sub junk_unlock
{
	my ($self, $core) = @_;

	if ($core->job->{locked}) {
		$core->job->{builder}->locker->unlock($core);
		print {$core->job->{logfh}} "(Junk lock released for ", 
		    $core->hostname, " at ", DPB::Util->current_ts, ")\n";
		delete $core->job->{locked};
		$core->job->wake_others($core);
	}
}

sub finalize
{
	my ($self, $core) = @_;
	my $job = $core->job;
	my $task = $job->{tasks}[0];
	# XXX if we didn't lock at the entrance, we locked here.
	$job->{locked} = 1;
	if ($core->{status} != 0 || !defined $task || !$task->is_serialized) {
		$self->junk_unlock($core);
	}
	$self->SUPER::finalize($core);
}


# this is the full locking task, the one that has to wait.

package DPB::Task::Port::Lock;
our @ISA = qw(DPB::Task::Port::Serialized);

sub setup
{
	return $_[0];
}

sub want_frozen { 0 }

sub run
{
	my ($self, $core) = @_;
	my $job = $core->job;
	$SIG{IO} = sub { print {$job->{logfh}} "Received IO\n"; };
	my $start = Time::HiRes::time();
	use POSIX;

	while (1) {
		$self->try_lock($core);
		my $now = Time::HiRes::time();
		if ($job->{locked}) {
			print {$job->{builder}{lockperf}} 
			    $now, ":", $core->hostname, 
			    ": $self->{phase}: ", $now - $start, " seconds\n";
			exit(0);
		}
		print {$job->{logfh}} "(Junk lock failure for ",
		    $core->hostname, " at ", $now, ")\n";
		pause;
	}
}

sub finalize
{
	my ($self, $core) = @_;
	$core->job->{locked} = 1;
	delete $core->job->{wakemeup};
	$self->SUPER::finalize($core);
}

package DPB::Task::Port::Depends;
our @ISA=qw(DPB::Task::Port::Serialized);

sub notime { 1 }

sub recompute_depends
{
	my ($self, $core) = @_;
	# we're running this synchronously with other jobs, so 
	# let's try avoid running pkg_add if we can !
	# compute all missing deps for all jobs currently waiting
	my $deps = {};

	# XXX not a "same_host_jobs" as we're in setup, so not
	# actually running
	for my $d (keys %{$core->job->{depends}}) {
		$deps->{$d} = $d;
	}
	for my $job ($core->same_host_jobs) {
		next if $job->{shunt_depends};
		for my $d (keys %{$job->{depends}}) {
			$deps->{$d} = $d;
			$job->{shunt_depends} = $core->job->{path};
		}
	}
	for my $job ($core->same_host_jobs) {
		next unless defined $job->{live_depends};
		for my $d (@{$job->{live_depends}}) {
			delete $deps->{$d};
		}
	}
	return $deps;
}

sub setup
{
	my ($task, $core) = @_;
	my $job = $core->job;

	# first, we must be sure to have the lock !
	$task = $task->SUPER::setup($core);
	if (!$job->{locked}) {
		return $task;
	}

	if ($job->{shunt_depends}) {
		print {$job->{logfh}} "Short-cut: depends already handled by ",
		    $job->{shunt_depends}, "\n";
		return $job->next_task($core);
	}
	my $dep = $task->recompute_depends($core);
	if (keys %$dep == 0) {
		return $job->next_task($core);
	} else {
		$job->{dodeps} = $dep;
		return $task;
	}
}

sub run
{
	my ($self, $core) = @_;
	my $job = $core->job;
	$self->handle_output($job);
	if ($core->prop->{syslog}) {
		Sys::Syslog::syslog('info', "start $job->{path}(depends)");
	}

	if (defined $core->prop->{last_junk}) {
		print "   last junk was in ",
		    $core->prop->{last_junk}->fullpkgpath, "\n";
	}
	my @cmd = ('/usr/sbin/pkg_add', '-aI');
	if ($job->{builder}{update}) {
		push(@cmd, "-rqU", "-Dupdate", "-Dupdatedepends");
	}
	if ($job->{builder}{forceupdate}) {
		push(@cmd,  "-Dinstalled");
	}
	if ($core->prop->{repair}) {
		push(@cmd, "-Drepair");
	}
	if ($job->{builder}{state}{localbase} ne '/usr/local') {
		push(@cmd, "-L", $job->{builder}{state}{localbase});
	}
	my @l = (sort keys %{$job->{dodeps}});
	print join(' ', @cmd, @l), "\n";
	print "was: ", join(' ', @cmd, (sort keys %{$job->{depends}})), "\n";
	print join(' ', @cmd, @l), "\n";
	my $path = $job->{builder}{fullrepo}.'/';
	$core->shell->env(TRUSTED_PKG_PATH => $path)->as_root->exec(@cmd, @l);
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

sub setup
{
	my ($task, $core) = @_;
	my $job = $core->job;
	$job->{pos} = tell($job->{logfh});
	$job->track_lock;
	return $task->SUPER::setup($core);
}

sub finalize
{
	my ($self, $core) = @_;

	my $job = $core->{job};
	my $v = $job->{v};
	# reopen log at right location
	my $fh = $job->{builder}->logger->open('<', $job->{log});
	if (defined $fh && seek($fh, $job->{pos}, 0)) {
		my @r;
		while (<$fh>) {
			last if m/^\>\>\>\s+Running\s+show-prepare-results/;
		}
		while (<$fh>) {
			# zap headers
			next if m/^\>\>\>\s/ || m/^\=\=\=\>\s/;
			chomp;
			# normal lines *only have one package name*
			next if m/\s/;
			push(@r, $_);
		}
		close $fh;
		$job->save_depends(\@r);
		# XXX we ran junk before us, so retaint *now* 
		# before losing the lock
		if ($job->{v}{info}->has_property('tag') && 
		    !defined $core->prop->{tainted}) {
		    	$core->prop->taint($v);
                        print {$job->{logfh}} "Forced junk, retainting: ", 
			    $core->prop->{tainted}, "\n";
		}
	} else {
		$core->{status} = 1;
	}
	$self->SUPER::finalize($core);
}

package DPB::Task::Port::Uninstall;
our @ISA=qw(DPB::Task::Port::Serialized);

sub notime { 1 }

# uninstall is actually a "tentative" junk case
# it might not happen for various reasons:
# - a port that's building on the same host that says "nojunk"
# - something else went thru simultaneously and junked already


sub setup
{
	my ($task, $core) = @_;
	# we got pre-empted
	# no actual need to junk
	if (!DPB::Junk->want($core)) {
		$task->junk_unlock($core);
		return $core->job->next_task($core);
	}
	# okay we have to make sure we're locked first
	my $t2 = $task->SUPER::setup($core);
	if ($t2 != $task) {
		return $t2;
	}
	my $fh = $core->job->{logfh};
	# so we're locked, let's boogie
	my $still_tainted;
	for my $job ($core->same_host_jobs) {
		if ($job->{nojunk}) {
			# we can't junk go next
			print $fh "Don't run junk because nojunk in ",
			    $job->{path}, "\n";
			$task->junk_unlock($core);
			return $core->job->next_task($core);
		}
		if ($job->{v}{info}->has_property('tag')) {
			$still_tainted //= "host tagged by $job->{path}";
		}
	}
	if (!defined $still_tainted) {
		my ($tag, $owner) =
		    $core->job->{builder}->locker->find_tag($core->hostname);
		if (defined $tag) {
			$still_tainted = "host tagged with $tag by $owner";
		}
	}
	if (!defined $still_tainted) {
		# XXX deal better with old nojunk stuff ?
		# there are some decisions to take. For now, 
		# let's just make sure  it's not broken
		my ($nojunk, $h) = $core->job->{builder}->locker->
		    find_dependencies($core->hostname);
		if ($nojunk) {
			$still_tainted = "host marked nojunk by $nojunk";
		}
	}
	# we are going along with junk, BUT we may still be tainted
	if (defined $still_tainted) {
		print $fh "Still tainted: $still_tainted\n";
	} else {
		print $fh "Still tainted: no\n";
		$core->prop->untaint;
	}
	return $task;
}

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
		if (defined $job->{live_depends}) {
			for my $d (@{$job->{live_depends}}) {
				$h->{$d} = 1;
			}
		}
		for my $d (keys %{$job->{depends}}) {
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

	$self->handle_output($job);

	my ($nojunk, $h) = 
	    $job->{builder}->locker->find_dependencies($core->hostname);
	if ($nojunk) {
		print "Can't run junk because of lock on $nojunk\n";
		exit(2);
	}
	if ($self->add_live_depends($h, $core)) {
		$self->add_dontjunk($job, $h);
		my $opt = '-aIX';
		if ($core->prop->{nochecksum}) {
			$opt .= 'q';
		}
		my @cmd = ('/usr/sbin/pkg_delete', $opt, sort keys %$h);
		my $s = join(' ', @cmd)."\n";
		print $s;
		if (!$core->prop->{silentjunking}) {
			for my $j ($core->same_host_jobs) {
				next if $j eq $job;
				$j->silent_log(
				    ">> JUNKING in $job->{path}:\n",
				    ">>    $s");

			}
		}
		$core->shell->as_root->exec(@cmd);
		exit(1);
	} else {
		exit(2);
	}
}

sub finalize
{
	my ($self, $core) = @_;

	# did we really run ? then clean up stuff
	if ($core->{status} == 0) {
		my $job = $core->job;
		if (!$core->prop->{silentjunking}) {
			for my $j ($core->same_host_jobs) {
				next if $j eq $job;
				$j->silent_log(
				    ">> JUNKING end in $job->{path}\n");
			}
		}
		$core->prop->{last_junk} = $job->{v};
		$core->prop->{junk_count} = 0;
		$core->prop->{ports_count} = 0;
		$core->prop->{depends_count} = 0;
	}
	$core->{status} = 0;
	$self->SUPER::finalize($core);
	return 1;
}

# there's nothing to run here, just where we get committed to affinity
package DPB::Task::Port::InBetween;
our @ISA = qw(DPB::Task::BasePort);
sub setup
{
	my ($self, $core) = @_;

	my $job = $core->job;

	$job->{builder}{state}{affinity}->start($job->{v}, $core);
	$job->track_lock;

	return $job->next_task($core);
}

package DPB::Task::Port::ShowSize;
our @ISA = qw(DPB::Task::Port);

sub want_percent { 0 }

sub fork
{
	my ($self, $core) = @_;
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
			my $info = DPB::Serialize::Size->write({
			    pkgpath => $job->{path},
			    pkname => $job->{v}->fullpkgname,
			    size => $sz });
			print {$job->{builder}{logsize}} $info, "\n";
			# XXX the rolling log might be shared with other dpb
			# so it can be rewritten and sorted
			# don't keep a handle on it, so that we always
			# append new information to the correct filename
			my $fh2 = $job->{builder}->logger->open('>>', $job->{builder}{state}{size_log});
			print $fh2 $info."\n";
		}
	}
	close($fh);
	return 1;
}

package DPB::Task::Port::Install;
our @ISA=qw(DPB::Task::Port);

sub notime { 1 }

sub want_percent { 0 }

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
	if ($job->{builder}{state}{localbase} ne '/usr/local') {
		push(@cmd, "-L", $job->{builder}{state}{localbase});
	}
	print join(' ', @cmd, $v->fullpkgname, "\n");
	my $path = $job->{builder}->{fullrepo}.'/';
	$core->shell->nochroot->env(TRUSTED_PKG_PATH => $path)->as_root
	    ->exec(@cmd, $v->fullpkgname);
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

package DPB::Task::Port::Clean;
our @ISA = qw(DPB::Task::BasePort);

sub notime { 1 }
sub want_percent { 0 }

sub setup
{
	my ($task, $core) = @_;
	my $job = $core->job;
	if ($job->{builder}{dontclean}{$job->{v}->pkgpath}) {
		return $job->next_task($core);
	} else {
		$job->{lock}->write("cleaned");
		return $task;
	}
}
sub finalize
{
	my ($self, $core) = @_;
	$self->SUPER::finalize($core);
	return 1;
}

package DPB::Task::Test;
our @ISA = qw(DPB::Task::BasePort);

# to put test results elsewhere
#sub redirect_output
#{
#}

sub finalize
{
	my ($self, $core) = @_;
	$self->SUPER::finalize($core);
	# we always make as though we succeeded
	return 1;
}

package DPB::Task::PrepareTestResults;
our @ISA = qw(DPB::Task::PrepareResults);

package DPB::Port::TaskFactory;
my $repo = {
	default => 'DPB::Task::Port',
	checksum => 'DPB::Task::Port::Checksum',
	clean => 'DPB::Task::Port::Clean',
	configure => 'DPB::Task::Port::Configure',
	extract => 'DPB::Task::Port::Extract',
	'show-prepare-results' => 'DPB::Task::Port::PrepareResults',
	'show-prepare-test-results' => 'DPB::Task::Port::PrepareResults',
	fetch => 'DPB::Task::Port::Fetch',
	depends => 'DPB::Task::Port::Depends',
	'show-size' => 'DPB::Task::Port::ShowSize',
	junk => 'DPB::Task::Port::Uninstall',
	inbetween => 'DPB::Task::Port::InBetween',
	fake => 'DPB::Task::Port::Fake',
	signature => 'DPB::Task::Port::Signature',
};

sub create
{
	my ($class, $k) = @_;
	my $fw = $repo->{$k};
	$fw //= $repo->{default};
	$fw->new($k);
}

package DPB::DummyLock;

sub new
{
	my $class = shift;
	bless {}, $class;
}

sub write
{
}

sub close
{
}

package DPB::Job::BasePort;
our @ISA = qw(DPB::Job::Watched);

use Time::HiRes;

sub killinfo
{
	my $self = shift;
	return "$self->{path} $self->{current}";
}

sub new
{
	my ($class, %prop) = @_;


	my $job = bless \%prop, $class;
	$job->{path} = $job->{v}->fullpkgpath;

	my $e = $job->{endcode};

	$job->{endcode} = sub {
	    print {$job->{logfh}} ">>> Ended at ", DPB::Util->current_ts, "\n";
	    close($job->{logfh});
	    &$e;
	};
	$job->{tasks} = [];
	$job->{current} = '';
	# for stuff that doesn't really lock
	$job->{lock} //= DPB::DummyLock->new;

	return $job;
}

sub debug_dump
{
	my $self = shift;	
	return $self->{v}->fullpkgpath;
}

# a small wrapper that allows us to initialize things
sub next_task
{
	my ($self, $core) = @_;
	my $task = shift @{$self->{tasks}};
	if (defined $task) {
		return $task->setup($core);
	} else {
		return $task;
	}
}

sub save_depends
{
	my ($job, $l) = @_;
	$job->{live_depends} = $l;
	$job->{lock}->write("needed", join(' ', sort @$l));
}

sub save_wanted_depends
{
	my $job = shift;
	$job->{lock}->write("wanted", join(' ', sort keys %{$job->{depends}}));
}

sub need_depends
{
	my ($self, $core, $with_tests) = @_;
	my $dep = $self->{v}{info}->solve_depends($with_tests);
	return 0 unless %$dep;
	# XXX we are running this synchronously with other jobs on the
	# same host, so we know exactly which live_depends we can reuse.
	# try to see if other jobs that already have locks are enough to
	# satisfy our depends, then we can completely avoid a pkg_add
	my @live = ();
	my %deps2 = %$dep;
	for my $job ($core->same_host_jobs) {
		next unless defined $job->{live_depends};
		for my $d (@{$job->{live_depends}}) {
			if (defined $deps2{$d}) {
				delete $deps2{$d};
				push(@live, $d);
			}
		}
	}
	my $c = scalar(keys %deps2);
	if (!$c) {
		$self->save_depends(\@live);
		print {$self->{logfh}} "Avoided depends for ", 
		    join(' ', @live), "\n";
	} else {
		$self->save_wanted_depends;
		$self->{depends} = $dep;
	}
	return $c;
}

my $logsize = {};
my $times = {};

sub add_build_info
{
	my ($class, $pkgpath, $host, $time, $sz) = @_;
	$logsize->{$pkgpath} = $sz;
	$times->{$pkgpath} = $time;
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
	my $n = $self->{path}."(".$self->{task}{phase}.")";
	if ($self->{nojunk}) {
		return $n.'!';
	} else {
		return $n;
	}
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
		print {$self->{logfh}} $self->{stuck}, "\n";
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
	return DPB::Util->ts2string($t);
}

sub timings
{
	my $self = shift;
	return join('/', "max_stuck=".DPB::Util->ts2string($self->{watched}{max}), map {sprintf("%s=%.2f", $_->{phase}, $_->elapsed)} @{$self->{done}});
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
	$self->{watched} = DPB::Port::Watch->new(
	    $logger->file($logger->log_pkgpath($v)),
	    $expected, $self->{offset}, $self->{started});
}

sub track_lock
{
	my $self = shift;
	$self->{watched}->track_lock;
}

sub get_timeout
{
	my ($self, $core) = @_;
	return $core->stuck_timeout;
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

sub cleanup_after_fork
{
        my $self = shift;
        $self->{lock}->close;
        $self->SUPER::cleanup_after_fork;
}

package DPB::Job::Port;
our @ISA = qw(DPB::Job::BasePort);

sub new
{
	my $class = shift;

	my $job = $class->SUPER::new(@_);

	my $v = $job->{v};
	my $core = $job->{core};
	my $builder = $job->{builder};

	my $prop = $core->prop;
	# note that lonesome *and* parallel can be specified
	if ($v->{info}->has_property('lonesome')) {
		$job->{lonesome} = 1;
	} 
	if ($prop->{parallel2} && $v->{info}->has_property('parallel2')) {
		$job->{parallel} = $prop->{parallel2};
	} elsif ($prop->{parallel} && $v->{info}->has_property('parallel')) {
		$job->{parallel} = $prop->{parallel};
	}

	if ($builder->checks_rebuild($v)) {
		$job->add_tasks(DPB::Port::TaskFactory->create('signature'));
	} else {
		$job->add_normal_tasks($builder->{dontclean}{$v->pkgpath},
		    $core);
	}
	return $job;
}

sub silent_log
{
	my $job = shift;
	my $msg = join(@_);
	my $old = $job->{logfh}->autoflush(1);
	print {$job->{logfh}} $msg;
	$job->{logfh}->autoflush($old);
	if (defined $job->{watched}) {
		$job->{watched}->adjust_by(length($msg));
	}
}

sub new_junk_only
{
	my $class = shift;

	my $job = $class->SUPER::new(@_);
	my $fh2 = $job->{builder}->logger->append("junk");
	print $fh2 "$$@", CORE::time(), ": ", $job->{core}->hostname,
	    ": forced junking -> $job->{path}\n";
	$job->add_tasks(DPB::Port::TaskFactory->create('junk'));
	return $job;
}


sub add_normal_tasks
{
	my ($self, $dontclean, $core) = @_;

	my @todo;
	my $builder = $self->{builder};
	my $hostprop = $core->prop;
	my $small = 0;
	if (defined $times->{$self->{v}} && 
	    $times->{$self->{v}} < $hostprop->{small_timeout}) {
		$small = 1;
	}
	if ($builder->{clean}) {
		push(@todo, 'clean');
	}
	$hostprop->{junk_count} //= 0;
	$hostprop->{depends_count} //= 0;
	$hostprop->{ports_count} //= 0;
	my $c = $self->need_depends($core, 0);
	$hostprop->{ports_count}++;
	$hostprop->{depends_count} += $c;
	my $junk = DPB::Junk->want($core, $self);
	if ($junk == 2) {
		push(@todo, 'junk');
		my $fh = $self->{builder}->logger->append("junk");
		print $fh "$$@", CORE::time(), ": ", $core->hostname,
		    ": forced junking -> $self->{path}\n";
	}
	if ($c) {
		$hostprop->{junk_count}++;
		push(@todo, 'depends');
		# depends only install dependencies, stuff that have
		# an extra :patch/:configure stage need to complete prepare !
		if (exists $self->{v}{info}{BEXTRA}) {
			push(@todo, 'prepare');
		}
		push(@todo, 'show-prepare-results');
	}
	# gc stuff we will no longer need
	delete $self->{v}{info}{solved};
	if ($junk == 1) {
		my $fh = $self->{builder}->logger->append("junk");
		print $fh "$$@", CORE::time(), ": ", $core->hostname,
		    ": depends=$hostprop->{depends_count} ",
		    " ports=$hostprop->{ports_count} ",
		    " junk=$hostprop->{junk_count} -> $self->{path}\n";
		push(@todo, 'junk');
	}
	if ($builder->{fetch}) {
		push(@todo, qw(checksum));
	} else {
		push(@todo, qw(fetch));
	}

	push(@todo, qw(inbetween));
	my $nojunk = $self->{v}{info}->has_property("nojunk");
	my $nojunk2 = $self->{v}{info}->has_property("noconfigurejunk");
	if ($nojunk || $nojunk2) {
		push(@todo, qw(extract));
	}
	if (!$small || $nojunk2) {
		push(@todo, qw(patch configure));
	}
	if (!$nojunk && $nojunk2) {
		$self->{noconfigurejunk} = 1;
	}
	push(@todo, qw(build));

	if (!$small) {
		push(@todo, qw(fake));
	}
	push(@todo, qw(package));
	if ($builder->want_size($self->{v}, $core)) {
		push @todo, 'show-size';
	}
	if ($self->{v}{info}->want_tests) {
		$dontclean = 1;
	}
	if (!$dontclean) {
		push @todo, 'clean';
	}
	$self->add_tasks(map {DPB::Port::TaskFactory->create($_)} @todo);
}

sub wake_others
{
	my ($self, $core) = @_;
	my ($minjob, $minpid);
	$core->walk_same_host_jobs(
	    sub {
		my ($pid, $job) = @_;
		return unless exists $job->{wakemeup};
		if (!defined $minjob || 
		    $job->{wakemeup} < $minjob->{wakemeup}) {
			($minjob, $minpid) = ($job, $pid);
		}
	    });
	if (defined $minjob) {
		local $> = 0;
		kill IO => $minpid;
		print {$core->job->{logfh}} "Woken up $minjob->{path}\n";
	}
}

package DPB::Job::Port::Test;
our @ISA = qw(DPB::Job::BasePort);
sub new
{
	my $class = shift;

	my $job = $class->SUPER::new(@_);

	$job->add_test_tasks($job->{core});

	return $job;
}

sub add_test_tasks
{
	my ($self, $core) = @_;
	my @todo;

	my $c = $self->need_depends($core, 1);
	if ($c) {
		push(@todo, qw(depends show-prepare-test-results));
	}
	delete $self->{v}{info}{solved};
	push(@todo, qw(test clean));

	$self->add_tasks(map {DPB::Port::TaskFactory->create($_)} @todo);
}

package DPB::Job::Port::Install;
our @ISA = qw(DPB::Job::BasePort);

sub new
{
	my $class = shift;
	my $job = $class->SUPER::new(@_);

	push(@{$job->{tasks}},
		    DPB::Task::Port::Install->new('install'));
	return $job;
}

package DPB::Job::Port::Wipe;
our @ISA = qw(DPB::Job::BasePort);

sub new
{
	my $class = shift;
	my $job = $class->SUPER::new(@_);

	push(@{$job->{tasks}},
		    DPB::Task::Port::Clean->new('clean'));
	return $job;
}


package DPB::Port::Watch;
our @ISA = qw(DPB::Watch);

# set things up so that we only track Awaiting lock once.

sub track_lock
{
	my $self = shift;
	$self->{tracked} //= 1;
}


sub tweak_msg
{
	my ($self, $rmsg) = @_;
	if (defined $self->{tracked} && $self->{tracked} == 1) {
		# we tracked already, so never do it again
		$self->{tracked} = 0;
		# optimistic grab of last line of file
		my $line = $self->peek(150);
		chomp $line;
		if ($line =~ m/Awaiting lock\s+(.*)/) {
			$self->{override} = " stuck on $1";
		}
	}
	if (defined $self->{override}) {
		$$rmsg = $self->{override};
	}
}

sub frozen_message
{
	my ($self, $diff) = @_;
	my $msg = $self->SUPER::frozen_message($diff);
	if ($msg eq "") {
		delete $self->{override};
	} else {
		$self->tweak_msg(\$msg);
	}
	return $msg;
}

1;
