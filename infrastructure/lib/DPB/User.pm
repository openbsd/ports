# ex:ts=8 sw=4:
# $OpenBSD: User.pm,v 1.12 2015/05/13 15:05:56 espie Exp $
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

# handling user personalities

package DPB::User;
use Fcntl;

sub from_uid
{
	my ($class, $u) = @_;
	if (my ($l, undef, $uid, $gid) = getpwuid $u) {
		bless { user => $l, uid => $uid, gid => $gid }, $class;
	} else {
		return undef;
	}
}

sub new
{
	my ($class, $u) = @_;
	# XXX getpwnam for local access, distant access is different
	if (my ($l, undef, $uid, $gid) = getpwnam $u) {
		my $groups = `/usr/bin/id -G $u`;
		chomp $groups;
		bless { user => $l, uid => $uid, gid => $gid, 
		    groups => $groups }, $class;
	} else {
		bless { user => $u}, $class;
	}
}

sub user
{
	my $self = shift;
	return $self->{user};
}

sub run_as
{
	my ($self, $code) = @_;
	local $> = 0;
	local $) = "$self->{gid} $self->{groups}";
	$> = $self->{uid};
	&$code;
}

sub enforce_local
{
	my $self = shift;
	if (!defined $self->{uid}) {
		print STDERR "User $self->{user} does not exist locally\n";
		exit 1;
	}
}

sub _make_path
{
	my ($self, @directories) = @_;
	my $p = pop @directories;
	if ($p->{mode}) {
		my $m = umask(0);
		File::Path::make_path(@directories, $p);
		umask($m);
	} else {
		File::Path::make_path(@directories, $p);
	}
}

sub make_path
{
	my ($self, @directories) = @_;
	require File::Path;
	my $p = {};
	if ($self->{dirmode}) {
		$p->{mode} = $self->{dirmode};
	}
	if ($self->{droppriv}) {
		local $> = 0;
		local $) = $self->{gid};
		$> = $self->{uid};
		$self->_make_path(@directories, $p);
	} else {
		if ($self->{uid}) {
			$p->{uid} = $self->{uid};
		} else {
			$p->{owner} = $self->{user};
		}
		if ($self->{gid}) {
			$p->{group} = $self->{gid};
		}
		local ($>, $)) = (0, 0);
		$self->_make_path(@directories, $p);
	}
}

sub open
{
	my ($self, $mode, @parms) = @_;
	local $> = 0;
	local $) = "$self->{gid} $self->{groups}";
	$> = $self->{uid};
	if (open(my $fh, $mode, @parms)) {
		my $flags = fcntl($fh, F_GETFL, 0);
		fcntl($fh, F_SETFL, $flags | FD_CLOEXEC);
		return $fh;
	} else {
		return undef;
    	}
}

sub opendir
{
	my ($self, $dirname) = @_;
	local $> = 0;
	local $) = "$self->{gid} $self->{groups}";
	$> = $self->{uid};
	if (opendir(my $fh, $dirname)) {
		return $fh;
	} else {
		return undef;
    	}
}

sub unlink
{
	my ($self, @links) = @_;
	local $> = 0;
	local $) = "$self->{gid} $self->{groups}";
	$> = $self->{uid};
	unlink(@links);
}

sub rename
{
	my ($self, $o, $n) = @_;
	local $> = 0;
	local $) = "$self->{gid} $self->{groups}";
	$> = $self->{uid};
	rename($o, $n);
}

package DPB::UserProxy;
sub run_as
{
	my ($self, $code) = @_;
	$self->{user}->run_as($code);
}

sub make_path
{
	my ($self, @dirs) = @_;
	$self->{user}->make_path(@dirs);
}

sub open
{
	my ($self, @parms) = @_;
	return $self->{user}->open(@parms);
}

sub file
{
	my ($self, $filename) = @_;
	return DPB::UserFile->new($self, $filename);
}

sub opendir
{
	my ($self, $dirname) = @_;
	return $self->{user}->opendir($dirname);
}

sub unlink
{
	my ($self, @links) = @_;
	return $self->{user}->unlink(@links);
}

sub rename
{
	my ($self, @parms) = @_;
	return $self->{user}->rename(@parms);
}

# since we don't want to keep too many open files, encapsulate
# filename + file
package DPB::UserFile;
sub new
{
	my ($class, $user, $filename) = @_;
	bless {filename => $filename, user => $user}, $class;
}

sub name
{
	my $self = shift;
	return $self->{filename};
}

sub open
{
	my $self = shift;
	return $self->{user}->open($self->name);
}

1;
