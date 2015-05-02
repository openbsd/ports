# ex:ts=8 sw=4:
# $OpenBSD: User.pm,v 1.1 2015/05/02 09:44:40 espie Exp $
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

sub make_path
{
	my ($self, @directories) = @_;
	require File::Path;
	my $p = {};
	if ($self->{uid}) {
		$p->{uid} = $self->{uid};
	} else {
		$p->{owner} = $self->{user};
	}
	if ($self->{gid}) {
		$p->{gid} = $self->{gid};
	}
	File::Path::make_path(@directories, $p);
}

sub open
{
	my ($self, $mode, $filename) = @_;
	local ($>, $)) = ($self->{uid}, $self->{gid});
	if (open(my $fh, $mode, $filename)) {
		return $fh;
	} else {
		return undef;
    	}
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

1;
