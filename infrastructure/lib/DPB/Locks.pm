# ex:ts=8 sw=4:
# $OpenBSD: Locks.pm,v 1.27 2014/03/09 20:09:53 espie Exp $
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

package DPB::Locks;

use File::Path;
use Fcntl;
require 'fcntl.ph';

sub new
{
	my ($class, $state, $lockdir) = @_;

	File::Path::make_path($lockdir);
	my $o = bless {lockdir => $lockdir, 
		dpb_pid => $$, 
		dpb_host => DPB::Core::Local->hostname}, $class;
	if (!$state->defines("DONT_CLEAN_LOCKS")) {
		$o->{stalelocks} = $o->clean_old_locks($state);
	}
	return $o;
}

sub clean_old_locks
{
	my ($self, $state) = @_;
	my $hostpaths = {};
	START:
	my $info = {};
	my @problems = ();
	my $locks = {};
	opendir(my $dir, $self->{lockdir});
	DIR: while (my $e = readdir($dir)) {
		next if $e eq '..' or $e eq '.';
		my $f = "$self->{lockdir}/$e";
		if (open my $fh, '<', $f) {
			my ($pid, $host);
			my $client = DPB::Core::Local->hostname;
			my $path;
			my $tag;
			while(<$fh>) {
				if (m/^dpb\=(\d+)\s+on\s+(\S+)$/) {
					($pid, $host) = ($1, $2);
					next DIR 
					    unless $host eq $self->{dpb_host};
				} elsif (m/^(?:error|status|todo)\=/) {
					next DIR;
				} elsif (m/^host=(.*)$/) {
					$client = $1;
				} elsif (m/^locked=(.*)$/) {
					$path = $1;
				} elsif (m/^tag=(.*)$/) {
					$tag = $1;
				}
			}
			if (defined $tag) {
				DPB::Core::Init->taint($host, $tag);
			}
			$info->{$f} = [$host, $path] if defined $path;
			if (defined $pid) {
				push(@{$locks->{$pid}}, $f);
			} else {
				push(@problems, $f);
			}
		} else {
			push(@problems, $f);
		}
	}
	if (keys %$locks != 0) {
		open(my $ps, "-|", "ps", "-axww", "-o", "pid args");
		my $junk = <$ps>;
		while (<$ps>) {
			if (m/^(\d+)\s+(.*)$/) {
				my ($pid, $cmd) = ($1, $2);
				if ($locks->{$pid} && $cmd =~ m/\bdpb\b/) {
					delete $locks->{$pid};
				}
			}
		}
		for my $list (values %$locks) {
			for my $l (@$list) {
				my ($host, $path) = @{$info->{$l}};
				push(@{$hostpaths->{$host}}, $path);
				unlink($l);
			}
		}
	}
	if (@problems) {
		$state->say("Problematic lockfiles I can't parse:\n\t#1\n".
			"Waiting for ten seconds",
			join(' ', @problems));
		sleep 10;
		goto START;
	}
	return $hostpaths;
}

sub build_lockname
{
	my ($self, $f) = @_;
	$f =~ tr|/|.|;
	return "$self->{lockdir}/$f";
}

sub lockname
{
	my ($self, $v) = @_;
	return $self->build_lockname($v->lockname);
}

sub dolock
{
	my ($self, $name, $v) = @_;
	if (sysopen my $fh, $name, O_CREAT|O_EXCL|O_WRONLY|O_CLOEXEC(), 0666) {
		DPB::Util->make_hot($fh);
		print $fh "locked=", $v->logname, "\n";
		print $fh "dpb=", $self->{dpb_pid}, " on ", 
		    $self->{dpb_host}, "\n";
		$v->print_parent($fh);
		return $fh;
	} else {
		return 0;
	}
}

sub lock
{
	my ($self, $v) = @_;
	my $lock = $self->lockname($v);
	my $fh = $self->dolock($lock, $v);
	if ($fh) {
		return $fh;
	}
	return undef;
}

sub unlock
{
	my ($self, $v) = @_;
	unlink($self->lockname($v));
}

sub locked
{
	my ($self, $v) = @_;
	return -e $self->lockname($v);
}

sub find_dependencies
{
	my ($self, $hostname) = @_;
	opendir(my $dir, $self->{lockdir});
	my $h = {};
	while (my $name = readdir($dir)) {
		my $fullname = $self->{lockdir}."/".$name;
		next if -d $fullname;
		next if $name =~ m/^host:/;
		open(my $f, '<', $fullname);
		my $nojunk = 0;
		my $host;
		my $path;
		my $cleaned;
		my @d;
		while (<$f>) {
			if (m/^locked=(.*)/) {
				$path = $1;
			} elsif (m/^host=(.*)/) {
				$host = $1;
			# XXX wanted always precedes needed, so
			# it's safe to overwrite
			} elsif (m/^(?:wanted|needed)=(.*)/) {
				@d = split(/\s/, $1);
			} elsif (m/^nojunk$/) {
				$nojunk = 1;
			} elsif (m/^cleaned$/) {
				$cleaned = 1;
			}
		}
		next if $cleaned;
		if (defined $host && $host eq $hostname) {
			if ($nojunk) {
				print "Can't run junk because of lock on $path\n";
				return undef;
			}
			for my $k (@d) {
				$h->{$k} = 1;
			}
		}
	}
	return $h;
}

sub find_tag
{
	my ($self, $hostname) = @_;
	opendir(my $dir, $self->{lockdir});
	while (my $name = readdir($dir)) {
		my $fullname = $self->{lockdir}."/".$name;
		next if -d $fullname;
		next if $name =~ m/^host:/;
		open(my $f, '<', $fullname);
		my ($host, $cleaned, $tag);
		while (<$f>) {
			if (m/^host=(.*)/) {
				$host = $1;
			} elsif (m/^cleaned$/) {
				$cleaned = 1;
			} elsif (m/^tag=(.*)/) {
				$tag = $1;
			}
		}
		next if $cleaned;
		if (defined $host && $host eq $hostname) {
			return $tag if defined $tag;
		}
	}
	return undef;
}

1;
