# ex:ts=8 sw=4:
# $OpenBSD: PortInfo.pm,v 1.49 2023/09/05 13:50:33 espie Exp $
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

# AddInfo is responsible for converting a given variable value given by
# dump-vars into a properly nice "object"
# Then DPB::PortInfo collates those into a complete info object
#
# and DPB::PkgPath::merge_depends DPB::Fetch::build_distinfo
# are responsible for cleaning up the information further

package AddInfo;

# by default, we take the value and add it as the corresponding \$string
# to the portinfo object

sub add($class, $var, $info, $value, $parent)
{
	return if $value =~ m/^[\s\-]*$/;
	$class->location($info, $var) = $class->new($value, $info, $parent);
}

sub location:lvalue ($, $info, $var)
{
	return $info->{$var};
}

sub new($class, $value, $, $)
{
	bless \$value, $class;
}

sub string($self)
{
	return $$self;
}

sub dump($self, $k, $fh, $level)
{
	print $fh "\t"x$level, "$k = ", $self->string, "\n"
}

# by default don't show up in quick dumps
sub quickie($)
{
	return 0;
}

package Group;
our @ISA = qw(AddInfo);
sub quickie($)
{
	return 1;
}

sub new($class, @)
{
	return bless {}, $class;
}

sub dump($self, $k, $fh, $level)
{
	print $fh "\t"x$level, "$k =\n";
	for my $k2 (sort keys %$self) {
		$self->{$k2}->dump($k2, $fh, $level+1);
	}
}

package GroupMixIn;
sub location:lvalue ($class, $info, $var)
{
	my $groupname = $class->groupname;
	$info->{$groupname} //= Group->new;
	return $info->{$groupname}{$var};
}

package AddIgnore;
our @ISA = qw(AddInfo);
sub string($self)
{
	my $msg = $$self;
	$msg =~ s/\\//g;
	$msg =~ s/\"\s+\"/\; /g;
	return $msg;
}

package AddYesNo;
our @ISA = qw(AddInfo);
# don't add 'no' values to save space

sub add($class, $var, $info, $value, $parent)
{
	return if $value =~ m/^no$/i;
	$class->location($info, $var) = $class->new($value, $info, $parent);
}

sub new($class, $value, $, $)
{
	my $a = 1;
	bless \$a, $class;
}

# ... and similarly for PERMIT_* but the other way around
# PERMIT_DISTFILES* is != yes.
package AddNegative;
our @ISA = qw(AddInfo);

sub add($class, $var, $info, $value, $parent)
{
	return if $value =~ m/^yes$/i;
	$class->location($info, $var) = $class->new($value, $info, $parent);
}

sub new($class, $value, $, $)
{
	my $a = 0;
	bless \$a, $class;
}

# variables we WANT in a quick dump
package AddInfoShow;
our @ISA = qw(AddInfo);
sub quickie($)
{
	return 1;
}

# by default, unordered lists
package AddList;
our @ISA = qw(AddInfo);

sub make_list($class, $value)
{
	$value =~ s/^\s+//;
	$value =~ s/\s+$//;
	return split(/\s+/, $value);
}

sub new($class, $value, $, $)
{
	my %values = map {($_, 1)} $class->make_list($value);
	bless \%values, $class;
}

sub string($self)
{
	return join(', ', keys %$self);
}

sub list($self)
{
	return keys %$self;
}

# specific to DPB_PROPERTIES
package AddPropertyList;
our @ISA = (qw(AddList));

sub new($class, $value, $, $)
{
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

sub string($self)
{
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
sub new($class, $value, $, $)
{
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
sub new($class, $value, $, $)
{
	bless [$class->make_list($value)], $class;
}

sub string($self)
{
	return join(' ', @$self);
}

sub list($self)
{
	return @$self;
}

package SitesList;
our @ISA = qw(GroupMixIn AddOrderedList);

sub groupname($)
{
	return 'sites';
}

package DistfilesList;
# ordered for roach to identify 1st
our @ISA = qw(GroupMixIn AddOrderedList);

sub groupname($)
{
	return 'distfiles';
}

package SupdistfilesList;
our @ISA = qw(GroupMixIn AddList);

sub groupname($)
{
	return 'distfiles';
}

package PatchfilesList;
our @ISA = qw(GroupMixIn AddList);

sub groupname($)
{
	return 'distfiles';
}

package FetchManually;
our @ISA = qw(AddOrderedList);
sub add($class, $var, $info, $value, $parent)
{
	return if $value =~ /^\s*no\s*$/i;
	$class->SUPER::add($var, $info, $value, $parent);
}

sub make_list($class, $value)
{
	$value =~ s/^\s*\"//;
	$value =~ s/\"\s*$//;
	return split(/\"\s*\"/, $value);
}

sub string($self)
{
	return join("\n", @$self);
}

package AddDepends;
our @ISA = qw(AddList);
sub extra($)
{
	return 'EXTRA';
}

sub new($class, $value, $info, $parent)
{
	my $r = {};
	for my $d ($class->make_list($value)) {
		my $copy = $d;
		next if $d =~ m/^$/;
		$d =~ s/^\:+//;
		$d =~ s/^[^\/]*\://;
		if ($d =~ s/\:(?:patch|build|configure)$//) {
			Extra->add($class->extra, $info, $d, $parent);
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

sub string($self)
{
	return '['.join(';', map {$_->logname} (values %$self)).']';
}

sub quickie($)
{
	return 1;
}

package AddTestDepends;
our @ISA = qw(AddDepends);
sub extra($)
{
	return 'EXTRA2';
}

package Extra;
our @ISA = qw(AddDepends);

sub add($class, $key, $info, $value, $parent)
{
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
	DPB_LOCKNAME => "AddInfo",
	BUILD_PACKAGES => "AddList",
	DPB_PROPERTIES => "AddPropertyList",
	IGNORE => "AddIgnore",
	FLAVOR => "AddList",
	DISTFILES => 'DistfilesList',
	PATCHFILES => 'PatchfilesList',
	SUPDISTFILES => 'SupdistfilesList',
	DIST_SUBDIR => 'AddInfo',
	CHECKSUM_FILE => 'AddInfo',
	FETCH_MANUALLY => 'FetchManually',
	MISSING_FILES => 'AddList',
	SITES => 'SitesList',
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
	distfiles => 'Group',
	sites => 'Group',
);

sub find($class, $var)
{
	$var =~ s/^(SITES|DISTFILES|SUPDISTFILES|PATCHFILES).*/$1/;
	return $adder{$var};
}

sub wanted($class, $var)
{
	return $class->find($var);
}

sub new($class, $pkgpath)
{
	$pkgpath->{info} = bless {}, $class;
}

sub add($self, $var, $value, $parent)
{
	$self->find($var)->add($var, $self, $value, $parent);
}

sub dump($self, $fh = \*STDOUT, $level = 0)
{
	for my $k (sort keys %adder) {
		$self->{$k}->dump($k, $fh, $level+1) if defined $self->{$k};
	}
}

my $string = "ignored already";
my $s2 = "stub_name";
my $stub_name = bless(\$s2, "AddInfoShow");
my $stub_info = bless { IGNORE => bless(\$string, "AddIgnore"),
		FULLPKGNAME => $stub_name}, __PACKAGE__;

sub stub($)
{
	return $stub_info;
}

sub stub_name($self)
{
	$self->{FULLPKGNAME} = $stub_name;
}

sub is_stub($self)
{
	return $self eq $stub_info;
}

sub quick_dump($self, $fh, $level = 0)
{
	for my $k (sort keys %adder) {
		if (defined $self->{$k} and $adder{$k}->quickie) {
			$self->{$k}->dump($k, $fh, $level+1);
		}
	}
}

sub fullpkgname($self)
{
	return (defined $self->{FULLPKGNAME}) ?
	    $self->{FULLPKGNAME}->string : undef;
}

sub has_property($self, $name)
{
	return (defined $self->{DPB_PROPERTIES}) ?
	    $self->{DPB_PROPERTIES}{$name} : undef;
}

sub want_tests($self)
{
	if (defined $self->{NO_TEST} && $self->{NO_TEST} == 0) {
		return 1;
	} else {
		return 0;
	}
}

sub solve_depends($self, $withtest = 0)
{
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
