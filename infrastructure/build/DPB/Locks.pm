# ex:ts=8 sw=4:
# $OpenBSD: Locks.pm,v 1.2 2010/03/20 18:29:19 espie Exp $
#
# Copyright (c) 2010 Marc Espie <espie@openbsd.org>
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

package DPB::Locks;

use File::Path;
use Fcntl;

sub new
{
	my ($class, $lockdir) = @_;

	File::Path::make_path($lockdir);
	bless {lockdir => $lockdir}, $class;
}

sub build_lockname
{
	my ($self, $f) = @_;
	$f =~ s|/|.|g;
	return "$self->{lockdir}/$f";
}
sub simple_lockname
{
	my ($self, $v) = @_;
	return $self->build_lockname($v->{pkgpath});
}

sub lockname
{
	my ($self, $v) = @_;
	return $self->build_lockname($v->fullpkgpath);
}

sub dolock
{
	my ($self, $name, $v) = @_;
	if (sysopen my $fh, $name, O_CREAT|O_EXCL|O_WRONLY, 0666) {
		print $fh "fullpkgpath=", $v->fullpkgpath, "\n";
		return $fh;
	} else {
		return 0;
	}
}

sub lock
{
	my ($self, $v) = @_;
	my $simple = $self->simple_lockname($v);
	my $fh = $self->dolock($simple, $v);
	if ($fh) {
		my $lk = $self->lockname($v);
		if ($simple eq $lk) {
			return $fh;
		}
		my $fh2 = $self->dolock($lk, $v);
		if ($fh2) {
			return $fh2;
		} else {
			$self->simple_unlock($v);
		}
	}
	return undef;
}

sub unlock
{
	my ($self, $v) = @_;
	unlink($self->lockname($v));
	$self->simple_unlock($v);
}

sub simple_unlock
{
	my ($self, $v) = @_;
	my $simple = $self->simple_lockname($v);
	if ($self->lockname($v) ne $simple) {
		unlink($simple);
	}
}

sub locked
{
	my ($self, $v) = @_;
	return -e $self->lockname($v) || -e $self->simple_lockname($v);
}

sub recheck_errors
{
	my ($self, $engine) = (@_);

	my $e = $engine->{errors};
	$engine->{errors} = [];
	while (my $v = shift @$e) {
		if ($self->locked($v)) {
			push(@{$engine->{errors}}, $v);
		} else {
			$engine->requeue($v);
		}
	}
}


1;
