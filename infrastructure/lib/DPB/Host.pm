# ex:ts=8 sw=4:
# $OpenBSD: Host.pm,v 1.15 2019/10/07 04:52:14 espie Exp $
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

# we have unique objects for hosts, so we can put properties in there.
# synopsis
# 	$host = DPB::Host->new('name', $prop);
# then it can be used to obtain a shell to run things
# ... and also the core class responsible for forking
# so the full run is usually
# 	$core = $host->shellclass->new($host);
#		attach job to core (a job is a list of tasks)
# 	$core->task->run;
# 		where task knows how to fork, and then it uses
#	$core->host->shell to execute commands

# there is a registry of hosts accessible by name:
# 	DPB::Host->retrieve(name)
# a host specific for fetching
# 	DPB::Host->fetch_host($prop)
# a quick way to run shitz before full initialization
#	DPB::Host::Localhost->getshell($state)
#		(this will make use of default_prop/chroot in state
#		if already setup)

# actually, the cores are created through host->new_init_core
#	which will start up the initialization for each core
#	and the finalization code will clone and register actual cores
package DPB::Host;

my $hosts = {};

sub shell
{
	my $self = shift;
	# XXX create a lazy shell so host registration already occurred
	$self->{shell} //= $self->shellclass->new($self);
	return $self->{shell};
}

sub create
{
	my ($class, $name, $prop) = @_;
	return bless {host => $name, prop => $prop }, $class;
}

sub new
{
	my ($class, $name, $prop) = @_;
	if ($class->name_is_localhost($name)) {
		$class = "DPB::Host::Localhost";
		$name = 'localhost';
	} else {
		require DPB::Core::Distant;
		$class = "DPB::Host::Distant";
		$prop->{socket} = "/tmp/ssh-$name-$prop->{master_pid}";
	}
	$hosts->{$name} //= $class->create($name, $prop);
	return $hosts->{$name};
}

sub retrieve
{
	my ($class, $name) = @_;
	if ($class->name_is_localhost($name)) {
		return $hosts->{localhost};
	} else {
		return $hosts->{$name};
	}
}

sub fetch_host
{
	my ($class, $prop) = @_;
	$hosts->{FETCH} //= DPB::Host::Localhost->create('localhost', $prop);
	return $hosts->{FETCH};
}

sub new_init_core
{
	my $self = shift;
	return $self->coreclass->new_noreg($self);
}

sub coreclass
{
	return "DPB::Core";
}

sub name
{
	my $self = shift;
	return $self->{host};
}

sub fullname
{
	my $self = shift;
	my $name = $self->name;
	if (defined $self->{prop}->{jobs}) {
		$name .= "/$self->{prop}->{jobs}";
	}
	return $name;
}

sub name_is_localhost
{
	my ($class, $host) = @_;
	if ($host eq "localhost" or $host eq DPB::Core::Local->hostname) {
		return 1;
	} else {
		return 0;
	}
}

package DPB::Host::Localhost;
our @ISA = qw(DPB::Host);

sub create
{
	my ($class, $name, $prop) = @_;
	$prop->{iamroot} = $< == 0;
	$prop->{build_user}->enforce_local 
	    if defined $prop->{build_user};
	return $class->SUPER::create('localhost', $prop);
}

sub is_localhost
{
	return 1;
}

sub is_alive
{
	return 1;
}


sub shellclass
{
	my $self = shift;
	if ($self->{prop}{iamroot}) {
		return "DPB::Shell::Local::Root";
	} elsif ($self->{prop}{chroot}) {
		return "DPB::Shell::Local::Chroot";
	} else {
		return "DPB::Shell::Local";
	}
}

# XXX this is a "quicky" local shell before we set up hosts properly
sub getshell
{
	my ($class, $state) = @_;
	my $prop;

	if ($state->{default_prop}) {
		$prop = $state->{default_prop};
	} else {
		$prop = {};
		if ($state->{chroot}) {
			$prop->{chroot} = $state->{chroot};
		}
	}
	my $h = $class->create('localhost', $prop);
	return $h->shellclass->new($h);
}

1;
