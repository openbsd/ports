# ex:ts=8 sw=4:
# $OpenBSD: Fetch.pm,v 1.55 2013/09/16 11:23:50 espie Exp $
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
	my ($class, $file, $short, $site, $distinfo, $v, $repo) = @_;

	my $sz = $distinfo->{size}{$file};
	my $sha = $distinfo->{sha}{$file};
	if (!defined $sz || !defined $sha) {
		$v->break("Incomplete info for $file");
		return;
	}
	$repo->known_file($sha, $file);
	bless {
		name => $file,
		short => $short,
		sz => $sz,
		sha => $sha,
		site => $site,
		path => $v,
		repo => $repo,
	}, $class;
}

sub distdir
{
	my ($self, @rest) = @_;
	return join('/', $self->{repo}->distdir, @rest);
}

sub debug_dump
{
	my $self = shift;
	my $msg = $self->logname;
	if ($self->{okay}) {
		$msg .= "(okay)";
	}
}

sub cached
{
	my $self = shift;
	return $self->{repo}{sha};
}

sub new
{
	my ($class, $file, $url, $dir, @r) = @_;
	my $full = (defined $dir) ? join('/', $dir->string, $file) : $file;
	if (!defined $url) {
		$url = $file;
	}
	$cache->{$full} //= $class->create($full, $url, @r);
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

# should be used for rebuild_info and logging only

sub fullpkgpath
{
	return shift->{path}->fullpkgpath;
}

sub print_parent
{
	my ($self, $fh) = @_;
	$self->{path}->print_parent($fh);
}

sub pkgpath_and_flavors
{
	return shift->{path}->pkgpath_and_flavors;
}

sub tempfilename
{
	my $self = shift;
	return $self->filename.".part";
}

sub filename
{
	my $self = shift;
	return $self->distdir($self->{name});
}

# this is the entry point from the Engine, this is run as soon as the path
# has been scanned. For performance reasons, we cannot run a sha at that point.
sub check
{
	my ($self, $logger) = @_;
	# XXX in fetch_only mode, we won't build anything, so this is
	# the only place we can check the file is okay
	if ($self->{repo}->{fetch_only}) {
		return $self->checksum_and_cache($logger, $self->filename);
	} else {
		return $self->checkcache_or_size($logger, $self->filename);
	}
}

sub make_link
{
	my $self = shift;
	my $sha = $self->{sha}->stringize;
	if ($sha =~ m/^(..)/) {
		my $result = $self->distdir('by_cipher', 'sha256', $1, $sha);
		File::Path::make_path($result);
		my $dest = $self->{name};
		$dest =~ s/^.*\///;
		link $self->filename, "$result/$dest";
	}
}

sub find_copy
{
	my ($self, $name) = @_;

	# sha256 must match AND size as well
	my $alternate = $self->{repo}{reverse}{$self->{sha}->stringize};
	if (defined $alternate) {
		my $full = $self->distdir($alternate);
		if ((stat $full)[7] == $self->{sz}) {
			unlink($name);
			if (link($full, $name)) {
				$self->do_cache;
				$self->{okay} = 1;
				return 1;
			}
		}
	}
	return 0;
}

sub checkcache_or_size
{
	my ($self, $logger, $name) = @_;
	# XXX if we matched once, then we match "forever"
	return 1 if $self->{okay};
	if (defined $self->cached->{$self->{name}}) {
		return $self->checkcached($logger, $name);
	}
	return $self->checksize($logger, $name);
}

sub checksize
{
	my ($self, $logger, $name) = @_;
	# XXX if we matched once, then we match "forever"
	return 1 if $self->{okay};
	if ($self->{sz} == 0) {
		my $fh = $logger->open('dist/'.$self->{name});
		print $fh "incomplete distinfo: no size\n";
	}
		
	if (!stat $name) {
		return $self->find_copy($name);
	}
	if ((stat _)[7] != $self->{sz}) {
		my $fh = $logger->open('dist/'.$self->{name});
		print $fh "size does not match\n";
		return 0;
	}
	return 1;
}

sub checkcached
{
	my ($self, $logger, $name) = @_;
	if (!defined $self->{sha}) {
		my $fh = $logger->open('dist/'.$self->{name});
		print $fh "incomplete distinfo: no sha\n";
		return 0;
	}
	if ($self->cached->{$self->{name}}->equals($self->{sha})) {
		$self->{okay} = 1;
		return 1;
	} else {
		delete $self->cached->{$self->{name}};
		my $fh = $logger->open('dist/'.$self->{name});
		print $fh "sha cache info does not match,";
		if ($self->caches_okay($name)) {
			print $fh "but actual file had the right sha\n";
			return 1;
		} else {
			print $fh "and actual file was wrong, deleted\n";
			return 0;
		}
	}
}

sub do_cache
{
	my $self = shift;

	eval {
	$self->make_link;
	print {$self->{repo}->{log}} "SHA256 ($self->{name}) = ",
	    $self->{sha}->stringize, "\n";
	};
	# also enter ourselves into the internal repository
	$self->cached->{$self->{name}} = $self->{sha};
}

# this is where we actually enter new files in the cache, when they do match.
sub caches_okay
{
	my ($self, $name) = @_;
	if (-f -r $name) {
		if (OpenBSD::sha->new($name)->equals($self->{sha})) {
			$self->{okay} = 1;
			$self->do_cache;
			return 1;
		} else {
			unlink($name);
		}
	}
	return 0;
}

sub checksum_and_cache
{
	my ($self, $logger, $name) = @_;
	# XXX if we matched once, then we match "forever"
	return 1 if $self->{okay};
	if (!defined $self->{sha}) {
		return 0;
	}
	if (defined $self->cached->{$self->{name}}) {
		return $self->checkcached($logger, $name);
	}
	if ($self->caches_okay($name)) {
		return 1;
	}
	return $self->find_copy($name);
}

sub cache
{
	my $self = shift;
	# XXX if we matched once, then we match "forever"
	return 1 if $self->{okay};
	$self->{okay} = 1;
	# already done
	if (defined $self->cached->{$self->{name}}) {
		if ($self->cached->{$self->{name}}->equals($self->{sha})) {
			return;
		}
	}
	$self->do_cache;
}

sub checksum
{
	my ($self, $name) = @_;
	# XXX if we matched once, then we match "forever"
	return 1 if $self->{okay};
	print "checksum for $name: ";
	if (!defined $self->{sha}) {
		print "NONE\n";
		return 0;
	}
	if (defined $self->cached->{$self->{name}}) {
		if ($self->cached->{$self->{name}}->equals($self->{sha})) {
			print "OK (cached)\n";
			$self->{okay} = 1;
			return 1;
		}
	}
	if ($self->caches_okay($name)) {
		print "OK\n";
		return 1;
	}
	print "BAD\n";
	return 0;
}

sub cached_checksum
{
	my ($self, $fh, $name) = @_;
	# XXX if we matched once, then we match "forever"
	return 1 if $self->{okay};
	print $fh "checksum for $name: ";
	if (!defined $self->{sha}) {
		print $fh "NONE\n";
		return 0;
	}
	if (defined $self->cached->{$self->{name}}) {
		if ($self->cached->{$self->{name}}->equals($self->{sha})) {
			print $fh "OK (cached)\n";
			$self->{okay} = 1;
			return 1;
		}
	}
	print $fh "UNKNOWN (uncached)\n";
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

sub forget
{
	my $self = shift;
	delete $self->{size};
	delete $self->{sha};
	delete $self->{okay};
}

# handles fetch information, if required
package DPB::Fetch;

sub new
{
	my ($class, $distdir, $logger, $state) = @_;
	my $o = bless {distdir => $distdir, sha => {}, reverse => {},
	    known_sha => {}, known_files => {},
	    known_short => {},
	    fetch_only => $state->{fetch_only}}, $class;
	if (defined $state->{subst}->value('FTP_ONLY')) {
		$o->{ftp_only} = 1;
	}
	if (defined $state->{subst}->value('CDROM_ONLY')) {
		$o->{cdrom_only} = 1;
	}
	if (open(my $fh, '<', "$distdir/distinfo")) {
		print "Reading distinfo...";
		my $_;
		while (<$fh>) {
			if (m/^SHA256\s*\((.*)\) \= (.*)/) {
				next unless -f "$distdir/$1";
				$o->{sha}{$1} = OpenBSD::sha->fromstring($2);
				$o->{reverse}{$2} = $1;
			}
		}
	}
	print "zap duplicates...";
	# rewrite "more or less" the same info, so we flush duplicates,
	# e.g., keep only most recent checksum seen
	File::Path::make_path($distdir);
	open(my $fh, '>', "$distdir/distinfo.new");
	for my $k (sort keys %{$o->{sha}}) {
		print $fh "SHA256 ($k) = ", $o->{sha}{$k}->stringize,
		    "\n";
	}
	close ($fh);
	print "Done\n";
	rename("$distdir/distinfo.new", "$distdir/distinfo");
	open($o->{log}, ">>", "$distdir/distinfo");
	DPB::Util->make_hot($o->{log});
	return $o;
}

sub mark_sha
{
	my ($self, $sha, $file) = @_;

	$self->{known_sha}{$sha}{$file} = 1;

	# next cases are only needed to weed out by_cipher of extra links
	if ($file =~ m/^.*\/([^\/]+)$/) {
		$self->{known_short}{$sha}{$1} = 1;
	}

	# in particular, double / in $sha will vanish thanks to the fs
	my $do = 0;
	if ($sha =~ s/\/\//\//g) {
		$do++;
	}
	if ($sha =~ s/^\///) {
		$do++;
	}
	if ($do) {
		if ($file =~ m/^.*\/([^\/]+)$/) {
			$self->{known_short}{$sha}{$1} = 1;
		} else {
			$self->{known_short}{$sha}{$file} = 1;
		}
	}
}

sub known_file
{
	my ($self, $sha, $file) = @_;
	$self->mark_sha($sha->stringize, $file);
	$self->{known_file}{$file} = 1;
}

sub run_expire_old
{
	my ($self, $core, $opt_e) = @_;
	$core->start_job(DPB::Job::Normal->new(
	    sub {
		$self->expire_old;
	    },
	    sub {
		# and we will never need this again
		delete $self->{known_file};
		delete $self->{known_sha};
		delete $self->{known_short};
		if (!$opt_e) {
			$core->mark_ready;
		}
		return 0;
	    }, 
	    "UPDATING DISTFILES HISTORY"));
	return 1;
}

sub expire_old
{
	my $self = shift;
	my $ts = time();
	my $distdir = $self->distdir;
	open my $fh2, ">", "$distdir/history.new" or return;
	if (open(my $fh, '<', "$distdir/history")) {
		my $_;
		while (<$fh>) {
			if (m/^\d+\s+SHA256\s*\((.*)\) \= (.*\=)$/) {
				my ($file, $sha) = ($1, $2);
				if (!$self->{known_sha}{$sha}{$file}) {
					$self->mark_sha($sha, $file);
					$self->{known_file}{$file} = 1;
					print $fh2 $_;
				}
			}
		}
		close $fh;
	}
	while (my ($sha, $file) = each %{$self->{reverse}}) {
		next if $self->{known_sha}{$sha}{$file};
		print $fh2 "$ts SHA256 ($file) = $sha\n";
		$self->{known_file}{$file} = 1;
	}
	for my $special (qw(Makefile distinfo history)) {
		$self->{known_file}{$special} = 1;
	}

	# let's also scan the directory proper
	require File::Find;
	File::Find::find(sub {
		if (-d $_ && 
		    ($File::Find::name eq "$distdir/by_cipher" || 
		     $File::Find::name eq "$distdir/list" ||
		    $File::Find::name eq "$distdir/build-stats")) {
			$File::Find::prune = 1;
			return;
		}
		return unless -f _;
		return if m/\.part$/;
		my $actual = $File::Find::name;
		$actual =~ s/^\Q$distdir\E\/?//;
		return if $self->{known_file}{$actual};
		my $sha = OpenBSD::sha->new($_)->stringize;
		print $fh2 "$ts SHA256 ($actual) = $sha\n";
		$self->mark_sha($sha, $actual);
	}, $distdir);

	my $c = "$distdir/by_cipher/sha256";
	if (-d $c) {
		# and scan the ciphers as well !
		File::Find::find(sub {
			return unless -f $_;
			if ($File::Find::dir =~ 
			    m/^\Q$distdir\E\/by_cipher\/sha256\/..?\/(.*)$/) {
				my $sha = $1;
				return if $self->{known_sha}{$sha}{$_};
				return if $self->{known_short}{$sha}{$_};
				print $fh2 "$ts SHA256 ($_) = ", $sha, "\n";
			}
		}, $c);
	}

	close $fh2;
	rename("$distdir/history.new", "$distdir/history");
}

sub distdir
{
	my $self = shift;
	return $self->{distdir};
}

sub read_checksums
{
	my $filename = shift;
	open my $fh, '<', $filename or return;
	my $r = { size => {}, sha => {}};
	my $_;
	while (<$fh>) {
		next if m/^(?:MD5|RMD160|SHA1)/;
		if (m/^SIZE \((.*)\) \= (\d+)$/) {
			$r->{size}->{$1} = $2;
		} elsif (m/^SHA256 \((.*)\) \= (.*)$/) {
			$r->{sha}->{$1} = OpenBSD::sha->fromstring($2);
		} else {
			next;
		}
	}
	return $r;
}

sub build_distinfo
{
	my ($self, $h, $mirror) = @_;
	my $distinfo = {};
	for my $v (values %$h) {
		my $info = $v->{info};
		next unless defined $info->{DISTFILES} ||
		    defined $info->{PATCHFILES} ||
		    defined $info->{SUPDISTFILES};

		my $dir = $info->{DIST_SUBDIR};
		my $checksum_file = $info->{CHECKSUM_FILE};

		if (!defined $checksum_file) {
			$v->break("No checksum file");
			next;
		}
		$checksum_file = $checksum_file->string;
		$distinfo->{$checksum_file} //=
		    read_checksums($checksum_file);
		my $checksums = $distinfo->{$checksum_file};

		my $files = {};
		my $build = sub {
			my $arg = shift;
			my $site = 'MASTER_SITES';
			my $url;
			if ($arg =~ m/^(.*)\:(\d)$/) {
				$arg = $1;
				$site.= $2;
			}
			if ($arg =~ m/^(.*)\{(.*)\}$/) {
				$arg = $1;
				$url = $2;
			}
			if (!defined $info->{$site}) {
				$v->break("Can't find $site for $arg");
				return;
			}
			return DPB::Distfile->new($arg, $url, $dir,
			    $info->{$site}, $checksums, $v, $self);
		};

		for my $d ((keys %{$info->{DISTFILES}}), (keys %{$info->{PATCHFILES}})) {
			my $file = &$build($d);
			$files->{$file} = $file if defined $file;
		}
		if ($mirror) {
			for my $d (keys %{$info->{SUPDISTFILES}}) {
				my $file = &$build($d);
				$files->{$file} = $file if defined $file;
			}
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
		if ($self->{cdrom_only} && 
		    defined $info->{PERMIT_PACKAGE_CDROM}) {
			$info->{DISTIGNORE} = 1;
			$info->{IGNORE} //= AddIgnore->new(
				"Distfile not allowed for cdrom");
		} elsif ($self->{ftp_only} &&
		    defined $info->{PERMIT_PACKAGE_FTP}) {
			$info->{DISTIGNORE} = 1;
			$info->{IGNORE} //= AddIgnore->new(
			    "Distfile not allowed for ftp");
		}
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
		if (defined $self->{fetcher}->{initial_sz}) {
			unlink($job->{file}->tempfilename);
		} else {
			shift @{$job->{sites}};
		}
		return $job->bad_file($self->{fetcher}, $core);
	}
	rename($job->{file}->tempfilename, $job->{file}->filename);
	print {$job->{logfh}} "Renamed to ", $job->{file}->filename, "\n";
	$job->{file}->cache;
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
	my $shell = $core->shell;
	my $site = $self->{site};
	$self->redirect($job->{log});
	if ($job->{file}{sz} == 0) {
		print STDERR "No size in distinfo\n";
		exit(1);
	}
	my $ftp = OpenBSD::Paths->ftp;
	$self->redirect($job->{log});
	my @cmd = ('-C', '-o', $job->{file}->tempfilename, '-v',
	    $site.$job->{file}->{short});
	if ($ftp =~ /\s/) {
		unshift @cmd, split(/\s+/, $ftp);
	} else {
		unshift @cmd, $ftp;
	}
	print STDERR "===> Trying $site\n";
	print STDERR join(' ', @cmd), "\n";
	# run ftp;
	$core->shell->exec(@cmd);
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
		if ($job->{file}->{sz} == 0) {
			$job->{sites} = [];
			return $job->bad_file($self, $core);
		}
		# Fetch exited okay, but the file is not the right size
		if ($core->{status} == 0 ||
		# definite error also if file is too large
		    stat($job->{file}->tempfilename) &&
		    (stat _)[7] > $job->{file}->{sz}) {
			unlink($job->{file}->tempfilename);
		}
		# if we got suspended, well, might have to retry same site
		if (!$self->{got_suspended}) {
			shift @{$job->{sites}};
		}
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
	open $job->{logfh}, '>>', $job->{log};
	print {$job->{logfh}} ">>> From ", $file->fullpkgpath, "\n";
	File::Path::mkpath(File::Basename::dirname($file->filename));
	$job->{watched} = DPB::Watch->new($file->tempfilename,
		$file->{sz}, undef, $job->{started});
	$job->new_fetch_task;
	return $job;
}

sub name
{
	my $self = shift;
	return '<'.$self->{file}->{name}."(#".$self->{tries}.")";
}

sub watched
{
	my ($self, $current, $core) = @_;
	my $diff = $self->{watched}->check_change($current);
	my $msg = $self->{watched}->change_message($diff);
	my $to = $core->fetch_timeout;
	if (defined $to) {
		if ($diff > $to) {
			$self->{stuck} =
			    "KILLED: $self->{current} stuck at $msg";
			kill 9, $core->{pid};
			return $self->{stuck};
		}
	}
	return $msg;
}

1;
