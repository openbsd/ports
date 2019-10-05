# ex:ts=8 sw=4:
# $OpenBSD: User.pm,v 1.25 2019/10/05 15:52:38 espie Exp $
#
# Copyright (c) 2010-2019 Marc Espie <espie@openbsd.org>
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

# note that all the "running around" starts with dpb
# having a saved uid of 0, so we can switch back to root
# in order to change personality

# the main class is a user that can be used for various operations
package DPB::User;
use Fcntl;

sub from_uid
{
	my ($class, $u, $g) = @_;
	if (my ($l, undef, $uid, $gid) = getpwuid $u) {
		my $groups = `/usr/bin/id -G $u`;
		chomp $groups;
		if (defined $g) {
			$gid = $g;
		}
		my $group = getgrgid($gid);
		return bless { user => $l, uid => $uid, 
		    group => $group, gid => $gid,
		    grouplist => "$gid $groups" }, $class;
	} else {
		return undef;
	}
}

sub new
{
	my ($class, $u) = @_;
	# local users are used to do operations
	# otherwise, distant users are "just" a name for the distant
	# exec stuff
	if (my ($l, undef, $uid, $gid) = getpwnam $u) {
		# XXX getgrouplist(3) is bsd specific.  This happens
		# seldom enough that we can delegate
		my $groups = `/usr/bin/id -G $u`;
		chomp $groups;
		my $group = getgrgid($gid);
		return bless { user => $l, uid => $uid, 
		    group => $group, gid => $gid,
		    grouplist => "$gid $groups" }, $class;
	} else {
		return bless { user => $u}, $class;
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
	local $) = $self->{grouplist};
	$> = $self->{uid};
	&$code;
}

sub enforce_local
{
	my $self = shift;
	if (!defined $self->{uid}) {
		print STDERR "User $self->{user} does not exist locally\n";
		exit 1;
	} else {
		return $self;
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
	local $) = $self->{grouplist};
	$> = $self->{uid};
	# XXX don't try to read directories, there's opendir for that.
	if ($mode eq '<' && !-f $parms[0]) {
		return undef;
	}
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
	local $) = $self->{grouplist};
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
	local $) = $self->{grouplist};
	$> = $self->{uid};
	unlink(@links);
}

sub link
{
	my ($self, $a, $b) = @_;
	local $> = 0;
	local $) = $self->{grouplist};
	$> = $self->{uid};
	link($a, $b);
}

sub rename
{
	my ($self, $o, $n) = @_;
	local $> = 0;
	local $) = $self->{grouplist};
	$> = $self->{uid};
	rename($o, $n);
}

sub stat
{
	my ($self, $name) = @_;
	local $> = 0;
	local $) = $self->{grouplist};
	$> = $self->{uid};
	return stat $name;
}

sub rewrite_file
{
	my ($self, $state, $filename, $sub) = @_;
	$self->make_path(File::Basename::dirname($filename));
	$self->run_as(
	    sub {
	    	my $f;
		if (!CORE::open $f, '>', "$filename.part") {
			$state->fatal("#1 can't write #2: #3",
			    $self->user, "$filename.part", $!);
		}
		if (!&$sub($f) || !close $f) {
			$state->fatal("#1 can't write data to #2: #3",
			    $self->user, "$filename.part", $!);
		}
		CORE::rename "$filename.part", $filename or
		    $state->fatal("#1 can't rename #2 to #3: #4",
		    	$self->user, "$filename.part", $filename, $!);
	    });
}

# this is the class we can inherit from
# the derived class is responsible for implementing ->user
# (if the default ->{user} isn't enough)
# to get the actual user object (we encapsulate)
# then we delegate most of the actual operations to user

package DPB::UserProxy;
sub run_as
{
	my ($self, $code) = @_;
	$self->user->run_as($code);
}

sub make_path
{
	my ($self, @dirs) = @_;
	$self->user->make_path(@dirs);
}

sub open
{
	my ($self, @parms) = @_;
	return $self->user->open(@parms);
}

sub file
{
	my ($self, $filename) = @_;
	return DPB::UserFile->new($self, $filename);
}

sub opendir
{
	my ($self, $dirname) = @_;
	return $self->user->opendir($dirname);
}

sub unlink
{
	my ($self, @links) = @_;
	return $self->user->unlink(@links);
}

sub link
{
	my ($self, $a, $b) = @_;
	return $self->user->link($a, $b);
}

sub rename
{
	my ($self, @parms) = @_;
	return $self->user->rename(@parms);
}

sub stat
{
	my ($self, $name) = @_;
	return $self->user->stat($name);
}

sub user
{
	my $self = shift;
	return $self->{user};
}

sub write_error
{
	my ($self, $name) = @_;
	DPB::Util->die_bang($self->user->user." can't write to $name");
}

sub redirect
{
	my ($self, $log) = @_;
	$self->user->run_as(
	    sub {
		close STDOUT;
		CORE::open STDOUT, '>>', $log or DPB::Util->die_bang(
		    $self->user->user." can't write to $log");
		close STDERR;
		CORE::open STDERR, '>&STDOUT' or 
		    DPB::Util->die_bang("bad redirect");
	    });
}

# since we don't want to keep too many open files, encapsulate
# filename + file
package DPB::UserFile;

# can't inherit from UserProxy, open/stat have different calling mechanisms

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
	my ($self, $mode) = @_;
	return $self->{user}->open($mode, $self->name);
}

sub stat
{
	my $self = shift;
	return $self->{user}->stat($self->name);
}

1;
