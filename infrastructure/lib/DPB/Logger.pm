# ex:ts=8 sw=4:
# $OpenBSD: Logger.pm,v 1.13 2014/03/15 09:51:27 espie Exp $
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

package DPB::Logger;
use File::Path;
use File::Basename;
use IO::File;
use Fcntl;

sub new
{
	my ($class, $logdir, $clean) = @_;
	bless {logdir => $logdir, clean => $clean}, $class;
}

sub logfile
{
	my ($self, $name) = @_;
	my $log = "$self->{logdir}/$name.log";
	File::Path::mkpath(File::Basename::dirname($log));
	return $log;
}

sub _open
{
	my ($self, $mode, $name) = @_;
	my $log = $self->logfile($name);
	my $fh = IO::File->new($log, $mode) or die "Can't write to $log: $!\n";
	my $flags = $fh->fcntl(F_GETFL, 0);
	$fh->fcntl(F_SETFL, $flags | FD_CLOEXEC);
	return $fh;
}

sub open
{
	my ($self, $name) = @_;
	return $self->_open('>>', $name);
}

sub create
{
	my ($self, $name) = @_;
	return $self->_open('>', $name);
}

sub log_pkgpath
{
	my ($self, $v) = @_;
	return $self->logfile("/paths/".$v->fullpkgpath);
}

sub testlog_pkgpath
{
	my ($self, $v) = @_;
	return $self->logfile("/tests/".$v->fullpkgpath);
}

sub log_pkgname
{
	my ($self, $v) = @_;
	if ($v->has_fullpkgname) {
		return $self->logfile("/packages/".$v->fullpkgname);
	} else {
		return $self->logfile("/nopkgname/".$v->fullpkgpath);
	}
}

sub link
{
	my ($self, $a, $b) = @_;
	if ($self->{clean}) {
		unlink($b);
	}
	my $src = File::Spec->catfile(
	    File::Spec->abs2rel($self->{logdir}, File::Basename::dirname($b)),
	    File::Spec->abs2rel($a, $self->{logdir}));
	symlink($src, $b);
}

sub make_logs
{
	my ($self, $v) = @_;
	my $log = $self->log_pkgpath($v);
	if ($self->{clean}) {
		unlink($log);
	}
	for my $w ($v->build_path_list) {
		$self->link($log, $self->log_pkgname($w));
	}
	return $log;
}

sub make_test_logs
{
	my ($self, $v) = @_;
	my $log = $self->testlog_pkgpath($v);
	if ($self->{clean}) {
		unlink($log);
	}
	return $log;
}

sub log_error
{
	my ($self, $v, @messages) = @_;
	my $log = $self->make_logs($v);
	CORE::open my $fh, ">>", $log or die "Can't write to $log: $!\n";
	for my $msg (@messages) {
		print $fh $msg, "\n";
	}
	$v->print_parent($fh);
}

sub make_distlogs
{
	my ($self, $f) = @_;
	return $self->logfile("/dist/".$f->{name});
}

sub make_log_link
{
	my ($self, $v) = @_;
	my $file = $self->log_pkgname($v);
	# we were built, but we don't link, so try the main pkgpath.
	if (!-e $file) {
		my $mainlog = $self->log_pkgpath(DPB::PkgPath->new($v->pkgpath_and_flavors));
		if (-e $mainlog) {
			$self->link($mainlog, $file);
		}
		# okay, so it was built through another flavor, don't bother
		# for now, it will all solve itself eventually
	}
	$self->link($file, $self->log_pkgpath($v));
}

1;
