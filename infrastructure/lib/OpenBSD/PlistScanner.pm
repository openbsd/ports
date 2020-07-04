# $OpenBSD: PlistScanner.pm,v 1.17 2020/07/04 16:53:42 espie Exp $
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
	$self->{currentname} = $plist->pkgname." - ".$plist->fullpkgpath;
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

	while (my ($name, $path) = each %{$self->{name2path}}) {
		next if $self->{current}{$name};
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

sub find_all_current_pkgnames
{
	my ($self, $dir) = @_;

	$self->progress->set_header("Figuring out current names");
	open(my $input, "cd $dir && $self->{make} show='PKGPATHS PKGNAMES' ECHO_MSG=:|");
	while (<$input>) {
		chomp;
		my @values = split(/\s+/, $_);
		my $line2 = <$input>;
		chomp $line2;
		my @keys = split(/\s+/, $line2);
		$self->progress->message($values[0]);
		while (my $key = shift @keys) {
			my $value = shift @values;
			$self->{name2path}{$key} = $value;
			$self->{current}{$key} = 1;
	#		$self->ui->say("pkgname: #1", $key);
		}
	}
	$self->progress->next;
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

sub scan_ports
{
	my ($self, $dir, $paths) = @_;

	my $child_pid = open(my $input, "-|");

	if (!$child_pid) {
		chdir($dir);
		open(STDERR, "/dev/null");
		$ENV{REPORT_PROBLEM} = 'true';
		if (defined $paths) {
			$ENV{SUBDIR} = join(' ', sort keys %$paths);
		}
		exec("$self->{make} print-plist-all-with-depends");
	}

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
	waitpid $child_pid, 0;
}

sub handle_portsdir
{
	my ($self, $dir) = @_;
	# prime initial run

	$self->scan_ports($dir, undef);
	# and now the rescans;

	my $tried = {};
	while (1) {
		my $totry = undef;
		for my $pkgname (keys %{$self->{wanted}}) {
			next if $self->{got}{$pkgname};
			my $path = $self->{pkgpath}{$pkgname};
			next if $tried->{$path};
			$totry->{$path} = 1;
			$tried->{$path} = 1;
		}
		return if !defined $totry;
		$self->scan_ports($dir, $totry);
	}
}

sub rescan_dependencies
{
	my ($self, $dir) = @_;

	$self->progress->set_header("Scanning extra dependencies");
	my $notfound = {};
	my $todo;
	do {
		$todo = {};
		while (my ($pkg, $reason) = each %{$self->{wanted}}) {
			next if $self->{got}{$pkg};
			next if $notfound->{$pkg};
			$todo->{$pkg} = $reason;
		}
		while (my ($pkgname, $reason) = each %$todo) {
			$self->ui->say("rescanning: #1 (#2)",
			    $pkgname, $reason);
			my $file = "$dir/$pkgname";
			if (-f $file) {
				$self->handle_file($file);
			} else {
				$notfound->{$pkgname} = $reason;
		    	}
		}
	} while (keys %$todo > 0);
	$self->progress->next;
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
			if ($self->ui->opt('f') &&
			    !defined $self->{current}{$pkgname}) {
			    	return;
			}
#			$self->ui->say("doing: #1", $pkgname);
			$self->handle_file($self->ui->opt('d')."/$pkgname");
		    });
		if ($self->ui->opt('f')) {
		}
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
	if ($self->ui->opt('d')) {
		$self->rescan_dependencies($self->ui->opt('d'));
	}
}

sub run
{
	my $self = shift;

	if ($self->ui->opt('p') && $self->ui->opt('f')) {
		$self->find_all_current_pkgnames($self->ui->opt('p'));
	}
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

sub handle_options
{
	my ($self, $extra, $usage) = @_;
	$usage //= "[-vefS] [-d plist_dir] [-o output] [-p ports_dir] [pkgname ...]";
	$extra //= '';
	$self->ui->handle_options($extra.'d:efo:p:sS', $usage);
}

sub new
{
	my ($class, $cmd) = @_;
	my $ui = OpenBSD::AddCreateDelete::State->new($cmd);
	my $o = bless {ui => $ui, 
	    make => $ENV{MAKE} || 'make', 
	    name2path => {}, 
	    current => {}
	    }, $class;
	$o->handle_options;
	if ($ui->opt('o')) {
		open $o->{output}, '>', $ui->opt('o')
		    or $ui->fatal("Can't write to #1: #2", $ui->opt('o'), $!);
	}
	return $o;
}

1;
