# ex:ts=8 sw=4:
# $OpenBSD: Fetch.pm,v 1.12 2011/07/14 11:03:49 espie Exp $
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
use OpenBSD::md5;
use DPB::Clock;

package DPB::Distfile;

# same distfile may exist in several ports.

my $cache = {};

sub create
{
	my ($class, $file, $short, $site, $distinfo, $v, $distdir) = @_;

	my $sz = $distinfo->{size}{$file};
	my $sha = $distinfo->{sha}{$file};
	if (!defined $sz) {
		die "Incomplete distinfo for $file: missing sz";
	}
	if (!defined $sha) {
		die "Incomplete distinfo for $file: missing sha";
	}
	bless {
		name => $file,
		short => $short,
		sz => $sz,
		sha => $sha,
		site => $site,
		path => $v,
		distdir => $distdir,
	}, $class;
}

sub new
{
	my ($class, $file, $dir, @r) = @_;
	my $full = (defined $dir) ? join('/', $dir->string, $file) : $file;
	$cache->{$full} //= $class->create($full, $file, @r);
}

sub dump
{
	my ($class, $logger) = @_;
	my $log = $logger->create("fetch/distfiles");
	for my $f (sort map {$_->{name}} values %$cache) {
		print $log $f, "\n";
	}
}

sub logname
{
	my $self = shift;
	return $self->{path}->fullpkgpath.":".$self->{name};
}

sub lockname
{
	return shift->{name}.".dist";
}

sub simple_lockname
{
	&lockname;
}

# should be used for rebuild_info only

sub fullpkgpath
{
	return shift->{path}->fullpkgpath;
}

sub tempfilename
{
	my $self = shift;
	return $self->filename.".part";
}

sub filename
{
	my $self = shift;
	return $self->{distdir}."/".$self->{name};
}

sub check
{
	my ($self, $logger) = @_;
	return $self->checksize($logger, $self->filename);

}

sub checksize
{
	my ($self, $logger, $name) = @_;
	# XXX if we matched once, then we match "forever"
	return 1 if $self->{okay};
	if (!stat $name) {
		return 0;
	}
	if ((stat _)[7] != $self->{sz}) {
		my $fh = $logger->open('dist/'.$self->{name});
		print $fh "size does not match\n";
		return 0;
	}
	return 1;
}

sub checksum
{
	my ($self, $name) = @_;
	# XXX if we matched once, then we match "forever"
	return 1 if $self->{okay};
	print "checksum for $name: ";
	if (OpenBSD::sha->new($name)->equals($self->{sha})) {
		$self->{okay} = 1;
		print "OK\n";
		return 1;
	}
	print "BAD\n";
	return 0;
}

sub unlock_conditions
{
	my ($self, $engine) = @_;
	return $self->check($engine->{logger});
}

sub requeue
{
	my ($v, $engine) = @_;
	$engine->requeue_dist($v);
}

# handles fetch information, if required
package DPB::Fetch;

sub new
{
	my ($class, $distdir) = @_;
	bless {distdir => $distdir}, $class;
}

sub read_checksums
{
	my $filename = shift;
	open my $fh, '<', $filename or die "Can't read distinfo $filename";
	my $r = { size => {}, sha => {}};
	my $_;
	while (<$fh>) {
		next if m/^(?:MD5|RMD160|SHA1)/;
		if (m/^SIZE \((.*)\) \= (\d+)$/) {
			$r->{size}->{$1} = $2;
		} elsif (m/^SHA256 \((.*)\) \= (.*)$/) {
			$r->{sha}->{$1} = OpenBSD::sha->fromstring($2);
		} else {
			die "Unknown line in $filename: $_";
		}
	}
	return $r;
}

sub build_distinfo
{
	my ($self, $h) = @_;
	my $distinfo = {};
	for my $v (values %$h) {
		my $info = $v->{info};
		next unless defined $info->{DISTFILES} ||
		    defined $info->{PATCHFILES} ||
		    defined $info->{SUPDISTFILES};

		my $dir = $info->{DIST_SUBDIR};
		my $checksum_file = $info->{CHECKSUM_FILE};

		if (!defined $checksum_file) {
			die "No checksum file for ".$v->fullpkgpath;
		}
		$checksum_file = $checksum_file->string;
		$distinfo->{$checksum_file} //=
		    read_checksums($checksum_file);
		my $checksums = $distinfo->{$checksum_file};

		my $files = {};
		my $build = sub {
			my $arg = shift;
			my $site = 'MASTER_SITES';
			if ($arg =~ m/^(.*)\:(\d)$/) {
				$arg = $1;
				$site.= $2;
			}
			if (!defined $info->{$site}) {
				die "Can't find $site for $arg";
			}
			return DPB::Distfile->new($arg, $dir,
			    $info->{$site}, $checksums, $v, $self->{distdir});
		};

		for my $d ((keys %{$info->{DISTFILES}}), (keys %{$info->{PATCHFILES}})) {
			my $file = &$build($d);
			$files->{$file} = $file;
		}
		for my $d (keys %{$info->{SUPDISTFILES}}) {
			&$build($d);
		}
		for my $k (qw(DIST_SUBDIR CHECKSUM_FILE DISTFILES
		    PATCHFILES SUPDISTFILES MASTER_SITES MASTER_SITES0
		    MASTER_SITES1 MASTER_SITES2 MASTER_SITES3
		    MASTER_SITES4 MASTER_SITES5 MASTER_SITES6
		    MASTER_SITES7 MASTER_SITES8 MASTER_SITES9)) {
		    	delete $info->{$k};
		}
		bless $files, "AddDepends";
		$info->{DIST} = $files;
	}
}

sub fetch
{
	my ($self, $logger, $file, $core, $endcode) = @_;
	my $job = DPB::Job::Fetch->new($logger, $file, $endcode);
	$core->start_job($job, $file);
}

package DPB::Task::Checksum;
our @ISA = qw(DPB::Task::Fork);

sub new
{
	my ($class, $fetcher, $status) = @_;
	bless {fetcher => $fetcher, fetch_status => $status}, $class;
}

sub run
{
	my ($self, $core) = @_;
	my $job = $core->job;
	$self->redirect($job->{log});
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
		if (defined $self->{fetcher}->{initial_sz}) {
			unlink($job->{file}->tempfilename);
		} else {
			shift @{$job->{sites}};
		}
		return $job->bad_file($self->{fetcher}, $core);
	}
	rename($job->{file}->tempfilename, $job->{file}->filename);
	my $sz = $job->{file}->{sz};
	if (defined $self->{fetcher}->{initial_sz}) {
		$sz -= $self->{fetcher}->{initial_sz};
	}
	my $fh = $job->{logger}->open("fetch/good");
	my $elapsed = $self->{fetcher}->elapsed;
	print $fh $self->{fetcher}{site}.$job->{file}->{short}, " in ",
	    $elapsed, "s ";
	if ($elapsed != 0) {
		print $fh "(", sprintf("%.2f", $sz / $elapsed / 1024), "KB/s)";
	}
	print $fh "\n";
	return 1;
}

# Fetching stuff is almost a normal job
package DPB::Task::Fetch;
our @ISA = qw(DPB::Task::Clocked);

sub new
{
	my ($class, $job) = @_;
	if (@{$job->{sites}}) {
		my $o = bless { site => $job->{sites}[0]}, $class;
		my $sz = (stat $job->{file}->tempfilename)[7];
		if (defined $sz) {
			$o->{initial_sz} = $sz;
		}
		return $o;
	} else {
		undef;
	}
}

sub run
{
	my ($self, $core) = @_;
	my $job = $core->job;
	my $shell = $core->{shell};
	my $site = $self->{site};
	my $ftp = OpenBSD::Paths->ftp;
	$self->redirect($job->{log});
	my @cmd = ($ftp, '-C', '-o', $job->{file}->tempfilename, '-v',
	    $site.$job->{file}->{short});
	print STDERR "===> Trying $site\n";
	print STDERR join(' ', @cmd), "\n";
	# run ftp;
	if (defined $shell) {
		$shell->run(join(' ', @cmd));
	} else {
		if ($ftp =~ /\s/) {
			exec join(' ', @cmd);
		} else {
			exec{$ftp} @cmd;
		}
	}
}

sub finalize
{
	my ($self, $core) = @_;
	$self->SUPER::finalize($core);
	my $job = $core->job;
	if ($job->{file}->checksize($job->{logger},
	    $job->{file}->tempfilename)) {
	    	$job->new_checksum_task($self, $core->{status});
	} else {
		# Fetch exited okay, but the file is not the right size
		if ($core->{status} == 0 ||
		# definite error also if file is too large
		    stat($job->{file}->tempfilename) &&
		    (stat _)[7] > $job->{file}->{sz}) {
			unlink($job->{file}->tempfilename);
		}
		shift @{$job->{sites}};
		return $job->bad_file($self, $core);
	}
}

package DPB::Job::Fetch;
our @ISA = qw(DPB::Job::Normal);

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

sub bad_file
{
	my ($job, $task, $core) = @_;
	my $fh = $job->{logger}->open("fetch/bad");
	print $fh $task->{site}.$job->{file}->{short}, "\n";
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
	my ($class, $logger, $file, $e) = @_;
	my $job = bless {
		sites => [@{$file->{site}}],
		file => $file,
		tasks => [],
		endcode => $e,
		logger => $logger,
		log => $logger->make_distlogs($file),
	}, $class;
	File::Path::mkpath(File::Basename::dirname($file->filename));
	$job->{watched} = DPB::Watch->new($file->tempfilename,
		$file->{sz}, undef, $job->{started});
	$job->new_fetch_task;
	return $job;
}

sub name
{
	my $self = shift;
	return '>'.$self->{file}->{name}."(#".$self->{tries}.")";
}

sub watched
{
	my ($self, $current, $core) = @_;
	my $diff = $self->{watched}->check_change($current);
	my $msg = $self->{watched}->change_message($diff);
	return $msg;
}

1;
