# $OpenBSD: FileSource.pm,v 1.3 2014/07/09 11:26:11 espie Exp $
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

use strict;
use warnings;

# part of check-lib-depends
# FileSource: where we get the files to analyze

package OpenBSD::FileSource;

sub directory
{
	my $self = shift;
	return $self->{location};
}

# file system
package OpenBSD::FsFileSource;
our @ISA = qw(OpenBSD::FileSource);
sub new
{
	my ($class, $location) = @_;
	bless {location => $location }, $class
}

sub retrieve
{
	my ($self, $state, $item) = @_;
	return $item->fullname;
}

sub skip
{
}

sub clean
{
}

# package archive
package OpenBSD::PkgFileSource;
our @ISA = qw(OpenBSD::FileSource);
sub new
{
	my ($class, $handle, $location) = @_;
	bless {handle => $handle, location => $location }, $class;
}

sub prepare_to_extract
{
	my ($self, $item) = @_;
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

sub next
{
	my $self = shift;
	my $o = $self->{handle}->next;
	if (defined $o) {
		$o->{destdir} = $self->{location};
	}
	return $o;
}

sub extracted_name
{
	my ($self, $item) = @_;
	return $self->{location}.$item->fullname;
}

sub retrieve
{
	my ($self, $state, $item) = @_;
	my $o = $self->prepare_to_extract($item);
	$o->create;
	return $item->fullname;
}

sub skip
{
	my ($self, $item) = @_;
	my $o = $self->prepare_to_extract($item);
	$self->{handle}->skip;
}

sub clean
{
	my ($self, $item) = @_;
	unlink($self->extracted_name($item));
}

1;
