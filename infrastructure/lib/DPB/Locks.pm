# ex:ts=8 sw=4:
# $OpenBSD: Locks.pm,v 1.9 2011/11/13 22:18:04 espie Exp $
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
	$f =~ tr|/|.|;
	return "$self->{lockdir}/$f";
}

sub lockname
{
	my ($self, $v) = @_;
	return $self->build_lockname($v->lockname);
}

sub dolock
{
	my ($self, $name, $v) = @_;
	if (sysopen my $fh, $name, O_CREAT|O_EXCL|O_WRONLY, 0666) {
		print $fh "locked=", $v->logname, "\n";
		$v->print_parent($fh);
		return $fh;
	} else {
		return 0;
	}
}

sub lock
{
	my ($self, $v) = @_;
	my $lock = $self->lockname($v);
	my $fh = $self->dolock($lock, $v);
	if ($fh) {
		return $fh;
	}
	return undef;
}

sub unlock
{
	my ($self, $v) = @_;
	unlink($self->lockname($v));
}

sub locked
{
	my ($self, $v) = @_;
	return -e $self->lockname($v);
}

sub recheck_errors
{
	my ($self, $engine) = (@_);

	for my $name (qw(errors locks)) {
		my $e = $engine->{$name};
		$engine->{$name} = [];
		while (my $v = shift @$e) {
			if ($v->unlock_conditions($engine)) {
				$self->unlock($v);
			}
			if ($self->locked($v)) {
				push(@{$engine->{$name}}, $v);
			} else {
				if ($name eq 'errors') {
					$engine->rescan($v);
				} else {
					$v->requeue($engine);
				}
			}
		}
	}
}


1;
