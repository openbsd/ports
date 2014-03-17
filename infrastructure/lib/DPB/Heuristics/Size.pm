
# ex:ts=8 sw=4:
# $OpenBSD: Size.pm,v 1.5 2014/03/17 10:48:40 espie Exp $
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
# this package is responsible for recording build sizes
# and using tmpfs accordingly
package DPB::Heuristics::Size;
my (%wrkdir, %pkgname);

use DPB::Serialize;

sub new
{
	my ($class, $state) = @_;
	bless {state => $state}, $class;
}
sub add_size_info
{
	my ($self, $path, $pkgname, $sz) = @_;
	$wrkdir{$path->pkgpath_and_flavors} = $sz;
	if (defined $pkgname) {
		$pkgname{$path->fullpkgpath} = $pkgname;
	}
}

sub match_pkgname
{
	my ($self, $v) = @_;
	my $p = $pkgname{$v->fullpkgpath};
	if (!defined $p) {
		return 0;
	}
	if ($p eq $v->fullpkgname) {
		return 1;
	}
	return 0;
}

my $used_memory = {};
my $used_per_host = {};

sub build_in_memory
{
	my ($self, $fh, $core, $v) = @_;
	my $t = $core->memory;
	return 0 if !defined $t;

	# first match previous affinity
	if ($v->{affinity}) {
		print $fh ">>> Matching affinity: ", $v->{affinity}, "\n";
		return $v->{mem_affinity};
	}

	my $p = $v->pkgpath_and_flavors;

	# we build in memory if we know this port and it's light enough
	if (defined $wrkdir{$p}) {
		my $hostname = $core->hostname;
		$used_per_host->{$hostname} //= 0;
		print $fh ">>> Compare ", $used_per_host->{$hostname}, " + ", 
		    $wrkdir{$p}, " to ", $t, "\n";
		if ($used_per_host->{$hostname} + $wrkdir{$p} <= $t) {
			$used_per_host->{$hostname} += $wrkdir{$p};
			$used_memory->{$p} = $hostname;
			return $wrkdir{$p};
		}
	}
	return 0;
}

sub finished
{
	my ($self, $v) = @_;
	my $p = $v->pkgpath_and_flavors;
	if (defined $used_memory->{$p}) {
		my $hostname = $used_memory->{$p};
		$used_per_host->{$hostname} -= $wrkdir{$p};
	}
}

sub parse_size_file
{
	my $self = shift;
	my $state = $self->{state};
	return if $state->{fetch_only};
	open my $fh, '<', $state->opt('S') // $state->{size_log}  or return;

	print "Reading size stats...";
	File::Path::mkpath(File::Basename::dirname($state->{size_log}));

	my @rewrite = ();
	while (<$fh>) {
		chomp;
		my $s = DPB::Serialize::Size->read($_);
		push(@rewrite, $s);
		$self->add_size_info(DPB::PkgPath->new($s->{pkgpath}), 
		    $s->{pkgname}, $s->{size});
	}
	close $fh;
	print "zapping old stuff...";
	open $fh, '>', $state->{size_log}.'.part' or return;
	for my $p (sort {$a->{pkgpath} cmp $b->{pkgpath}} @rewrite) {
		print $fh DPB::Serialize::Size->write($p), "\n";
	}
	close $fh;
	print "Done\n";
	rename $state->{size_log}.'.part', $state->{size_log};
}

1;
