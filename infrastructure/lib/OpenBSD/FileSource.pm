# $OpenBSD: FileSource.pm,v 1.5 2023/05/30 05:41:35 espie Exp $
# Copyright (c) 2004-2010 Marc Espie <espie@openbsd.org>
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

# part of check-lib-depends
# FileSource: where we get the files to analyze

package OpenBSD::FileSource;

sub directory($self)
{
	return $self->{location};
}

# file system
package OpenBSD::FsFileSource;
our @ISA = qw(OpenBSD::FileSource);
sub new($class, $location)
{
	bless {location => $location }, $class
}

sub retrieve($self, $state, $item)
{
	return $item->fullname;
}

# $self->skip($item)
sub skip($, $)
{
}

# $self->clean($item)
sub clean($, $)
{
}

# package archive
package OpenBSD::PkgFileSource;
our @ISA = qw(OpenBSD::FileSource);
sub new($class, $handle, $location)
{
	bless {handle => $handle, location => $location }, $class;
}

sub prepare_to_extract($self, $item)
{
	require OpenBSD::ArcCheck;
	my $o = $self->{handle}->next;
	$o->{cwd} = $item->cwd;
	if (!$o->check_name($item)) {
		die "Error checking name for $o->{name} vs. $item->{name}\n";
	}
	$o->{name} = $item->fullname;
	$o->{destdir} = $self->{location};
	return $o;
}

sub next($self)
{
	my $o = $self->{handle}->next;
	if (defined $o) {
		$o->{destdir} = $self->{location};
	}
	return $o;
}

sub extracted_name($self, $item)
{
	return $self->{location}.$item->fullname;
}

sub retrieve($self, $state, $item)
{
	my $o = $self->prepare_to_extract($item);
	$o->create;
	return $item->fullname;
}

sub skip($self, $item)
{
	my $o = $self->prepare_to_extract($item);
	$self->{handle}->skip;
}

sub clean($self, $item)
{
	unlink($self->extracted_name($item));
}

1;
