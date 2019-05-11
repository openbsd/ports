# ex:ts=8 sw=4:
# $OpenBSD: Locks.pm,v 1.45 2019/05/11 10:31:26 espie Exp $
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
use DPB::User;

package DPB::LockInfo;
sub new
{
	my ($class, $filename) = @_;
	bless { filename => $filename}, $class;
}

sub is_bad { 0 }

sub set_field
{
	my ($i, $k, $v) = @_;
	if (exists $i->{$k}) {
		$i->set_bad("duplicate $k field");
	} else {
		$i->{$k} = $v;
	}
}

sub set_bad
{
	my ($i, $error) = @_;
	bless $i, 'DPB::LockInfo::Bad';
	$i->{parseerror} = $error;
	# XXX debug
#	print STDERR "Problem in lock $i->{filename}: $i->{parseerror}\n";
#	exit(10);
}

sub parse_file
{
	my ($i, $locker, $fh) = @_;
	while(<$fh>) {
		chomp;
		if (m/^dpb\=(\d+)\s+on\s+(\S+)$/) {
			if (defined $i->{dpb_pib}) {
				$i->set_bad("duplicate dpb field");
				next;
			}
			($i->{dpb_pid}, $i->{dpb_host}) = ($1, $2);
			if ($i->{dpb_host} eq $locker->{dpb_host}) {
				$i->{same_host} = 1;
				if ($i->{dpb_pid} == $locker->{dpb_pid}) {
					$i->{same_pid} = 1;
			    	}
			}
		} elsif (m/^(pid|mem)\=(\d+)$/) {
			$i->set_field($1, $2);
		} elsif (m/^start\=(\d+)\s/) {
			$i->set_field('start', $1);
		} elsif (m/^(error|status|todo)\=(.*)$/) {
			$i->set_field($1, $2);
			$i->{finished} = 1;
		} elsif (m/^(host|tag|parent|locked|path)\=(.+)$/) {
			$i->set_field($1, $2);
		} elsif (m/^(wanted|needed)\=(.*)$/) {
			$i->set_field($1, [split(/\s+/, $2)]);
		} elsif (m/^(nojunk|cleaned)$/) {
			$i->set_field($1, 1);
		} else {
			$i->set_bad("Parse error on $_");
		}
	}
	$i->{host} //= DPB::Core::Local->hostname;
}

package DPB::LockInfo::Bad;
our @ISA = qw(DPB::LockInfo);
sub is_bad { 1 }

package DPB::Locks;
our @ISA = (qw(DPB::UserProxy));

use File::Path;
use Fcntl;

# Fcntl doesn't export this
use constant O_CLOEXEC => 0x10000;

sub new
{
	my ($class, $state) = @_;

	my $lockdir = $state->{lockdir};
	my $o = bless {lockdir => $lockdir, 
		dpb_pid => $$, 
		user => $state->{log_user},
		dpb_host => DPB::Core::Local->hostname}, $class;
	$o->make_path($lockdir);
	$o->run_as(
	    sub {
		if (!$state->defines("DONT_CLEAN_LOCKS")) {
			$o->{stalelocks} = $o->clean_old_locks($state);
		}
	    });
	return $o;
}

sub get_info_from_fh
{
	my ($self, $fh, $filename) = @_;
	my $i = DPB::LockInfo->new($filename);
	$i->parse_file($self, $fh);
	return $i;
}

sub get_info_from_file
{
	my ($self, $f) = @_;
	my $fh = $self->open('<', $f);
	if (defined $fh) {
		return $self->get_info_from_fh($fh, $f);
	} else {
		return DPB::LockInfo::Bad->new($f);
	}
}

sub get_info
{
	my ($self, $v) = @_;
	return $self->get_info_from_file($self->lockname($v));
}

sub scan_lockdir
{
	my ($self, $code) = @_;
	my $dir = $self->opendir($self->{lockdir});
	while (my $e = readdir($dir)) {
		next if $e eq '..' or $e eq '.';
		# and zap vim temp files as well!
		next if $e =~ m/\.swp$/;
		next if $e =~ m/^host\:/;
		&$code($self->get_info_from_file("$self->{lockdir}/$e"));
	}
}

sub clean_old_locks
{
	my ($self, $state) = @_;
	my $hostpaths = {};
	START:
	my @problems = ();
	my $locks = {};

	# first we get all live locks that pertain to us a a dpb host
	$self->scan_lockdir(
	    sub {
	    	my $i = shift;
		if ($i->is_bad) {
			push @problems, $i->{filename};
			return;
		}
		if (!$i->{same_host} || defined $i->{finished}) {
			return;
		}
		# on the way, let's retaint cores
		if (defined $i->{tag}) {
			DPB::Core::Init->taint($i->{host}, $i->{tag}, 
			    $i->{locked});
		}
		push(@{$locks->{$i->{dpb_pid}}}, $i);
	    });

	if (keys %$locks != 0) {
		# use ps to check for live dpb (and kill their lists)
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
		# so what's left are stalelocks: remove them, and get a list
		# to unlock them manually
		for my $list (values %$locks) {
			for my $i (@$list) {
				push(@{$hostpaths->{$i->{host}}}, $i->{locked});
				$self->unlink($i->{filename});
			}
		}
	}
	# just in case there are weird locks in there
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
	$self->run_as(
	    sub {
		if (sysopen my $fh, $name, 
		    O_CREAT|O_EXCL|O_WRONLY|O_CLOEXEC, 0666) {
			DPB::Util->make_hot($fh);
			print $fh "locked=", $v->logname, "\n"; # WRITELOCK
			print $fh "dpb=", $self->{dpb_pid}, " on ", 
			    $self->{dpb_host}, "\n";
			$v->print_parent($fh);
			return $fh;
		} else {
			return 0;
		}
	    });
}

sub lock_has_other_owner
{
	my ($self, $v) = @_;
	my $info = $self->get_info($v);
	if (!$info->is_bad && !$info->{same_pid}) {
		return "$info->{dpb_pid} on $info->{dpb_host}";
	}
	return undef;
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
	$self->unlink($self->lockname($v));
}

sub locked
{
	my ($self, $v) = @_;
	return $self->run_as(
	    sub {
	    	return -e $self->lockname($v);
	    });
}

sub find_dependencies
{
	my ($self, $hostname) = @_;
	my $h = {};
	my $nojunk;
	$self->scan_lockdir(
	    sub {
	    	my $i = shift;
		return if $i->is_bad;
		return if defined $i->{cleaned};
		return unless defined $i->{host} && $i->{host} eq $hostname;
		for my $k (qw(wanted needed)) {
			if (defined $i->{$k}) {
				for my $v (@{$i->{$k}}) {
					$h->{$v} = 1;
				}
			}
		}
		# XXX we don't need to do anything more
		$nojunk = $i->{path} if $i->{nojunk};
	    });
	return $nojunk if defined $nojunk;
	return $h;
}

sub find_tag
{
	my ($self, $hostname) = @_;
	my $tag;
	$self->scan_lockdir(
	    sub {
	    	my $i = shift;
		return if $i->is_bad;
		return if $i->{cleaned};
		if (defined $i->{host} && $i->{host} eq $hostname) {
			$tag //= $i->{tag};
		}
	    });
	return $tag;
}

1;
