#!/usr/bin/perl

# Collects data-dir for a Haskell package in ports tree.  Writes an
# evironment prep fragment for inclusion into wrapper scripts.
# Tightly integrated with cabal.port.mk.

use strict;
use warnings;
use File::Glob ':bsd_glob';
use File::Path qw(make_path);

my $wrksrc = $ENV{WRKSRC} // die "WRKSRC not set\n";
my $prefix = $ENV{PREFIX} // die "PREFIX not set\n";
my $distname = $ENV{DISTNAME} // die "DISTNAME not set\n";

my ($pkgdb) = bsd_glob("$wrksrc/dist-newstyle/packagedb/ghc-*");
die "No package database found\n" unless defined $pkgdb;

my $datapath = "$prefix/share/$distname";

umask 022;

sub try_record_pkg {
    my ($datadir, $pkg) = @_;

    return if !defined $datadir || $datadir eq '' || $datadir eq '.'
        || $datadir =~ m{/\.\z};

    my $pkgname = $pkg =~ s/-[0-9][0-9.]*\z//r;
    my $envvar = $pkgname =~ tr/-/_/r . '_datadir';
    my $destdir = "$datapath/$envvar";

    make_path($destdir);
    system("cd \Q$datadir\E && pax -rw . \Q$destdir\E") == 0
        or die "pax failed: $?\n";

    open my $fh, '>>', "$datapath/env" or die "Cannot open env: $!\n";
    print $fh "export $envvar=/usr/local/share/$distname/$envvar\n";
    close $fh;
}

my @pkgs = split ' ', `ghc-pkg --package-db='$pkgdb' list --simple-output`;

for my $pkg (@pkgs) {
    next if $pkg =~ /\Az-/;

    chomp(my $datadir = `ghc-pkg --package-db='$pkgdb' field '$pkg' data-dir --simple-output`);
    try_record_pkg($datadir, $pkg);
}

my ($cabal) = bsd_glob("$wrksrc/*.cabal");
die "No .cabal file found in $wrksrc\n" unless defined $cabal;

open my $fh, '<', $cabal or die "Cannot open $cabal: $!\n";
while (<$fh>) {
    if (/^data-dir:\s*(\S+)/) {
        try_record_pkg("$wrksrc/$1", $distname);
        last;
    }
}
close $fh;
