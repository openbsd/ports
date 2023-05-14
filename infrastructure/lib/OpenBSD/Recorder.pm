# $OpenBSD: Recorder.pm,v 1.7 2023/05/14 09:00:33 espie Exp $
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

use v5.36;

# part of check-lib-depends

# Recorder: how we keep track of which binary uses which library
package OpenBSD::Recorder;
sub new($class)
{
	return bless {}, $class;
}

sub reduce_libname($self, $lib)
{
	$lib =~ s/^(.*\/)?lib(.*)\.so\.(\d+)\.\d+$/$2.$3/;
	return $lib;
}

sub libs($self)
{
	return keys %$self;
}

# $self->record_rpath($path, $filename)
sub record_rpath($, $, $)
{
}

# SimpleRecorder: remember one single binary for each library
package OpenBSD::SimpleRecorder;
our @ISA = qw(OpenBSD::Recorder);
sub record($self, $lib, $filename)
{
	$self->{$self->reduce_libname($lib)} = $filename;
}

sub binary($self, $lib)
{
	return $self->{$lib};
}

# AllRecorder: remember all binaries for each library
package OpenBSD::AllRecorder;
our @ISA = qw(OpenBSD::Recorder);
sub record($self, $lib, $filename)
{
	push(@{$self->{$self->reduce_libname($lib)}}, $filename);
}

sub binaries($self, $lib)
{
	return @{$self->{$lib}};
}
sub binary($self, $lib)
{
	return $self->{$lib}->[0];
}

sub dump($self, $fh)
{
	for my $lib (sort $self->libs) {
		print $fh "$lib:\t\n";
		for my $binary (sort $self->binaries($lib)) {
			print $fh "\t$binary\n";
		}
	}
}

package OpenBSD::DumpRecorder;
sub new($class)
{
	return bless {}, $class;
}

sub record($self, $lib, $filename)
{
	push(@{$self->{$filename}->{libs}}, $lib);
}

sub record_rpath($self, $path, $filename)
{
	push(@{$self->{$filename}->{rpath}}, $path);
}

sub dump($self, $fh)
{
	while (my ($binary, $v) = each %$self) {
		print $fh $binary;
		if (defined $v->{rpath}) {
			print $fh "(", join(':', @{$v->{rpath}}), ")";
		}
		$v->{libs} //= [];
		print $fh ": ", join(',', @{$v->{libs}}), "\n";
	}
}

sub libraries($self, $fullname)
{
	if (defined $self->{$fullname} && defined $self->{$fullname}{libs}) {
		return @{$self->{$fullname}{libs}};
	} else {
		return ();
	}
}

sub rpath($self, $fullname)
{
	if (defined $self->{$fullname} && defined $self->{$fullname}{rpath}) {
		return @{$self->{$fullname}{rpath}};
	} else {
		return ();
	}
}

sub retrieve($self, $state, $filename)
{
	open(my $fh, '<', $filename) or
	    $state->fatal("Can't read #1: #2", $filename, $!);
	while (my $line = <$fh>) {
		chomp $line;
		if ($line =~ m/^(.*?)\:\s(.*)$/) {
			my ($binary, $libs) = ($1, $2);
			if ($binary =~ m/^(.*)\((.*)\)$/) {
				$binary = $1;
				my @path = split(':', $2);
				$self->{$binary}{rpath} = \@path;
			}
			my @libs = split(/,/, $libs);
			$self->{$binary}{libs}= \@libs;
		} else {
			$state->errsay("Can't parse #1", $line);
		}
	}
	close $fh;
}

1;
