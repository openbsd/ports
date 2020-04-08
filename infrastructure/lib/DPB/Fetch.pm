# ex:ts=8 sw=4:
# $OpenBSD: Fetch.pm,v 1.88 2020/04/08 08:01:36 espie Exp $
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
use DPB::User;

# handles fetch information, if required
package DPB::Fetch;
our @ISA = (qw(DPB::UserProxy));

sub new
{
	my ($class, $distdir, $logger, $state, $ftp_only) = @_;
	my $o = bless {distdir => $distdir, sha => {}, reverse => {},
	    logger => $logger,
	    known_sha => {}, known_files => {},
	    known_short => {},
	    user => $state->{fetch_user},
	    state => $state,
	    ftp_only => $ftp_only,
	    cache => {},
	    build_user => $state->{build_user},
	    fetch_only => $state->{fetch_only}}, $class;
	my $fh = $o->open('<', "$distdir/distinfo");
	if (defined $fh) {
		print "Reading distinfo...";
		while (<$fh>) {
			if (m/^SHA256\s*\((.*)\) \= (.*)/) {
				next unless -f "$distdir/$1";
				$o->{sha}{$1} = OpenBSD::sha->fromstring($2);
				$o->{reverse}{$2} = $1;
			}
		}
		close $fh;
	}
	print "zap duplicates...";
	# rewrite "more or less" the same info, so we flush duplicates,
	# e.g., keep only most recent checksum seen
	$o->make_path($distdir);
	my $name = "$distdir/distinfo";
	$fh = $o->open('>', "$name.new");
	if (defined $fh) {
		for my $k (sort keys %{$o->{sha}}) {
			print $fh "SHA256 ($k) = ", $o->{sha}{$k}->stringize,
			    "\n" or $state->fatal("Can't write #1: #2",
			    	$name, $!);

		}
		close ($fh);
	}
	print "Done\n";
	$o->rename("$name.new", $name);
	$o->{log} = $o->open(">>", $name);
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

sub parse_old
{
	my ($self, $fh, $fh2) = @_;
	while (<$fh>) {
		if (my ($ts, $file, $sha) =
		    m/^(\d+(?:\.\d+)?)\s+SHA256\s*\((.*)\) \= (.*\=)$/) {
			$file = DPB::Distfile->normalize($file);
			if (!$self->{known_sha}{$sha}{$file}) {
				$self->mark_sha($sha, $file);
				$self->{known_file}{$file} = 1;
				print $fh2 "$ts SHA256 ($file) = $sha\n"
				    or return 0;
			}
		}
	}
	return 1;
}

sub expire_old
{
	my $self = shift;
	my $ts = CORE::time();
	my $distdir = $self->distdir;
	chdir($distdir) or die "can't change to distdir: $!";
	my $fh2 = $self->open(">", "history.new");
	return if !$fh2;
	if (my $fh = $self->open('<', "history")) {
		$self->parse_old($fh, $fh2) or return;
		close $fh;
	}
	while (my ($sha, $file) = each %{$self->{reverse}}) {
		next if $self->{known_sha}{$sha}{$file};
		print $fh2 "$ts SHA256 ($file) = $sha\n" or return;
		$self->{known_file}{$file} = 1;
	}
	for my $special (qw(Makefile distinfo history history.new)) {
		$self->{known_file}{$special} = 1;
	}

	my $fatal = 0;

	# let's also scan the directory proper
	require File::Find;
	File::Find::find(sub {
		if (-d $_ && 
		    ($File::Find::name eq "./by_cipher" || 
		     $File::Find::name eq "./list" ||
		    $File::Find::name eq "./build-stats")) {
			$File::Find::prune = 1;
			return;
		}
		return unless -f _;
		return if $fatal;
		return if m/\.part$/;
		my $actual = $File::Find::name;
		$actual =~ s/^.\///;
		return if $self->{known_file}{$actual};
		my $sha = OpenBSD::sha->new($_)->stringize;
		print $fh2 "$ts SHA256 ($actual) = $sha\n" or $fatal = 1;
		$self->mark_sha($sha, $actual);
	}, ".");

	my $c = "by_cipher/sha256";
	if (-d $c && !$fatal) {
		# and scan the ciphers as well !
		File::Find::find(sub {
			return unless -f $_;
			return if $fatal;
			if ($File::Find::dir =~ 
			    m/^\.\/by_cipher\/sha256\/..?\/(.*)$/) {
				my $sha = $1;
				return if $self->{known_sha}{$sha}{$_};
				return if $self->{known_short}{$sha}{$_};
				print $fh2 "$ts SHA256 ($_) = ", $sha, "\n"
				    or $fatal = 1;
			}
		}, $c);
	}

	return if $fatal;
	close $fh2 && $self->rename("history.new", "history");
}

sub forget_cache
{
	my $self = shift;
	$self->{cache} = {};
}

sub distdir
{
	my $self = shift;
	return $self->{distdir};
}

sub read_checksums
{
	my ($self, $filename) = @_;
	# XXX the fetch user might not have read access there ?
	my $fh = $self->{build_user}->open('<', $filename);
	if (!defined $fh) {
		return { error => $! };
	}
	my $r = { size => {}, sha => {}};
	while (<$fh>) {
		if (my ($file, $sz) = m/^SIZE \((.*)\) \= (\d+)$/) {
			$r->{size}{DPB::Distfile->normalize($file)} = $sz;
		} elsif (my ($file2, $sha) = m/^SHA256 \((.*)\) \= (.*)$/) {
			$r->{sha}{DPB::Distfile->normalize($file2)} = 
			    OpenBSD::sha->fromstring($sha);
		}
		# next!
	}
	return $r;
}

sub build1info
{
	my ($self, $v, $mirror, $roach) = @_;
	my $info = $v->{info};
	return unless defined $info->{DISTFILES} ||
	    defined $info->{PATCHFILES} ||
	    defined $info->{SUPDISTFILES};

	my $dir = $info->{DIST_SUBDIR};
	my $checksum_file = $info->{CHECKSUM_FILE};

	if (!defined $checksum_file) {
		$v->break("No checksum file");
		return;
	}
	$checksum_file = $checksum_file->string;
	# collapse identical checksum files together
	$checksum_file =~ s,/[^/]+/\.\./,/,g;
	my $fname = $self->{state}->anchor($checksum_file);
	$self->{cache}{$checksum_file} //=
	    $self->read_checksums($fname);
	my $checksums = $self->{cache}{$checksum_file};

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
		return DPB::Distfile->new($arg, $url, $dir,
		    $info->{$site},
		    $checksums, $fname, $v, $self);
	};

	for my $d (@{$info->{DISTFILES}}, (keys %{$info->{PATCHFILES}})) {
		my $file = &$build($d);
		$files->{$file} = $file if defined $file;
	}
	if ($mirror) {
		for my $d (keys %{$info->{SUPDISTFILES}}) {
			my $file = &$build($d);
			$files->{$file} = $file if defined $file;
		}
	}

	$roach->build1info($v);
	for my $k (qw(DIST_SUBDIR CHECKSUM_FILE DISTFILES
	    PATCHFILES SUPDISTFILES MASTER_SITES MASTER_SITES0
	    MASTER_SITES1 MASTER_SITES2 MASTER_SITES3
	    MASTER_SITES4 MASTER_SITES5 MASTER_SITES6
	    MASTER_SITES7 MASTER_SITES8 MASTER_SITES9)) {
		delete $info->{$k};
	}
	bless $files, "AddDepends";
	$info->{DIST} = $files;
	if ($self->{ftp_only} && defined $info->{PERMIT_DISTFILES}) {
		$info->{DISTIGNORE} = 1;
		$info->{IGNORE} //= AddIgnore->new(
		    "Distfile not allowed for ftp");
	}
}

sub build_distinfo
{
	my ($self, $h, $mirror, $roach) = @_;
	for my $v (values %$h) {
		$self->build1info($v, $mirror, $roach);
	}
}

sub fetch
{
	my ($self, $file, $core, $endcode) = @_;
	require DPB::Job::Fetch;
	my $job = DPB::Job::Fetch->new($file, $endcode, $self, 
	    $self->{logger});
	$core->start_job($job, $file);
}

1;
