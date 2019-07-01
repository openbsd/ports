# ex:ts=8 sw=4:
# $OpenBSD: Locks.pm,v 1.52 2019/07/01 08:59:41 espie Exp $
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

package DPB::Lock;
sub new
{
	my ($class, $fh) = @_;
	bless {fh => $fh}, $class;
}

sub write
{
	my ($self, $key, $value) = @_;
	if (defined $value) {
		print {$self->{fh}} "$key=$value\n";
	} else {
		print {$self->{fh}}  "$key\n";
	}
}

sub close
{
	my $self = shift;
	close($self->{fh});
	undef $self->{fh};
}

package DPB::LockInfo;
sub new
{
	my ($class, $filename, $logger) = @_;
	bless { filename => $filename, logger => $logger}, $class;
}

sub fullpkgpath
{
	my $self = shift;
	return $self->{locked};
}

sub is_host
{
	my $self = shift;
	if ($self->{filename} =~ m,/host:[^/]+$,) {
		return 1;
	} else {
		return 0;
	}
}

sub is_dist
{
	my $self = shift;
	if ($self->{filename} =~ m,\.dist$,) {
		return 1;
	} else {
		return 0;
	}
}

sub is_pkgpath
{
	my $self = shift;
	return !($self->is_dist || $self->is_host);
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
	print {$i->{logger}->append($i->{logger}->logfile("debug"))}
	    "Problem in lock $i->{filename}: $i->{parseerror}\n";
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
		} elsif (m/^(start|end)\=(\d+)\s/) {
			$i->set_field($1, $2);
		} elsif (m/^(error|status|todo)\=(.*)$/) {
			$i->set_field($1, $2);
			$i->{errored} = 1;
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
		logger => $state->logger,
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
	my $i = DPB::LockInfo->new($filename, $self->{logger});
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
		return DPB::LockInfo::Bad->new($f, $self->{logger});
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
		&$code($self->get_info_from_file("$self->{lockdir}/$e"));
	}
}

sub wipehost
{
	my ($self, $h) = @_;
	my @wipe;
	$self->scan_lockdir(
	    sub {
	    	my $i = shift;
		push(@wipe, $i->{filename}) if $i->{host} eq $h;
	    });
	for my $f (@wipe) {
		$self->unlink($f);
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
		if (!$i->{same_host} || defined $i->{errored}) {
			return;
		}
		# on the way, let's retaint cores
		if (defined $i->{tag}) {
			DPB::Core::Init->taint($i->{host}, $i->{tag}, 
			    $i->fullpkgpath);
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
				# there might be stale host locks in there
				# make sure to clean them as well
				push(@{$hostpaths->{$i->{host}}}, 
				    $i->fullpkgpath) if defined $i->fullpkgpath;
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
			my $lock = DPB::Lock->new($fh);
			$lock->write("locked", $v->logname);
			$lock->write("dpb", 
			    $self->{dpb_pid}." on ".$self->{dpb_host});
			$v->write_parent($lock); 
			return $lock;
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
		return unless $i->is_pkgpath;
		for my $k (qw(wanted needed)) {
			if (defined $i->{$k}) {
				for my $v (@{$i->{$k}}) {
					$h->{$v} = 1;
				}
			}
		}
		# XXX we don't need to do anything more
		$nojunk = $i->fullpkgpath if $i->{nojunk};
	    });
	return ($nojunk, $h);
}

sub find_tag
{
	my ($self, $hostname) = @_;
	my ($tag, $tagowner);
	$self->scan_lockdir(
	    sub {
	    	my $i = shift;
		return if $i->is_bad;
		return if $i->{cleaned};
		if (defined $i->{host} && $i->{host} eq $hostname) {
			$tag //= $i->{tag};
			$tagowner //= $i->fullpkgpath;
		}
	    });
	if (wantarray) {
		return ($tag, $tagowner);
	} else {
		return $tag;
	}
}

1;
