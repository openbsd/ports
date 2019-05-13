# $OpenBSD: License.pm,v 1.5 2019/05/13 00:21:29 kmos Exp $
#
# Copyright (c) 2015 Giannis Tsaraias <tsg@openbsd.org>
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

package OpenBSD::PortGen::License;

use 5.012;
use warnings;

use parent qw( Exporter );

our @EXPORT_OK = qw(
    is_good
    pretty_license
);

# Add licenses not recognized here.
my %good_licenses = (
	agpl_3      => 'AGPL 3',
	apache_1_1  => 'Apache 1.1',
	apache_2_0  => 'Apache 2.0',
	artistic_1  => 'Artistic 1.0',
	artistic_2  => 'Artistic 2.0',
	bsd         => 'BSD',
	freebsd     => 'FreeBSD',
	gpl_2       => 'GPLv2',
	gpl_2_0     => 'GPLv2',
	gpl_3       => 'GPLv3',
	gpl_3_0     => 'GPLv3',
	isc         => 'ISC',
	lgpl        => 'LGPL',
	lgpl_2_1    => 'LGPL v2.1',
	'lgpl_2_1+' => 'LGPL v2.1',
	mit         => 'MIT',
	mpl_v2      => 'MPL 2.0',
	new_bsd     => 'BSD-3',
	perl_5      => 'Perl',
	ruby        => 'Ruby',
	qpl_1_0     => 'QPLv1',
	zlib        => 'zlib',
);

sub is_good
{
	my $license = shift;

	return unless $license;
	return defined $good_licenses{ _munge($license) };
}

sub pretty_license
{
	my $raw = shift;

	return "license field not set, consider bugging module's author"
	    if !$raw or $raw eq 'UNKNOWN';
	return $good_licenses{ _munge($raw) } || "unknown license -> '$raw'";
}

sub _munge
{
	my $license = shift;

	$license = lc $license;
	$license =~ s/[,-\.\s]/_/g;
	$license =~ s/_license//;
	$license =~ s/_version//;
	$license =~ s/_{2,}/_/g;

	return $license;
}

1;
