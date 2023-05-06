# ex:ts=8 sw=4:
# $OpenBSD: Shell.pm,v 1.20 2023/05/06 05:20:31 espie Exp $
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
use v5.36;

# the shell package is used to exec commands.
# It works together with the Host class that actually
# contains various properties (distant/local host, chrooted, running as root)
# synopsis:
#	$host->shell->tweaks...->exec('cmd', 'args'...)
#		with tweaks being 
#		->chdir('dir')
#		->env(VAR=>value...)
#		->as_root(bool)		# defaults to "true"
#		->run_as('user')
#		->nochroot

# note that we're dealing with exec, so we can modify the object/context
# itself with abandon
package DPB::Shell::Abstract;

# actual creation is done through
# $host->shellclass->new($host)

sub new($class, $host)
{
	$host //= {}; 	# this makes it possible to build "localhost" shells
			# without any prop.
	return bless {as_root => 0, prop => $host->{prop}}, $class;
}

# the abstract class doesn't know how to exec anything
# but it has accessors and tweakers
sub prop($self)
{
	return $self->{prop};
}

sub is_alive($)
{
	return 1;
}

sub stringize_master_pid($)
{
	return "";
}

sub chdir($self, $dir)
{
	$self->{dir} = $dir;
	return $self;
}

sub env($self, %h)
{
	while (my ($k, $v) = each %h) {
		$self->{env}{$k} = $v;
	}
	return $self;
}

sub as_root($self, $val = 1)
{
	$self->{as_root} = $val;
	return $self;
}

sub run_as($self, $user)
{
	$self->{user} = $user;
	return $self;
}

sub nochroot($self)
{
	$self->{nochroot} = 1;
	return $self;
}

package DPB::Shell::Local;
our @ISA = qw(DPB::Shell::Abstract);

sub chdir($self, $dir)
{
	CORE::chdir($dir) or DPB::Util->die_bang("Can't chdir to $dir");
	return $self;
}

sub env($self, %h)
{
	while (my ($k, $v) = each %h) {
		$ENV{$k} = $v;
	}
	return $self;
}

sub exec($self, @argv)
{
	if ($self->{as_root}) {
		unshift(@argv, OpenBSD::Paths->doas);
	}
	if (-t STDIN) {
		close(STDIN);
		open STDIN, '</dev/null';
	}
	exec {$argv[0]} @argv;
}

package DPB::Shell::Chroot;
our @ISA = qw(DPB::Shell::Abstract);
sub exec($self, @argv)
{
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
		unshift(@argv, 'exec', OpenBSD::Paths->doas,
		    OpenBSD::Paths->env);
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
		my @cmd2 = (OpenBSD::Paths->chroot);
		if (!$self->prop->{iamroot}) {
			unshift(@cmd2, OpenBSD::Paths->doas);
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
sub _run($self, @argv)
{
	if (-t STDIN) {
		close(STDIN);
		open STDIN, '</dev/null';
	}
	exec {$argv[0]} @argv;
}

sub quote($self, $cmd)
{
	return $cmd;
}

sub nochroot($self)
{
	return bless $self, 'DPB::Shell::Local';
}

package DPB::Shell::Local::Root;
our @ISA = qw(DPB::Shell::Local::Chroot);
use POSIX;

sub exec($self, @argv)
{
	$> = 0;
	$) = 0;
	$self->SUPER::exec(@argv);
}

sub nochroot($self)
{
	$self->{nochroot} = 1;
	return $self;
}
1;
