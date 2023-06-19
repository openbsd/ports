# ex:ts=8 sw=4:
# $OpenBSD: Logger.pm,v 1.27 2023/06/19 08:41:30 espie Exp $
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

use v5.36;
use DPB::User;

package DPB::Logger;
our @ISA = (qw(DPB::UserProxy));
use File::Path;
use File::Basename;
use IO::File;

sub new($class, $state)
{
	if (!defined $state->{log_user}) {
		die "Too early";
	}
	bless {logdir => $state->logdir, user => $state->{log_user}, 
	    clean => $state->opt('c')}, $class;
}

sub logfile($self, $name)
{
	my $log = "$self->{logdir}/$name.log";
	$self->make_path(File::Basename::dirname($log));
	return $log;
}

sub _open($self, $mode, $name)
{
	my $log = $self->logfile($name);
	my $fh = $self->open($mode, $log);
	if (defined $fh) {
		return $fh;
	} else {
		$self->write_error($log);
	}
}

sub append($self, $name)
{
	return $self->_open('>>', $name);
}

sub create($self, $name)
{
	return $self->_open('>', $name);
}

sub log_pkgpath($self, $v)
{
	return $self->logfile("/paths/".$v->fullpkgpath);
}

sub testlog_pkgpath($self, $v)
{
	return $self->logfile("/tests/".$v->fullpkgpath);
}

sub log_pkgname($self, $v)
{
	if ($v->has_fullpkgname) {
		return $self->logfile("/packages/".$v->fullpkgname);
	} else {
		return $self->logfile("/nopkgname/".$v->fullpkgpath);
	}
}

sub link($self, $a, $b)
{
	$self->run_as(
	    sub() {
		if ($self->{clean}) {
			unlink($b);
		}
		my $src = File::Spec->catfile(
		    File::Spec->abs2rel($self->{logdir}, 
		    File::Basename::dirname($b)),
		    File::Spec->abs2rel($a, $self->{logdir}));
		symlink($src, $b);
	    });
}

sub make_logs($self, $v)
{
	my $log = $self->log_pkgpath($v);
	if ($self->{clean}) {
		$self->unlink($log);
	}
	my $fh = $self->open("+>>", $log);
	DPB::Util->die_bang($self->user->user. " can't write to $log") 
	    unless defined $fh;
	for my $w ($v->build_path_list) {
		$self->link($log, $self->log_pkgname($w));
	}
	return ($log, $fh);
}

sub make_test_logs($self, $v)
{
	my $log = $self->testlog_pkgpath($v);
	if ($self->{clean}) {
		$self->unlink($log);
	}
}

sub log_error($self, $v, @messages)
{
	my ($log, $fh) = $self->make_logs($v);
	for my $msg (@messages) {
		print $fh $msg, "\n";
	}
	$v->print_parent($fh);
}

sub make_distlogs($self, $f)
{
	return $self->logfile("/dist/".$f->{name});
}

sub make_log_link($self, $v)
{
	$self->run_as(
	    sub() {
		my $file = $self->log_pkgname($v);
		# we were built, but we don't link, so try the main pkgpath.
		if (!-e $file) {
			my $mainlog = $self->log_pkgpath(DPB::PkgPath->new($v->pkgpath_and_flavors));
			if (-e $mainlog) {
				$self->link($mainlog, $file);
			}
			# okay, so it was built through another flavor, 
			# don't bother for now, 
			# it will all solve itself eventually
		}
		$self->link($file, $self->log_pkgpath($v));
	    });
}

1;
