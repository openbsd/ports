# ex:ts=8 sw=4:
# $OpenBSD: HostProperties.pm,v 1.6 2015/05/01 19:42:54 espie Exp $
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

package DPB::HostProperties;

my $has_sf = 0;
my $has_mem = 0;
my $sf;

sub new
{
	my ($class, $default) = @_;
	$default //= {};
	bless {%$default}, $class;
}

sub add_overrides
{
	my ($prop, $override) = @_;
	while (my ($k, $v) = each %$override) {
		$prop->{$k} = $v;
	}
	$sf //= $prop->{sf};
	if (defined $prop->{sf} && $prop->{sf} != $sf) {
		$has_sf = 1;
	}
}

sub has_sf
{
	return $has_sf;
}

sub has_mem
{
	return $has_mem;
}

sub set_user
{
	my ($prop, $tag, $default) = @_;
	my $user = $tag."_user";
	my $mode = $tag."_dirmode";
	if (defined $prop->{$user}) {
		$prop->{$user} = 
		    DPB::Id->new($prop->{$user});
	} else {
		$prop->{$user} = $prop->{$default."_user"};
	}
}

sub finalize
{
	my $prop = shift;
	$prop->{sf} //= 1;
	$prop->{umask} //= sprintf("0%o", umask);
	if (defined $prop->{stuck}) {
		$prop->{stuck_timeout} = $prop->{stuck} * $prop->{sf};
	}
	if (defined $prop->{mem}) {
		$prop->{memory} = $prop->{mem};
	}
	if (defined $prop->{chroot_user}) {
		$prop->{build_user} //= $prop->{chroot_user};
	}
	if (defined $prop->{chroot}) {
		if ($prop->{chroot} eq '/' || $prop->{chroot} eq '') {
			delete $prop->{chroot};
		} else {
		}
	}
	$prop->set_user('build', 'base');
	$prop->set_user('log', 'build');
	$prop->set_user('fetch', 'build');

	if (defined $prop->{memory}) {
		my $m = $prop->{memory};
		if ($m =~ s/K$//) {
		} elsif ($m =~ s/M$//) {
			$m *= 1024;
		} elsif ($m =~ s/G$//) {
			$m *= 1024 * 1024;
		}
		$prop->{memory} = $m;
		if ($prop->{memory} > 0) {
			$has_mem = 1;
		}
	}
	$prop->{small} //= 120;
	$prop->{small_timeout} = $prop->{small} * $prop->{sf};
	return $prop;
}

sub finalize_with_overrides
{
	my ($self, $overrides) = @_;
	$self->add_overrides($overrides);
	$self->finalize;
}

1;
