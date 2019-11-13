# $OpenBSD: BaseFS.pm,v 1.1 2019/11/13 11:38:48 espie Exp $
# Copyright (c) 2018 Marc Espie <espie@openbsd.org>
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

# glue code that resolves links based on a destdir directory
use strict;
use warnings;

package OpenBSD::BaseFS;

sub new
{
	my ($class, $destdir, $state) = @_;
	return bless {destdir => $destdir, state => $state}, $class;
} 
sub destdir
{
	my $self = shift;
	if (@_ == 0) {
		return $self->{destdir};
	} else {
		return $self->{destdir}."/".shift;
	}
}

# we are given a filename which actually lives under destdir.
# but if it's a symlink, we WILL follow through, because the
# link is meant relative to destdir
sub resolve_link
{
	my ($self, $filename, $level) = @_;
	$level //= 0;
	my $solved = $self->destdir($filename);
	if (-l $solved) {
		my $l = readlink($solved);
		if ($level++ > 14) {
			$self->{state}->errsay("Symlink too deep: $solved\n");
			return $solved;
		}
		if ($l =~ m|^/|) {
			return $self->resolve_link($l, $level);
		} else {
			return $self->resolve_link(File::Spec->catfile(dirname($filename),$l), $level);
		}
	} else {
		return $solved;
	}
}

sub undest
{
	my ($self, $filename) = @_;
	$filename =~ s/^\Q$self->{destdir}\E//;
	$filename='/' if $filename eq '';
	return $filename;
}

1;
