# ex:ts=8 sw=4:
# $OpenBSD: Signature.pm,v 1.1 2010/02/24 11:33:31 espie Exp $
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

use OpenBSD::LibSpec;
package DPB::Signature::Dir;
sub best
{
	my ($h, $lib) = @_;
	my $old = $h->{$lib->stem} //= $lib;
	return if $old eq $lib;
	return if $old->major > $lib->major;
	return if $old->major == $lib->major && $old->minor > $lib->minor;
	$h->{$lib->stem} = $lib;
}

sub new
{
	my $class = shift;
	bless {}, $class;
}

sub compare1
{
	my ($s1, $s2) = @_;
	while (my ($stem, $lib) = each %$s1) {
		if (!defined $s2->{$stem}) {
			return "Can't find ".$lib->to_string;
		}
		if ($s2->{$stem}->to_string ne $lib->to_string) {
			return "versions don't match: ".
			    $s2->{$stem}->to_string." vs ". $lib->to_string;
		}
	}
	return 0;
}

sub compare
{
	my ($s1, $s2) = @_;
	return compare1($s1, $s2) || compare1($s2, $s1);
}

package DPB::Signature;

my $byhost = {};

sub signature
{
	my ($class, $job) = @_;
	$byhost->{$job->host} //= $class->compute_signature($job);
}

sub compute_signature
{
	my ($class, $job) = @_;
	my $o = bless {host => $job->host}, $class;
	for my $base (OpenBSD::Paths->library_dirs) {
		my $repo = $o->{$base} = DPB::Signature::Dir->new;
		my $dir = "$base/lib";
		$job->start_pipe(sub {
			my $shell = shift;
			if (defined $shell) {
				$shell->run("ls $dir");
			} else {
				exec{"/bin/ls"} ("ls", $dir);
			}
			exit(1);
		}, "ls");
		my $fh = $job->fh;
		while (<$fh>) {
			my $lib = OpenBSD::Library->from_string("$dir/$_");
			next unless $lib->is_valid;
			$repo->best($lib);
		}
		$job->terminate;
    	}
	return $o;
}

sub compare
{
	my ($s1, $s2) = @_;
	for my $dir (OpenBSD::Paths->library_dirs) {
		my $r = $s1->{$dir}->compare($s2->{$dir});
		if ($r) {
			print STDERR "Error between $s1->{host} and $s2->{host}: $r\n";
			return 1;
		}
	}
	return 0;
}

1;
