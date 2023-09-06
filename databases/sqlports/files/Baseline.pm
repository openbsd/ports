#! /usr/bin/perl
# $OpenBSD: Baseline.pm,v 1.4 2023/09/06 11:56:34 espie Exp $
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

sub parse($self, $fd)
{
	my $subdir;
	my $baseline = {};
	while (<$fd>) {
		chomp;
		if (my ($pkgpath, $var, $arch, $value) =
		    m/^(.*?)\.([A-Z][A-Za-z0-9_.]*)(?:\-([a-z0-9]+))?\=\s*(.*)\s*$/) {
			if ($value =~ m/^\"(.*)\"$/) {
				$value = $1;
			}
			$baseline->{$var} = $value;
		}
	}
	return $baseline;
}

sub get($class)
{
	my $pid = open(my $output, "-|");
	if ($pid) {
		my $baseline = $class->parse($output);
		close($output);
		return $baseline;
	} else {
		delete $ENV{PKGPATH};
		$class->dump_vars( '-C', '/', 
		    '-f', '/usr/share/mk/bsd.port.mk', 
		    'DUMMY_PACKAGE=Yes');
    	}
}

sub dump_vars($, @params)
{
	close STDERR;
	open STDERR, '>&STDOUT';
	my @vars = ('LIBECXX=$${LIBECXX}', 
	    'COMPILER_LIBCXX=$${COMPILER_LIBCXX}');
	exec {'make'} ("make", @params, "dump-vars", @vars);
	die $!;
}
1;
