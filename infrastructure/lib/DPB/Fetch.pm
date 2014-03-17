# ex:ts=8 sw=4:
# $OpenBSD: Fetch.pm,v 1.63 2014/03/17 10:48:40 espie Exp $
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
use DPB::Clock;
use DPB::Distfile;
use OpenBSD::md5;

# handles fetch information, if required
package DPB::Fetch;

sub new
{
	my ($class, $distdir, $logger, $state) = @_;
	my $o = bless {distdir => $distdir, sha => {}, reverse => {},
	    logger => $logger,
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
	$core->unsquiggle;
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
			if ($arg =~ m/^(.*)\{(.*)\}(.*)$/) {
				$arg = $1 . $3;
				$url = $2 . $3;
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
	my ($self, $file, $core, $endcode) = @_;
	require DPB::Job::Fetch;
	my $job = DPB::Job::Fetch->new($file, $endcode);
	$core->start_job($job, $file);
}

1;
