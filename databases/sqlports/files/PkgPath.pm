# ex:ts=8 sw=4:
# $OpenBSD: PkgPath.pm,v 1.5 2015/04/19 12:08:02 espie Exp $
#
# Copyright (c) 2012 Marc Espie <espie@openbsd.org>
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

BEGIN {
	$ports1 = $ENV{PORTSDIR} || '/usr/ports';
}
use lib ("$ports1/infrastructure/lib");

use DPB::BasePkgPath;

package PkgPath;
our @ISA = qw(DPB::BasePkgPath);
use Info;

sub init
{
}

sub clone_properties
{
	my ($n, $o) = @_;
	$n->{info} //= $o->{info};
}

sub subpackage
{
	my $self = shift;
	return $self->{info}->value('SUBPACKAGE');
}

sub flavor
{
	my $self = shift;
	my $value = $self->{info}->value('FLAVOR');
	$value =~ s/^\s+//;
	$value =~ s/\s+$//;
	my @l = split(/\s+/, $value);
	my %values = map {($_,1)}  @l;
	
	return \%values;
}

sub equates
{
}

sub simplifies_to
{
}

sub change_multi
{
	my ($path, $multi) = @_;
	# make a tmp copy, non registered
	my $tmp = ref($path)->create($path->fullpkgpath);
	if ($multi eq '-main') {
		$tmp->{m} = undef;
	} else {
		$tmp->{m} = $multi;
	}
	return $tmp->normalize;
}

sub break
{
	my ($path, $message) = @_;
	$path->{parent} //= '?';
	print STDERR $path->fullpkgpath, "(", $path->{parent}, "):", 
	    $message, "\n";
}

1;
