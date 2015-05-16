# ex:ts=8 sw=4:
# $OpenBSD: Shell.pm,v 1.13 2015/05/16 18:14:04 espie Exp $
#
# Copyright (c) 2010-2014 Marc Espie <espie@openbsd.org>
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

# the shell package is used to exec commands.
# note that we're dealing with exec, so we can modify the object/context
# itself with abandon
package DPB::Shell::Abstract;

sub new
{
	my ($class, $host) = @_;
	$host //= {}; # this makes it possible to build "localhost" shells
	bless {as_root => 0, prop => $host->{prop}}, $class;
}

sub prop
{
	my $self = shift;
	return $self->{prop};
}

sub stringize_master_pid
{
	return "";
}

sub chdir
{
	my ($self, $dir) = @_;
	$self->{dir} = $dir;
	return $self;
}

sub env
{
	my ($self, %h) = @_;
	while (my ($k, $v) = each %h) {
		$self->{env}{$k} = $v;
	}
	return $self;
}

sub as_root
{
	my ($self, $val) = @_;
	# XXX calling as_root without parms is equivalent to saying "1"
	if (@_ == 1) {
		$val = 1;
	}
	$self->{as_root} = $val;
	return $self;
}

sub run_as
{
	my ($self, $user) = @_;
	$self->{user} = $user;
	return $self;
}

sub nochroot
{
	my $self = shift;
	$self->{nochroot} = 1;
	return $self;
}

package DPB::Shell::Local;
our @ISA = qw(DPB::Shell::Abstract);

sub is_alive
{
	return 1;
}

sub chdir
{
	my ($self, $dir) = @_;
	CORE::chdir($dir) or DPB::Util->die_bang("Can't chdir to $dir");
	return $self;
}

sub env
{
	my ($self, %h) = @_;
	while (my ($k, $v) = each %h) {
		$ENV{$k} = $v;
	}
	return $self;
}

sub exec
{
	my ($self, @argv) = @_;
	if ($self->{as_root}) {
		unshift(@argv, OpenBSD::Paths->sudo, "-E");
	}
	if (-t STDIN) {
		close(STDIN);
		open STDIN, '</dev/null';
	}
	exec {$argv[0]} @argv;
}

package DPB::Shell::Chroot;
our @ISA = qw(DPB::Shell::Abstract);
sub exec
{
	my ($self, @argv) = @_;
	my $chroot = $self->prop->{chroot};
	if ($self->{nochroot}) {
		undef $chroot;
	}
	if ($self->prop->{iamroot}) {
		$chroot //= '/';
	}
	unshift @argv, 'exec' unless $self->{as_root} && !$chroot;
	if ($self->{env}) {
		while (my ($k, $v) = each %{$self->{env}}) {
			$v //= '';
			unshift @argv, "$k=\'$v\'";
		}
	}
	if ($self->{as_root} && !$chroot) {
		unshift(@argv, 'exec', OpenBSD::Paths->sudo, "-E");
	}
	my $cmd = join(' ', @argv);
	if ($self->{dir}) {
		$cmd = "cd $self->{dir} && $cmd";
	}
	if (defined $self->prop->{umask}) {
		my $umask = $self->prop->{umask};
		$cmd = "umask $umask && $cmd";
	}
	$self->{user} //= $self->prop->{build_user};
	if ($chroot) {
		my @cmd2 = ("chroot");
		if (!$self->prop->{iamroot}) {
			unshift(@cmd2, OpenBSD::Paths->sudo, "-E");
		}
		if (!$self->{as_root} && defined $self->{user}) {
			push(@cmd2, "-u", $self->{user}->user);
		}
		$self->_run(@cmd2, $chroot, "/bin/sh", "-c", 
		    $self->quote($cmd));
	} else {
		$self->_run($cmd);
	}
}

package DPB::Shell::Local::Chroot;
our @ISA = qw(DPB::Shell::Chroot);
sub _run
{
	my ($self, @argv) = @_;
	if (-t STDIN) {
		close(STDIN);
		open STDIN, '</dev/null';
	}
	exec {$argv[0]} @argv;
}

sub quote
{
	my ($self, $cmd) = @_;
	return $cmd;
}

sub is_alive
{
	return 1;
}

sub nochroot
{
	my $self = shift;
	bless $self, 'DPB::Shell::Local';
}

package DPB::Shell::Local::Root;
our @ISA = qw(DPB::Shell::Abstract);
use POSIX;

sub exec
{
	my ($self, @argv) = @_;
	my $chroot = $self->prop->{chroot};
	$> = 0;
	$) = 0;
	if ($self->{nochroot}) {
		undef $chroot;
	}
	if (defined $chroot) {
		chroot($chroot);
	}
	$self->{user} //= $self->prop->{build_user};
	if (!$self->{as_root} && defined $self->{user}) {
		$) = $self->{user}{grouplist};
		setgid($self->{user}{gid});
		setuid($self->{user}{uid});
	}
	if ($self->{env}) {
		while (my ($k, $v) = each %{$self->{env}}) {
			$v //= '';
			$ENV{$k} = $v;
		}
	}
	if ($self->{dir}) {
		CORE::chdir($self->{dir}) or 
		    DPB::Util->die_bang("Can't chdir to $self->{dir}");
	}

	if (defined $self->prop->{umask}) {
		umask(oct($self->prop->{umask}));
	}
	if (-t STDIN) {
		close(STDIN);
		open STDIN, '</dev/null';
	}
	exec {$argv[0]} @argv;
}

1;
