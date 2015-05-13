# ex:ts=8 sw=4:
# $OpenBSD: Host.pm,v 1.7 2015/05/13 12:21:11 espie Exp $
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
package DPB::Host;

my $hosts = {};

sub shell
{
	my $self = shift;
	return $self->{shell};
}

sub new
{
	my ($class, $name, $prop) = @_;
	if ($class->name_is_localhost($name)) {
		$class = "DPB::Host::Localhost";
		$name = 'localhost';
		$prop->{build_user}->enforce_local 
			if defined $prop->{build_user};
	} else {
		require DPB::Core::Distant;
		$class = "DPB::Host::Distant";
	}
	if (!defined $hosts->{$name}) {
		my $h = bless {host => $name, 
			prop => $prop }, $class;
		# XXX have to register *before* creating the shell
		$hosts->{$name} = $h;
		$h->{shell} = $h->shellclass->new($h);
	}
	return $hosts->{$name};
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

# XXX this is a "quicky" shell before we set up hosts properly
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
	$prop->{iamroot} = $< == 0;

	my $h = bless { prop => $prop }, $class;
	return $h->shellclass->new($h);
}

1;
