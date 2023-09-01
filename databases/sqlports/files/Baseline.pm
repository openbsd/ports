#! /usr/bin/perl
# $OpenBSD: Baseline.pm,v 1.1 2023/09/01 23:00:13 espie Exp $
#
# Copyright (c) 2006-2013 Marc Espie <espie@openbsd.org>
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

use v5.36;

package Baseline;

sub handle_value($self, $pkgpath, $var, $value)
{
	print join(" ", $pkgpath, $var, $value), "\n";
}

sub parse($self, $fd)
{
	my $subdir;
	while (<$fd>) {
		chomp;
		# kill noise
		if (m/^\=\=\=\>\s*Exiting (.*) with an error$/) {
			next;
		}
		if (m/^\=\=\=\>\s*(.*)/) {
			$subdir = PkgPath->new($1);
		} elsif (my ($pkgpath, $var, $arch, $value) =
		    m/^(.*?)\.([A-Z][A-Za-z0-9_.]*)(?:\-([a-z0-9]+))?\=\s*(.*)\s*$/) {
			if ($value =~ m/^\"(.*)\"$/) {
				$value = $1;
			}
			$self->handle_value($pkgpath, $var, $value);
		}
	}
}

sub get($class)
{
	pipe(my $rh, my $wh);
	my $pid = fork();
	if ($pid == 0) {
		print $wh <<EOT;
DUMMY_PACKAGE=Yes
.include <bsd.port.mk>
EOT
		close $wh;
		exit 0;
	}
	close $wh;
	my @list;
	my $pid2 = open(my $output, "-|");
	if ($pid2) {
		close $rh;
		$class->parse($output);
		waitpid($pid, 0);
		waitpid($pid2, 0);
		if ($? != 0) {
			die("while getting baseline");
		}
	} else {
		close STDIN;
		open(STDIN, '<&', $rh);
		delete $ENV{PKGPATH};
		exec {'make'} ('make', '-C', '/', '-f', '-', 'dump-vars');
    	}
}

1;
