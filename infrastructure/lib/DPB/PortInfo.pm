# ex:ts=8 sw=4:
# $OpenBSD: PortInfo.pm,v 1.42 2019/11/09 17:06:37 espie Exp $
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

# AddInfo is responsible for converting a given variable value given by
# dump-vars into a properly nice "object"
# Then DPB::PortInfo collates those into a complete info object
#
# and DPB::PkgPath::merge_depends DPB::Fetch::build_distinfo
# are responsible for cleaning up the information further

package AddInfo;

# by default, we take the value and add it as the corresponding \$string
# to the portinfo object

sub add
{
	my ($class, $var, $info, $value, $parent) = @_;
	return if $value =~ m/^[\s\-]*$/;
	$info->{$var} = $class->new($value, $info, $parent);
}

sub new
{
	my ($class, $value) = @_;
	bless \$value, $class;
}

sub string
{
	my $self = shift;
	return $$self;
}

# by default don't show up in quick dumps
sub quickie
{
	return 0;
}

package AddIgnore;
our @ISA = qw(AddInfo);
sub string
{
	my $self = shift;
	my $msg = $$self;
	$msg =~ s/\\//g;
	$msg =~ s/\"\s+\"/\; /g;
	return $msg;
}

package AddYesNo;
our @ISA = qw(AddInfo);
# don't add 'no' values to save space

sub add
{
	my ($class, $var, $info, $value, $parent) = @_;
	return if $value =~ m/^no$/i;
	$info->{$var} = $class->new($value, $info, $parent);
}

sub new
{
	my ($class, $value) = @_;
	my $a = 1;
	bless \$a, $class;
}

# ... and similarly for PERMIT_* but the other way around
# PERMIT_DISTFILES* is != yes.
package AddNegative;
our @ISA = qw(AddInfo);

sub add
{
	my ($class, $var, $info, $value, $parent) = @_;
	return if $value =~ m/^yes$/i;
	$info->{$var} = $class->new($value, $info, $parent);
}

sub new
{
	my ($class, $value) = @_;
	my $a = 0;
	bless \$a, $class;
}

# variables we WANT in a quick dump
package AddInfoShow;
our @ISA = qw(AddInfo);
sub quickie
{
	return 1;
}

# by default, unordered lists
package AddList;
our @ISA = qw(AddInfo);

sub make_list
{
	my ($class, $value) = @_;
	$value =~ s/^\s+//;
	$value =~ s/\s+$//;
	return split(/\s+/, $value);
}

sub new
{
	my ($class, $value) = @_;
	my %values = map {($_, 1)} $class->make_list($value);
	bless \%values, $class;
}

sub string
{
	my $self = shift;
	return join(', ', keys %$self);
}

# specific to DPB_PROPERTIES
package AddPropertyList;
our @ISA = (qw(AddList));

sub new
{
	my ($class, $value) = @_;
	my %h = ();
	for my $v ($class->make_list($value)) {
		if ($v =~ /^(tag)\:(.*)$/) {
			$h{$1} = $2;
		} else {
			$h{$v} = 1;
		}
	}
	return bless \%h, $class;
}

sub string
{
	my $self = shift;
	my @l = ();
	while (my ($k, $v) = each %$self) {
		if ($v eq '1') {
			push(@l, $k);
		} else {
			push(@l, $k."->".$v);
		}
	}
	return join(',', @l);
}

package AddRoachList;
our @ISA = (qw(AddPropertyList));
sub new
{
	my ($class, $value) = @_;
	my %h = ();
	for my $v ($class->make_list($value)) {
		if ($v =~ /^(.*?)\:(.*)$/) {
			$h{$1} = $2;
		} else {
			$h{$v} = 1;
		}
	}
	return bless \%h, $class;
}

package AddOrderedList;
our @ISA = qw(AddList);
sub new
{
	my ($class, $value) = @_;
	bless [$class->make_list($value)], $class;
}

sub string
{
	my $self = shift;
	return join(' ', @$self);
}

package FetchManually;
our @ISA = qw(AddOrderedList);
sub add
{
	my ($class, $var, $info, $value, $parent) = @_;
	return if $value =~ /^\s*no\s*$/i;
	$class->SUPER::add($var, $info, $value, $parent);
}

sub make_list
{
	my ($class, $value) = @_;
	$value =~ s/^\s*\"//;
	$value =~ s/\"\s*$//;
	return split(/\"\s*\"/, $value);
}

sub string
{
	my $self = shift;
	return join("\n", @$self);
}

package AddDepends;
our @ISA = qw(AddList);
sub extra
{
	return 'EXTRA';
}

sub new
{
	my ($class, $value, $info, $parent) = @_;
	my $r = {};
	for my $d ($class->make_list($value)) {
		my $copy = $d;
		next if $d =~ m/^$/;
		$d =~ s/^\:+//;
		$d =~ s/^[^\/]*\://;
		if ($d =~ s/\:(?:patch|build|configure)$//) {
			Extra->add($class->extra, $info, $d);
		} else {
			$d =~ s/\:$//;
			if ($d =~ m/[:<>=]/) {
				DPB::Util->die("Error: invalid *DEPENDS $copy");
			} else {
				my $path = DPB::PkgPath->new($d);
				$path->{parent} //= $parent;
				$r->{$path} = $path;
			}
		}
	}
	bless $r, $class;
}

sub string
{
	my $self = shift;
	return '['.join(';', map {$_->logname} (values %$self)).']';
}

sub quickie
{
	return 1;
}

package AddTestDepends;
our @ISA = qw(AddDepends);
sub extra
{
	return 'EXTRA2';
}

package Extra;
our @ISA = qw(AddDepends);

sub add
{
	my ($class, $key, $info, $value, $parent) = @_;
	$info->{$key} //= bless {}, $class;
	my $path = DPB::PkgPath->new($value);
	$path->{parent} //= $parent;
	$info->{$key}{$path} = $path;
	return $info;
}

package DPB::PortInfo;
my %adder = (
# actual info from dump-vars
	FULLPKGNAME => "AddInfoShow",
	RUN_DEPENDS => "AddDepends",
	BUILD_DEPENDS => "AddDepends",
	LIB_DEPENDS => "AddDepends",
	SUBPACKAGE => "AddInfo",
	BUILD_PACKAGES => "AddList",
	DPB_PROPERTIES => "AddPropertyList",
	IGNORE => "AddIgnore",
	FLAVOR => "AddList",
	DISTFILES => 'AddOrderedList',
	PATCHFILES => 'AddList',
	SUPDISTFILES => 'AddList',
	DIST_SUBDIR => 'AddInfo',
	CHECKSUM_FILE => 'AddInfo',
	FETCH_MANUALLY => 'FetchManually',
	MISSING_FILES => 'AddList',
	MASTER_SITES => 'AddOrderedList',
	MASTER_SITES0 => 'AddOrderedList',
	MASTER_SITES1 => 'AddOrderedList',
	MASTER_SITES2 => 'AddOrderedList',
	MASTER_SITES3 => 'AddOrderedList',
	MASTER_SITES4 => 'AddOrderedList',
	MASTER_SITES5 => 'AddOrderedList',
	MASTER_SITES6 => 'AddOrderedList',
	MASTER_SITES7 => 'AddOrderedList',
	MASTER_SITES8 => 'AddOrderedList',
	MASTER_SITES9 => 'AddOrderedList',
	MULTI_PACKAGES => 'AddList',
	PERMIT_DISTFILES => 'AddNegative',
	PERMIT_PACKAGE => 'AddNegative',
# not yet used, provision for regression tests
	TEST_DEPENDS => "AddTestDepends",
	NO_TEST => "AddNegative",
	TEST_IS_INTERACTIVE => "AddYesNo",
# extra stuff we're generating
	DEPENDS => "AddDepends",	# all BUILD_DEPENDS/LIB_DEPENDS
	EXTRA => "Extra",	# extract stuff and things in DEPENDS
	EXTRA2 => "Extra",	# extract stuff and things in TEST_DEPENDS
	BEXTRA => "Extra",	# EXTRA moved from todo to done
	BDEPENDS => "AddDepends",# DEPENDS moved from todo to done
	RDEPENDS => "AddDepends",# RUN_DEPENDS moved from todo to done
	DIST => "AddDepends",	# all DISTFILES with all info
	FDEPENDS => "AddDepends",# DISTFILES too, but after DISTIGNORE, 
				 # and shrinking
	# DISTIGNORE should be there ?
	# stuff for roach
	DISTNAME => 'AddInfo',
	HOMEPAGE => 'AddInfo',
	PORTROACH => 'AddRoachList',
	PORTROACH_COMMENT => 'AddInfo',
	MAINTAINER => 'AddInfo',
);

sub wanted
{
	my ($class, $var) = @_;
	return $adder{$var};
}

sub new
{
	my ($class, $pkgpath) = @_;
	$pkgpath->{info} = bless {}, $class;
}

sub add
{
	my ($self, $var, $value, $parent) = @_;
	$adder{$var}->add($var, $self, $value, $parent);
}

sub dump
{
	my ($self, $fh) = @_;
	for my $k (sort keys %adder) {
		print $fh "\t $k = ", $self->{$k}->string, "\n"
		    if defined $self->{$k};
	}
}

my $string = "ignored already";
my $s2 = "stub_name";
my $stub_name = bless(\$s2, "AddInfoShow");
my $stub_info = bless { IGNORE => bless(\$string, "AddIgnore"),
		FULLPKGNAME => $stub_name}, __PACKAGE__;

sub stub
{
	return $stub_info;
}

sub stub_name
{
	my $self = shift;
	$self->{FULLPKGNAME} = $stub_name;
}

sub is_stub
{
	return shift eq $stub_info;
}

use Data::Dumper;
sub quick_dump
{
	my ($self, $fh) = @_;
	for my $k (sort keys %adder) {
		if (defined $self->{$k} and $adder{$k}->quickie) {
			print $fh "\t $k = ";
			if (ref($self->{$k}) eq 'HASH') {
				print $fh "????\n";
			} else {
				print $fh $self->{$k}->string, "\n" ;
			}
		}
	}
}

sub fullpkgname
{
	my $self = shift;

	return (defined $self->{FULLPKGNAME}) ?
	    $self->{FULLPKGNAME}->string : undef;
}

sub has_property
{
	my ($self, $name) = @_;
	return (defined $self->{DPB_PROPERTIES}) ?
	    $self->{DPB_PROPERTIES}{$name} : undef;
}

sub want_tests
{
	my ($self, $name) = @_;
	if (defined $self->{NO_TEST} && $self->{NO_TEST} == 0) {
		return 1;
	} else {
		return 0;
	}
}

sub solve_depends
{
	my ($self, $withtest) = @_;
	if (!defined $self->{solved}) {
		my $dep = {};
		my @todo = (qw(DEPENDS BDEPENDS));
		if ($withtest) {
			push(@todo, qw(TDEPENDS));
		}
		for my $k (@todo) {
		
			if (exists $self->{$k}) {
				for my $d (values %{$self->{$k}}) {
					$dep->{$d->fullpkgname} = 1;
				}
			}
			next unless exists $self->{BEXTRA};
			for my $two (values %{$self->{BEXTRA}}) {
				next unless exists $two->{info}{$k};
				for my $d (values %{$two->{info}{$k}}) {
					$dep->{$d->fullpkgname} = 1;
				}
			}
		}
		bless $dep, 'AddList';
		$self->{solved} = $dep;
	}
	return $self->{solved};
}

1;
