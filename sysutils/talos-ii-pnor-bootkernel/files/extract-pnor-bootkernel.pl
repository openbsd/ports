#!/usr/bin/env perl
#
# Copyright (c) 2026 Kirill A. Korinsky <kirill@korins.ky>
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

use Fcntl qw(SEEK_SET);
use File::Basename qw(dirname);
use File::Path qw(make_path);

use constant FFS_MAGIC => "PART";
use constant FFS_VERSION => 1;
use constant FFS_MAGIC_SIZE => 4;
use constant FFS_NAME_SIZE => 16;
use constant FFS_UINT32_SIZE => 4;
use constant FFS_RESERVED_SIZE => 16;
use constant COPY_CHUNK => 1024 * 1024;

use constant FFS_HEADER_SIZE =>
    FFS_MAGIC_SIZE + 6 * FFS_UINT32_SIZE + FFS_RESERVED_SIZE +
    FFS_UINT32_SIZE;
use constant FFS_ENTRY_PREFIX_SIZE => FFS_NAME_SIZE + 7 * FFS_UINT32_SIZE;

# OpenPOWER PNOR images use a big-endian FFS partition table.
my @FFS_HEADER_FIELDS = (
    [ magic        => "a" . FFS_MAGIC_SIZE ],
    [ version      => "N" ],
    [ table_blocks => "N" ],
    [ entry_size   => "N" ],
    [ entry_count  => "N" ],
    [ block_size   => "N" ],
    [ block_count  => "N" ],
    [ reserved     => "x" . FFS_RESERVED_SIZE ],
    [ checksum     => "N" ],
);
my @FFS_ENTRY_PREFIX_FIELDS = (
    [ name   => "Z" . FFS_NAME_SIZE ],
    [ base   => "N" ],
    [ blocks => "N" ],
    [ pid    => "N" ],
    [ id     => "N" ],
    [ type   => "N" ],
    [ flags  => "N" ],
    [ actual => "N" ],
);

my $FFS_HEADER_FORMAT = join " ", map { $_->[1] } @FFS_HEADER_FIELDS;
my $FFS_ENTRY_PREFIX_FORMAT = join " ", map { $_->[1] } @FFS_ENTRY_PREFIX_FIELDS;

sub usage {
    die "usage: $0 talos-ii-vXXX.pnor pnor.BOOTKERNEL\n";
}

sub fail {
    die "$0: @_\n";
}

sub read_exact {
    my ($fh, $size, $what) = @_;
    my $buf = "";

    while (length($buf) < $size) {
        my $n = read $fh, $buf, $size - length($buf), length($buf);
        fail("$what: $!") unless defined $n;
        fail("$what: unexpected EOF") if $n == 0;
    }

    return $buf;
}

sub copy_exact {
    my ($in, $out, $size) = @_;

    while ($size > 0) {
        my $want = $size < COPY_CHUNK ? $size : COPY_CHUNK;
        my $buf = read_exact($in, $want, "BOOTKERNEL data");
        print {$out} $buf or fail("write: $!");
        $size -= length($buf);
    }
}

@ARGV == 2 or usage();
my ($pnor, $output) = @ARGV;

open my $fh, "<:raw", $pnor or fail("$pnor: $!");
my $file_size = -s $fh;
defined $file_size or fail("$pnor: cannot stat: $!");

my $header = read_exact($fh, FFS_HEADER_SIZE, "PNOR FFS header");
my ($magic, $version, $table_blocks, $entry_size, $entry_count, $block_size,
    $block_count, undef) = unpack $FFS_HEADER_FORMAT, $header;

fail("PNOR FFS magic not found") if $magic ne FFS_MAGIC;
fail("unsupported PNOR FFS version $version") if $version != FFS_VERSION;
fail("PNOR FFS entry size is too small")
    if $entry_size < FFS_ENTRY_PREFIX_SIZE;

my $table_size = $table_blocks * $block_size;
my $entries_end = FFS_HEADER_SIZE + $entry_count * $entry_size;
my $image_size = $block_count * $block_size;

fail("PNOR FFS table extends past the file") if $table_size > $file_size;
fail("PNOR FFS entries extend past the table") if $entries_end > $table_size;
fail("PNOR FFS image size extends past the file") if $image_size > $file_size;

my ($bootkernel_offset, $bootkernel_size);

for my $i (0 .. $entry_count - 1) {
    my $entry_offset = FFS_HEADER_SIZE + $i * $entry_size;
    seek $fh, $entry_offset, SEEK_SET or fail("seek entry $i: $!");

    my $entry = read_exact($fh, $entry_size, "PNOR FFS entry $i");
    my ($name, $base, $blocks, undef, undef, undef, undef, $actual) =
        unpack $FFS_ENTRY_PREFIX_FORMAT, $entry;

    next if $name eq "";

    my $offset = $base * $block_size;
    my $size = $blocks * $block_size;
    fail("PNOR FFS entry $name extends past the image")
        if $offset + $size > $image_size;
    fail("PNOR FFS entry $name actual size is too large")
        if $actual > $size;

    if ($name eq "BOOTKERNEL") {
        ($bootkernel_offset, $bootkernel_size) = ($offset, $size);
        last;
    }
}

defined $bootkernel_offset or fail("BOOTKERNEL partition not found");

my $dir = dirname($output);
make_path($dir) if $dir ne "." && !-d $dir;

my $tmp = "$output.tmp";
open my $out, ">:raw", $tmp or fail("$tmp: $!");
seek $fh, $bootkernel_offset, SEEK_SET or fail("seek BOOTKERNEL: $!");
copy_exact($fh, $out, $bootkernel_size);
close $out or fail("$tmp: $!");
rename $tmp, $output or do {
    my $err = $!;
    unlink $tmp;
    fail("rename $tmp to $output: $err");
};

printf "wrote %s from %s\n", $output, $pnor;
printf "BOOTKERNEL offset=0x%x size=0x%x\n",
    $bootkernel_offset, $bootkernel_size;
