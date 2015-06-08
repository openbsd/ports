# $OpenBSD: PlistScanner.pm,v 1.8 2015/06/08 15:11:53 espie Exp $
# Copyright (c) 2014 Marc Espie <espie@openbsd.org>
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

package OpenBSD::PlistScanner;
use OpenBSD::PackageInfo;
use OpenBSD::AddCreateDelete;
use OpenBSD::PackingList;

sub handle_plist
{
	my ($self, $filename, $plist) = @_;
	if (!defined $plist) {
		$self->ui->errsay("Error reading #1", $filename);
		return;
	}
	if (!defined $plist->pkgname) {
		if (-z $filename) {
			$self->ui->errsay("Empty plist file #1", $filename);
		} else {
			$self->ui->errsay("Invalid package #1", $filename);
		}
		return;
	}
	$self->{name2path}{$plist->pkgname} = $plist->fullpkgpath;
	$self->say("#1 -> #2", $filename, $plist->pkgname) 
	    if $self->ui->verbose;
	$self->register_plist($plist);
	$plist->forget;
}

sub progress
{
	return shift->ui->progress;
}

sub handle_file
{
	my ($self, $filename) = @_;
	return if -d $filename;
	my $plist = OpenBSD::PackingList->fromfile($filename);
	$self->handle_plist($filename, $plist);
}

sub handle_portspath
{
	my ($self, $path) = @_;
	foreach (split(/:/, $path)) {
		$self->handle_portsdir($_);
	}
}

sub find_current_pkgnames
{
	my ($self, $dir) = @_;

	my $done = {};
	my @todo = ();

	for my $path (values %{$self->{name2path}}) {
		next if $done->{$path};
		push(@todo, $path);
	}
	my $total = scalar(@todo);
	my $i = 0;
	while (my @l = (splice @todo, 0, 1000)) {
		my $pid = open(my $output, "-|");
		if ($pid == 0) {
			$DB::inhibit_exit = 0;
			chdir($dir) or die "bad directory $dir";
			$ENV{SUBDIR} = join(' ', @l);
			open STDERR, ">", "/dev/null";
			exec { $self->{make} } 
			    ("make", 'show=FULLPKGNAME${SUBPACKAGE}', 
				'REPORT_PROBLEM=true', 'ECHO_MSG=:');
			exit(1);
		}
		while (<$output>) {
			$i++;
			$self->progress->show($i, $total);
			chomp;
			$self->{current}{$_} = 1;
		}
		close($output);
	}
}

sub reader
{
	my ($self, $rdone) = @_;
	return
	    sub {
		my ($fh, $cont) = @_;
		local $_;
		while (<$fh>) {
			return if m/^\=\=\=\> /o;
			&$cont($_);
		}
		$$rdone = 1;
	    };
}

sub handle_portsdir
{
	my ($self, $dir) = @_;

	open(my $input, "cd $dir && $self->{make} print-plist-all |");
	my $done = 0;
	while (!$done) {
		my $plist = OpenBSD::PackingList->read($input, 
		    $self->reader(\$done));
		if (defined $plist && $plist->pkgname) {
			$self->progress->message($plist->fullpkgpath ||
			    $plist->pkgname);
			$self->handle_plist($dir, $plist);
		}
	}
}

sub scan
{
	my $self = shift;
	$self->progress->set_header("Scanning");
	if ($self->ui->opt('d')) {
		opendir(my $dir, $self->ui->opt('d'));
		my @l = readdir $dir;
		closedir($dir);

		$self->progress->for_list("Scanning", \@l,
		    sub {
			my $pkgname = shift;
			return if $pkgname eq '.' or $pkgname eq '..';
			$self->handle_file($self->ui->opt('d')."/$pkgname");
		    });
	} elsif ($self->ui->opt('p')) {
		$self->handle_portspath($self->ui->opt('p'));
	} elsif (@ARGV==0) {
		@ARGV=(<*.tgz>);
	}

	if (@ARGV > 0) {
		$self->progress->for_list("Scanning", \@ARGV,
		    sub {
			my $pkgname = shift;
			my $true_package = $self->ui->repo->find($pkgname);
			return unless $true_package;
			my $dir = $true_package->info;
			$true_package->close;
			$self->handle_file($dir.CONTENTS);
			rmtree($dir);
		    });
	}
	$self->progress->set_header("Scanning extra dependencies");
	$self->progress->message("");
	my $notfound = {};
	my $todo;
	do {
		$todo = {};
		for my $pkg (keys %{$self->{wanted}}) {
			next if $self->{got}{$pkg};
			next if $notfound->{$pkg};
			$todo->{$pkg} = 1;
			$self->say("Dependency not found #1", $pkg);
		}
		for my $pkgname (keys %$todo) {
			my $true_package;
			if ($self->ui->opt('S')) {
				$true_package = $self->ui->repo->find($pkgname);
			}
			if (defined $true_package) {
				my $dir = $true_package->info;
				$true_package->close;
				my $plist = OpenBSD::PackingList->fromfile($dir.CONTENTS);
				File::Path::rmtree($dir);
				$self->register_plist($plist);
			} else {
				$notfound->{$pkgname} = 1;
		    	}
		}
	} while (keys %$todo > 0);
	$self->progress->next;
}

sub run
{
	my $self = shift;

	$self->scan;

	if ($self->ui->opt('d') && $self->ui->opt('p')) {
		$self->progress->set_header("Computing current pkgnames");
		$self->find_current_pkgnames($self->ui->opt('p'));
	}

	$self->display_results;
}

sub say
{
	my $self = shift;
	my $msg = $self->ui->f(@_)."\n";
	$self->ui->_print($msg) unless $self->ui->opt('s');
	if (defined $self->{output}) {
		print {$self->{output}} $msg;
	}
}

sub fullname
{
	my ($self, $pkgname) = @_;
	my $path = $self->{name2path}{$pkgname};
	if ($self->{current}{$pkgname}) {
		return "!$pkgname($path)";
	} else {
		return "$pkgname($path)";
	}
}

sub ui
{
	my $self = shift;
	return $self->{ui};
}

sub new
{
	my ($class, $cmd) = @_;
	my $ui = OpenBSD::AddCreateDelete::State->new('check-conflicts');
	$ui->handle_options('d:eo:p:sS', '[-veS] [-d plist_dir] [-o output] [-p ports_dir] [pkgname ...]');
	my $make = $ENV{MAKE} || 'make';
	my $o = bless {ui => $ui, 
	    make => $ENV{MAKE} || 'make', 
	    name2path => {}, 
	    current => {}
	    }, $class;
	if ($ui->opt('o')) {
		open $o->{output}, '>', $ui->opt('o')
		    or $ui->fatal("Can't write to #1: #2", $ui->opt('o'), $!);
	}
	return $o;
}

1;
