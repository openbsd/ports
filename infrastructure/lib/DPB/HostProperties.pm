# ex:ts=8 sw=4:
# $OpenBSD: HostProperties.pm,v 1.9 2015/05/10 08:40:06 espie Exp $
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
use DPB::User;

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
	if (defined $prop->{build_user}) {
		$prop->{build_user} = 
		    DPB::User->new($prop->{build_user});
	} else {
		$prop->{build_user} = $prop->{base_user};
	}
	if (defined $prop->{dirmode}) {
		$prop->{build_user}{dirmode} = oct($prop->{dirmode});
	}
	if (defined $prop->{droppriv}) {
		$prop->{build_user}{droppriv} = $prop->{droppriv};
    	}

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
