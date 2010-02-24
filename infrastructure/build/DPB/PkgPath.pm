# ex:ts=8 sw=4:
# $OpenBSD: PkgPath.pm,v 1.1 2010/02/24 11:33:31 espie Exp $
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

# Handles PkgPath;
# all this code is *seriously* dependent on unique objects
# everything is done to normalize PkgPaths, so that we have
# one pkgpath object for each distinct flavor/subpackage combination

package DPB::PkgPath;
my $cache = {};
my $seen = {};

sub create
{
	my ($class, $fullpkgpath) = @_;
	# subdivide into flavors/multi
	my @list = split /,/, $fullpkgpath;
	my $pkgpath = shift @list;
	my %flavors = map {($_, 1)} grep { !/^\-/} @list;
	my @multi = grep { /^\-/} @list;
	my $multi = pop(@multi) || undef;
	if (@multi > 0) {
		die "$fullpkgpath has >1 multi\n";
	}

	bless {pkgpath => $pkgpath,
		flavors => \%flavors,
		multi => $multi}, $class;
}

# cache just once, put into standard order, so that we don't
# create different objects for path,f1,f2 and path,f2,f1
sub normalize
{
	my $o = shift;

	my $fullpkgpath = $o->fullpkgpath;
	return $cache->{$fullpkgpath} //= $o;
}

# actual user constructor that doesn't record into seen
sub new_hidden
{
	my ($class, $fullpkgpath) = @_;
	if (defined $cache->{$fullpkgpath}) {
		return $cache->{$fullpkgpath};
	} else {
		return $class->create($fullpkgpath)->normalize;
	}
}

# actual user constructor that records into seen
sub new
{
	my ($class, $fullpkgpath) = @_;
	my $o = $class->new_hidden($fullpkgpath);
	$seen->{$o} //= $o;
}

sub seen
{
	return values %$seen;
}

sub basic_list
{
	my $self = shift;
	my @list = ($self->{pkgpath});
	if (keys %{$self->{flavors}}) {
		push(@list, sort keys %{$self->{flavors}});
	}
	return @list;
}
# string version, with everything in a standard order
sub fullpkgpath
{
	my $self = shift;
	my @list = $self->basic_list;
	if ($self->{multi}) {
		push(@list, $self->{multi});
	}
	return join (',', @list);
}


# without multi. Used by the SUBDIRs code to make sure we get the right
# value for default subpackage.

sub pkgpath_and_flavors
{
	my $self = shift;
	return join (',', $self->basic_list);
}

sub add_to_subdirlist
{
	my ($self, $list) = @_;
	push(@$list, $self->pkgpath_and_flavors);
}

sub copy_flavors
{
	my $self = shift;
	return {map {($_, 1)} keys %{$self->{flavors}}};
}

# XXX
# in the ports tree, when you build with SUBDIR=n/value, you'll
# get all the -multi packages, but with the default flavor.
# we have to strip the flavor part to match the SUBDIR we asked for.

sub compose
{
	my ($class, $fullpkgpath, $pseudo) = @_;
	my $o = $class->create($fullpkgpath);
	$o->{flavors} = $pseudo->copy_flavors;
	return $o->normalize;
}

# XXX All this code knows too much about PortInfo for proper OO

sub fullpkgname
{
	my $self = shift;
	return (defined $self->{info}) ?  $self->{info}->fullpkgname : undef;
}


sub zap_default
{
	my ($self, $subpackage) = @_;
	return $self unless defined $subpackage;
	if ($subpackage->string eq $self->{multi}) {
		my $o = bless {pkgpath => $self->{pkgpath},
			flavors => $self->copy_flavors}, ref($self);
		return $o->normalize;
	} else {
		return $self;
	}
}

# default subpackage leads to pkgpath,-default = pkgpath
sub handle_default
{
	my ($self, $h) = @_;
	my $m = $self->zap_default($self->{info}->{SUBPACKAGE});
	if ($m ne $self) {
		#print $m->fullpkgpath, " vs. ", $self->fullpkgpath,"\n";
		$m->{info} = $self->{info};
		$h->{$m} = $m;
	}
}

sub dump
{
	my ($self, $fh) = @_;
	print $fh $self->fullpkgpath, "\n";
	if (defined $self->{info}) {
		$self->{info}->dump($fh);
	}
}

sub quick_dump
{
	my ($self, $fh) = @_;
	print $fh $self->fullpkgpath, "\n";
	if (defined $self->{info}) {
		$self->{info}->quick_dump($fh);
	}
}

sub merge_depends
{
	my ($class, $h) = @_;
	my $global = bless {}, "AddDepends";
	for my $v (values %$h) {
		for my $k (qw(LIB_DEPENDS BUILD_DEPENDS)) {
			if (defined $v->{info}{$k}) {
				for my $d (values %{$v->{info}{$k}}) {
					$global->{$d} = $d;
				}
			}
		}
		if (defined $v->{info}{RUN_DEPENDS}) {
			for my $d (values %{$v->{info}{RUN_DEPENDS}}) {
				$v->{info}{RDEPENDS}{$d} = $d;
				bless $v->{info}{RDEPENDS}, "AddDepends";
			}
		}
	}
	if (values %$global > 0) {
		for my $v (values %$h) {
			$v->{info}{DEPENDS} = $global;
		}
	}
}

1;
