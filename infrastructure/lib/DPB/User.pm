# ex:ts=8 sw=4:
# $OpenBSD: User.pm,v 1.7 2015/05/05 08:55:25 espie Exp $
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
		bless { user => $l, uid => $uid, gid => $gid }, $class;
	} else {
		bless { user => $u}, $class;
	}
}

sub next_user
{
	my $user = shift;
	if (!defined $user->{gen}) {
		if ($user->{user} =~ m/^(.*\D)(\d+)$/) {
			$user->{template} = $1;
			$user->{gen} = $2;
		} else {
			die "Can't figure out user template";
		}
    	}
	return ref($user)->new($user->{template}.$user->{gen}++);
}

sub user
{
	my $self = shift;
	return $self->{user};
}

sub run_as
{
	my ($self, $code) = @_;
	local ($>, $)) = ($self->{uid}, $self->{gid});
	&$code;
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
		local ($>, $)) = ($self->{uid}, $self->{gid});
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
#		local ($>, $)) = (0, 0);
		$self->_make_path(@directories, $p);
	}
}

sub open
{
	my ($self, $mode, @parms) = @_;
	local ($>, $)) = ($self->{uid}, $self->{gid});
	if (open(my $fh, $mode, @parms)) {
		return $fh;
	} else {
		return undef;
    	}
}

sub opendir
{
	my ($self, $dirname) = @_;
	local ($>, $)) = ($self->{uid}, $self->{gid});
	if (opendir(my $fh, $dirname)) {
		return $fh;
	} else {
		return undef;
    	}
}

sub unlink
{
	my ($self, @links) = @_;
	local ($>, $)) = ($self->{uid}, $self->{gid});
	unlink(@links);
}

sub rename
{
	my ($self, $o, $n) = @_;
	local ($>, $)) = ($self->{uid}, $self->{gid});
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

1;
