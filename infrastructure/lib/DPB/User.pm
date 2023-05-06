# ex:ts=8 sw=4:
# $OpenBSD: User.pm,v 1.27 2023/05/06 05:20:31 espie Exp $
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

use v5.36;

# handling user personalities

# note that all the "running around" starts with dpb
# having a saved uid of 0, so we can switch back to root
# in order to change personality

# the main class is a user that can be used for various operations
package DPB::User;
use Fcntl;

sub from_uid($class, $u, $g = undef)
{
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

sub new($class, $u)
{
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

sub user($self)
{
	return $self->{user};
}

sub run_as($self, $code)
{
	local $> = 0;
	local $) = $self->{grouplist};
	{
		local $> = $self->{uid};
		return &$code();
	}
}

sub enforce_local($self)
{
	if (!defined $self->{uid}) {
		print STDERR "User $self->{user} does not exist locally\n";
		exit 1;
	} else {
		return $self;
	}
}

sub _make_path($self, @directories)
{
	my $p = pop @directories;
	if ($p->{mode}) {
		my $m = umask(0);
		File::Path::make_path(@directories, $p);
		umask($m);
	} else {
		File::Path::make_path(@directories, $p);
	}
}

sub make_path($self, @directories)
{
	require File::Path;
	my $p = {};
	if ($self->{dirmode}) {
		$p->{mode} = $self->{dirmode};
	}
	if ($self->{droppriv}) {
		$self->run_as(
		    sub() {
		    	$self->_make_path(@directories, $p);
		    });
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

sub open($self, $mode, @parms)
{
	return $self->run_as(
	    sub() {
		# XXX don't try to read directories, 
		# there's opendir for that.
		if (-d $parms[0]) {
			require Errno;
			$! = Errno::EISDIR();
			return undef;
		}
		if (open(my $fh, $mode, @parms)) {
			my $flags = fcntl($fh, F_GETFL, 0);
			fcntl($fh, F_SETFL, $flags | FD_CLOEXEC);
			return $fh;
		} else {
			return undef;
		}
	    });
}

sub opendir($self, $dirname)
{
	return $self->run_as(
	    sub() {
		if (opendir(my $fh, $dirname)) {
			return $fh;
		} else {
			return undef;
		}
	    });
}

sub unlink($self, @links)
{
	return $self->run_as(
	    sub() {
		unlink(@links);
	    });
}

sub link($self, $a, $b)
{
	return $self->run_as(
	    sub() {
		link($a, $b);
	    });
}

sub rename($self, $o, $n)
{
	return $self->run_as(
	    sub() {
		rename($o, $n);
	    });
}

sub stat($self, $name)
{
	return $self->run_as(
	    sub() {
		return stat $name;
	    });
}

sub rewrite_file($self, $state, $filename, $sub)
{
	$self->make_path(File::Basename::dirname($filename));
	$self->run_as(
	    sub() {
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
sub run_as($self, $code)
{
	$self->user->run_as($code);
}

sub make_path($self, @dirs)
{
	$self->user->make_path(@dirs);
}

sub open($self, @parms)
{
	return $self->user->open(@parms);
}

sub file($self, $filename)
{
	return DPB::UserFile->new($self, $filename);
}

sub opendir($self, $dirname)
{
	return $self->user->opendir($dirname);
}

sub unlink($self, @links)
{
	return $self->user->unlink(@links);
}

sub link($self, $a, $b)
{
	return $self->user->link($a, $b);
}

sub rename($self, @parms)
{
	return $self->user->rename(@parms);
}

sub stat($self, $name)
{
	return $self->user->stat($name);
}

sub user($self)
{
	return $self->{user};
}

sub write_error($self, $name)
{
	DPB::Util->die_bang($self->user->user." can't write to $name");
}

sub redirect($self, $log)
{
	$self->user->run_as(
	    sub() {
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

sub new($class, $user, $filename)
{
	bless {filename => $filename, user => $user}, $class;
}

sub name($self)
{
	return $self->{filename};
}

sub open($self, $mode)
{
	return $self->{user}->open($mode, $self->name);
}

sub stat($self)
{
	return $self->{user}->stat($self->name);
}

1;
