# ex:ts=8 sw=4:
# $OpenBSD: Fetch.pm,v 1.1 2011/03/22 19:48:01 espie Exp $
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

package DPB::Distfile;

# same distfile may exist in several ports.

my $cache = {};

sub create
{
	my ($class, $file, $site, $distinfo) = @_;

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
		sz => $sz,
		sha => $sha,
		site => $site,
	}, $class;
}

sub new
{
	my ($class, $file, $dir, $site, $distinfo) = @_;
	if (defined $dir) {
		$file = "$dir/$file";
	}
	$cache->{$file} //= $class->create($file, $site, $distinfo);
}

# handles fetch information, if required
package DPB::Fetch;

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
	my ($class, $h) = @_;
	my $distinfo = {};
	for my $v (values %$h) {
		my $info = $v->{info};
		next unless defined $info->{DISTFILES} || 
		    defined $info->{PATCHFILES};

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

		for my $d ((keys %{$info->{DISTFILES}}), (keys %{$info->{PATCHFILES}})) {
			my $site = 'MASTER_SITES';
			if ($d =~ m/^(.*)\:(\d)$/) {
				$d = $1;
				$site.= $2;
			}
			if (!defined $info->{$site}) {
				die "Can't find $site for $d";
			}
			my $file = DPB::Distfile->new($d, $dir, 
			    $info->{$site}, $checksums);
			$files->{$file} = $file;
		}
		for my $k (qw(DIST_SUBDIR CHECKSUM_FILE DISTFILES
		    PATCHFILES MASTER_SITES MASTER_SITES0 
		    MASTER_SITES1 MASTER_SITES2 MASTER_SITES3 
		    MASTER_SITES4 MASTER_SITES5 MASTER_SITES6 
		    MASTER_SITES7 MASTER_SITES8 MASTER_SITES9)) {
		    	undef $info->{$k};
		}
		$info->{distfiles} = $files;
	}
}

1;
