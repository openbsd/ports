# $OpenBSD: PlistScanner.pm,v 1.1 2014/03/10 09:46:08 espie Exp $
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

sub handle_plist
{
	my ($self, $filename, $plist) = @_;
	if (!defined $plist) {
		$self->ui->errsay("Error reading #1", $filename);
		return;
	}
	if (!defined $plist->pkgname) {
		$self->ui->errsay("Invalid package #1", $filename);
		return;
	}
	$self->{name2path}{$plist->pkgname} = $plist->fullpkgpath;
	$self->ui->say("#1 -> #2", $filename, $plist->pkgname) 
	    if $self->ui->verbose;
	$self->register_plist($plist);
	$plist->forget;
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
			$self->ui->progress->show($i, $total);
			chomp;
			$self->{current}{$_} = 1;
		}
		close($output);
	}
}

sub handle_portsdir
{
	my ($self, $dir) = @_;

	open(my $input, "cd $dir && $self->{make} print-plist-all |");
	my $done = 0;
	while (!$done) {
		my $plist = OpenBSD::PackingList->read($input, sub {
			my ($fh, $cont) = @_;
			local $_;
			while (<$fh>) {
				return if m/^\=\=\=\> /o;
				next unless m/^\@(?:cwd|name|info|man|file|lib|shell|bin|conflict|comment\s+subdir\=)\b/o || !m/^\@/o;
				&$cont($_);
			}
			$done = 1;
		});
		if (defined $plist && $plist->pkgname()) {
			$self->handle_plist($dir, $plist);
			$self->ui->progress->working(10);
		}
	}
}

sub run
{
	my $self = shift;


	$self->ui->progress->set_header("Scanning");
	my $portpath;
	if ($self->ui->opt('d')) {
		opendir(my $dir, $self->ui->opt('d'));
		my @l = readdir $dir;
		closedir($dir);

		$self->ui->progress->for_list("Scanning", \@l,
		    sub {
			my $pkgname = shift;
			return if $pkgname eq '.' or $pkgname eq '..';
			$self->handle_file($self->ui->opt('d')."/$pkgname");
		    });
	} elsif ($self->ui->opt('p')) {
		$self->handle_portspath($self->ui->opt('p'));
		$portpath = 1;
	} elsif (@ARGV==0) {
		@ARGV=(<*.tgz>);
	}

	if (@ARGV > 0) {
		$self->ui->progress->for_list("Scanning", \@ARGV,
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

	if (!$portpath && $self->ui->opt('p')) {
		$self->ui->progress->set_header("Computing current pkgnames");
		$self->find_current_pkgnames($self->ui->opt('p'));
	}
	$self->display_results;
}

sub fullname
{
	my ($self, $pkgname) = @_;
	my $path = $self->{name2path}{$pkgname};
	if ($self->{current}{$pkgname}) {
		return "$pkgname!($path)";
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
	$ui->handle_options('d:ep:', '[-ve] [-d plist_dir] [-p ports_dir] [pkgname ...]');
	my $make = $ENV{MAKE} || 'make';

	bless {ui => $ui, make => $make, name2path => {}, current => {}}, 
	    $class;
}

1;
