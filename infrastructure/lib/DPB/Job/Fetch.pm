# ex:ts=8 sw=4:
# $OpenBSD: Fetch.pm,v 1.25 2020/02/27 16:06:06 espie Exp $
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

package DPB::Task::Checksum;
our @ISA = qw(DPB::Task::Fork);

sub new
{
	my ($class, $fetcher, $status) = @_;
	bless {fetcher => $fetcher, fetch_status => $status}, $class;
}

sub want_frozen
{ 0 }

sub want_percent
{ 0 }

sub run
{
	my ($self, $core) = @_;
	my $job = $core->job;
	$self->redirect_fh($job->{logfh}, $job->{log});
	exit(!$job->{file}->checksum($job->{file}->tempfilename));
}

sub finalize
{
	my ($self, $core) = @_;
	$self->SUPER::finalize($core);
	my $job = $core->job;
	if ($core->{status} != 0) {
		# XXX if we continued, and it failed, then maybe we
		# got a stupid error message instead, so retry for
		# full size.
		if (defined $self->{fetcher}{initial_sz}) {
			$job->{fetcher}->run_as(
			    sub {
				unlink($job->{file}->tempfilename);
			    });
		} else {
			$job->next_site;
		}
		return $job->bad_file($self->{fetcher}, $core);
	}
	$job->{fetcher}->run_as(
	    sub {
		rename($job->{file}->tempfilename, $job->{file}->filename);
	    });
	print {$job->{logfh}} "Renamed to ", $job->{file}->filename, "\n";
	$job->{file}->cache;
	my $sz = $job->{file}->{sz};
	if (defined $self->{fetcher}->{initial_sz}) {
		$sz -= $self->{fetcher}->{initial_sz};
	}
	my $fh = $job->{file}->logger->append("fetch/good");
	my $elapsed = $self->{fetcher}->elapsed;
	print $fh $self->{fetcher}{site}.$job->{file}->{short}, " in ",
	    $elapsed, "s ";
	if ($elapsed != 0) {
		print $fh "(", sprintf("%.2f", $sz / $elapsed / 1024), "KB/s)";
	}
	print $fh "\n";
	close $fh;
	return 1;
}

# Fetching stuff is almost a normal job
package DPB::Task::Fetch;
our @ISA = qw(DPB::Task::Clocked);

sub stopped_clock
{
	my ($self, $gap) = @_;
	# note that we're missing time
	$self->{got_suspended}++;
	$self->SUPER::stopped_clock($gap);
}

sub backup_class
{
	'DPB::Task::FetchFromBackup'
}

sub new
{
	my ($class, $job) = @_;
	my $o;
	if (@{$job->{sites}}) {
		$o = bless { site => $job->{sites}[0]}, $class;
	} elsif (@{$job->{bak}}) {
		$o = bless { site => $job->{bak}[0]}, $class->backup_class;
	}
	if (defined $o) {
		my $sz = (stat $job->{file}->tempfilename)[7];
		if (defined $sz) {
			$o->{initial_sz} = $sz;
		}
		return $o;
	} else {
		undef;
	}
}

sub filename
{
	my ($self, $info) = @_;
	return $info->{short};
}

sub run
{
	my ($self, $core) = @_;
	my $job = $core->job;
	my $site = $self->{site};
	$site =~ s/^\"(.*)\"$/$1/;
	$job->{logger}->redirect($job->{log});
	if (($job->{file}{sz} // 0) == 0) {
		print STDERR "No size in distinfo\n";
		exit(1);
	}
	my $ftp = OpenBSD::Paths->ftp;
	my @cmd = ('-C', '-o', $job->{file}->tempfilename, '-v',
	    $site.$self->filename($job->{file}));
	if ($ftp =~ /\s/) {
		unshift @cmd, split(/\s+/, $ftp);
	} else {
		unshift @cmd, $ftp;
	}
	print STDERR "===> Trying $site\n";
	print STDERR join(' ', @cmd), "\n";
	# run ftp;
	$core->shell->nochroot->exec(@cmd);
}

sub finalize
{
	my ($self, $core) = @_;
	$self->SUPER::finalize($core);
	my $job = $core->job;
	if ($job->{file}->checksize($job->{file}->tempfilename)) {
	    	$job->new_checksum_task($self, $core->{status});
	} else {
		if (($job->{file}{sz} // 0) == 0) {
			$job->{sites} = $job->{bak} = [];
			return $job->bad_file($self, $core);
		}
		# Fetch exited okay, but the file is not the right size
		if ($core->{status} == 0 ||
		# definite error also if file is too large
		    stat($job->{file}->tempfilename) &&
		    (stat _)[7] > $job->{file}->{sz}) {
		    	$job->{fetcher}->unlink($job->{file}->tempfilename);
		}
		# if we got suspended, well, might have to retry same site
		if (!$self->{got_suspended}) {
			$job->next_site;
		}
		return $job->bad_file($self, $core);
	}
}

sub want_frozen
{ 1 }

sub want_percent
{ 1 }

package DPB::Task::FetchFromBackup;
our @ISA=qw(DPB::Task::Fetch);

sub filename
{
	my ($self, $info) = @_;
	return $info->{name};
}


package DPB::Job::Fetch;
our @ISA = qw(DPB::Job::Watched);

use File::Path;
use File::Basename;

sub new_fetch_task
{
	my $self = shift;
	my $task = DPB::Task::Fetch->new($self);
	if ($task) {
		push(@{$self->{tasks}}, $task);
		$self->{tries}++;
		return 1;
	} else {
		return 0;
	}
}

sub next_site
{
	my $self = shift;

	shift @{$self->{sites}} || shift @{$self->{bak}};
}

sub bad_file
{
	my ($job, $task, $core) = @_;
	my $fh = $job->{file}->logger->append("fetch/bad");
	print $fh $task->{site}.$job->{file}{short}, "\n";
	if ($job->new_fetch_task) {
		$core->{status} = 0;
		return 1;
	} else {
		$core->{status} = 1;
		return 0;
	}
}

sub new_checksum_task
{
	my ($self, $fetcher, $status) = @_;
	push(@{$self->{tasks}}, DPB::Task::Checksum->new($fetcher, $status));
}

sub new
{
	my ($class, $file, $e, $fetcher, $logger) = @_;
	my $job = bless {
		# need to copy those arrays because we're going to
		# destroy them, and they are shared between distfiles
		sites => [@{$file->{site}// []}],
		bak => [@{$fetcher->{state}{backup_sites}}],
		current => '',
		file => $file,
		tasks => [],
		endcode => $e,
		fetcher => $fetcher,
		logger => $logger,
		log => $file->logger->make_distlogs($file),
	}, $class;
	$job->{logfh} = $job->{logger}->open('>>', $job->{log});
	print {$job->{logfh}} ">>> From ", $file->fullpkgpath, "\n";
	$job->{fetcher}->make_path(File::Basename::dirname($file->filename));
	$job->{watched} = DPB::Watch->new(
		$job->{fetcher}->file($file->tempfilename),
		$file->{sz}, undef, $job->{started});
	$job->new_fetch_task;
	return $job;
}

sub killinfo
{
	my $self = shift;
	return $self->{file};
}

sub name
{
	my $self = shift;
	my $extra = $self->{task}->want_percent ? "" : " cksum...";
	return '<'.$self->{file}->{name}."(#".$self->{tries}.")".$extra;
}

sub get_timeout
{
	my ($self, $core) = @_;
	return $core->fetch_timeout;
}

1;
