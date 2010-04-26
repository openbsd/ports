#! /usr/bin/perl
# $OpenBSD: Var.pm,v 1.5 2010/04/26 10:20:50 espie Exp $
#
# Copyright (c) 2006-2010 Marc Espie <espie@openbsd.org>
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

# use a Template Method approach to store the variable values.

# rule: we store each value in the main table, after converting YesNo
# variables to undef/1. Then, in addition, we process specific variables
# to store them in secondary tables (because of one/many associations).

package AnyVar;
sub columntype() { 'OptTextColumn' }
sub table() { undef }
sub keyword_table() { undef }

sub new
{
	my ($class, $var, $value, $arch) = @_;
	print STDERR  "$var-$arch\n" if defined $arch;
	bless [$var, $value], $class;
}

sub var
{
	return shift->[0];
}

sub value
{
	return shift->[1];
}

sub words
{
	my $self = shift;
	my $v = $self->value;
	$v =~ s/^\s+//;
	$v =~ s/\s+$//;
	return split(/\s+/, $v);
}

sub add
{
	my ($self, $ins) = @_;
	$ins->add_to_port($self->var, $self->value);
}

sub add_value
{
	my ($self, $ins, $value) = @_;
	$ins->add_to_port($self->var, $value);
}

sub column
{
	my ($self, $name) = @_;
	return $self->columntype->new($name)->set_vartype($self);
}

sub keyword
{
	my ($self, $ins, $value) = @_;
	return $ins->find_keyword_id($value, $self->keyword_table);
}

sub create_keyword_table
{
	my ($self, $inserter) = @_;
	if (defined $self->keyword_table) {
		$inserter->create_keyword_table($self->keyword_table);
	}
}

sub create_table
{
	my ($self, $inserter) = @_;
	$self->create_keyword_table($inserter);
}

sub insert
{
	my $self = shift;
	my $ins = shift;
	$ins->insert($self->table, @_);
}

sub normal_insert
{
	my $self = shift;
	my $ins = shift;
    	$ins->insert($self->table, $ins->ref, @_);
}

package KeyVar;
our @ISA = qw(AnyVar);
sub columntype() { 'ValueColumn' }

sub add
{
	my ($self, $ins) = @_;
	$self->add_value($ins, $self->keyword($ins, $self->value));
}


package ArchKeyVar;
our @ISA = qw(KeyVar);
sub keyword_table() { 'Arch' }

package OptKeyVar;
our @ISA = qw(KeyVar);
sub columntype() { 'OptValueColumn' }

sub add
{
	my ($self, $ins) = @_;
	if ($self->value ne '') {
		$self->SUPER::add($ins);
	}
}

package ArchDependentVar;
our @ISA = qw(AnyVar);
sub keyword_table() { 'Arch' }

sub new
{
	my ($class, $var, $value, $arch) = @_;
	bless [$var, $value, $arch], $class;
}

sub arch
{
	return shift->[2];
}

sub add
{
	my ($self, $ins) = @_;

	my $arch = $self->arch;
	if (defined $arch) {
		$arch = $self->keyword($ins, $arch);
	} else {
		$self->SUPER::add($ins);
	}
	$self->normal_insert($ins, $arch, $self->value);
}

sub create_table
{
	my ($self, $inserter) = @_;
	$self->create_keyword_table($inserter);
	$inserter->make_table($self, 'UNIQUE(FULLPKGPATH, ARCH, VALUE)',
	    OptValueColumn->new("ARCH"),
	    TextColumn->new("VALUE"));
	$inserter->prepare_normal_inserter($self->table,
	    "ARCH", "VALUE");
}

package BrokenVar;
our @ISA = qw(ArchDependentVar);
sub table() { 'Broken' }

package YesNoVar;
our @ISA = qw(AnyVar);
sub columntype() { 'OptIntegerColumn' }

sub add
{
	my ($self, $ins) = @_;
	$self->add_value($ins, $self->value =~ m/^Yes/i ? 1 : undef);
}

# variable is always defined, but we don't need to store empty values.
package DefinedVar;
our @ISA = qw(AnyVar);

sub add
{
	my ($self, $ins) = @_;
	return if $self->value eq '';
	$self->SUPER::add($ins);
}


# all the dependencies are converted into list. Stuff like LIB_DEPENDS will
# end up being treated as WANTLIB as well.
package DependsVar;
our @ISA = qw(AnyVar);
sub table() { 'Depends' }

sub add
{
	my ($self, $ins) = @_;
	$self->SUPER::add($ins);
	for my $depends ($self->words) {
		my ($libs, $pkgspec, $pkgpath2, $rest) = split(/\:/, $depends);
		if (!defined $pkgpath2) {
			print STDERR "Wrong depends $depends\n";
			return;
		}
		$self->normal_insert($ins, $depends,
		    $ins->find_pathkey($pkgpath2),
		    $ins->convert_depends($self->depends_type),
		    $pkgspec, $rest);
		if ($libs ne '') {
			for my $lib (split(/\,/, $libs)) {
				$self->add_lib($ins, $lib);
			}
		}
	}
}

sub create_table
{
	my ($self, $inserter) = @_;
	$inserter->make_table($self, undef,
	    TextColumn->new("FULLDEPENDS"),
	    OptTextColumn->new("PKGSPEC"),
	    OptTextColumn->new("REST"),
	    PathColumn->new("DEPENDSPATH"),
	    TextColumn->new("TYPE"));
	$inserter->prepare_normal_inserter($self->table,
	    "FULLDEPENDS", "DEPENDSPATH", "TYPE", "PKGSPEC", "REST");
}

sub add_lib
{
}

package LibDependsVar;
our @ISA = qw(DependsVar);
sub depends_type() { 'Library' }

sub add_lib
{
	my ($self, $ins, $lib) = @_;
	WantlibVar->add_value($ins, $lib);
}

package RunDependsVar;
our @ISA = qw(DependsVar);
sub depends_type() { 'Run' }

package BuildDependsVar;
our @ISA = qw(DependsVar);
sub depends_type() { 'Build' }

package RegressDependsVar;
our @ISA = qw(DependsVar);
sub depends_type() { 'Regress' }

# Stuff that gets stored in another table
package SecondaryVar;
our @ISA = qw(KeyVar);
sub keyword_table() { undef }

sub add_value
{
	my ($self, $ins, $value) = @_;
	$self->normal_insert($ins, $value);
}

sub add_keyword
{
	my ($self, $ins, $value) = @_;
	$self->add_value($ins, $self->keyword($ins, $value));
}

sub create_table
{
	my ($self, $inserter) = @_;
	$self->create_keyword_table($inserter);
	$inserter->make_table($self, "UNIQUE(FULLPKGPATH, VALUE)",
	    ValueColumn->new);
	$inserter->prepare_normal_inserter($self->table, "VALUE");
}

package MasterSitesVar;
our @ISA = qw(OptKeyVar);
sub table() { 'MasterSites' }

sub add
{
	my ($self, $ins) = @_;

	my $n;
	if ($self->var =~ m/^MASTER_SITES(\d)$/) {
		$n = $1;
	}
	$self->normal_insert($ins, $n, $self->value);
}

sub create_table
{
	my ($self, $inserter) = @_;
	$self->create_keyword_table($inserter);
	$inserter->make_table($self, "UNIQUE(FULLPKGPATH, N, VALUE)",
	    OptIntegerColumn->new("N"),
	    ValueColumn->new);
	$inserter->prepare_normal_inserter($self->table, "N", "VALUE");
}

# Generic handling for any blank-separated list
package ListVar;
our @ISA = qw(SecondaryVar);
sub columntype() { 'OptTextColumn' }

sub add
{
	my ($self, $ins) = @_;
	$self->AnyVar::add($ins);
	for my $d ($self->words) {
		$self->add_value($ins, $d) if $d ne '';
	}
}

package ListKeyVar;
our @ISA = qw(SecondaryVar);
sub keyword_table() { 'Keywords' }

sub add
{
	my ($self, $ins) = @_;
	$self->AnyVar::add($ins);
	for my $d ($self->words) {
		$self->add_keyword($ins, $d) if $d ne '';
	}
}

package QuotedListVar;
our @ISA = qw(ListVar);

sub add
{
	my ($self, $ins) = @_;
	$self->AnyVar::add($ins);
	my @l = ($self->words);
	while (my $v = shift @l) {
		while ($v =~ m/^[^']*\'[^']*$/ || $v =~m/^[^"]*\"[^"]*$/) {
			$v.=' '.shift @l;
		}
		if ($v =~ m/^\"(.*)\"$/) {
		    $v = $1;
		}
		if ($v =~ m/^\'(.*)\'$/) {
		    $v = $1;
		}
		$self->add_value($ins, $v) if $v ne '';
	}
}

package DefinedListKeyVar;
our @ISA = qw(ListKeyVar);
sub columntype() { 'OptValueColumn' }

sub add
{
	my ($self, $ins) = @_;
	return if $self->value eq '';
	$self->SUPER::add($ins);
}

package FlavorsVar;
our @ISA = qw(DefinedListKeyVar);
sub table() { 'Flavors' }

package PseudoFlavorsVar;
our @ISA = qw(DefinedListKeyVar);
sub table() { 'PseudoFlavors' }

package ArchListVar;
our @ISA = qw(DefinedListKeyVar);
sub keyword_table() { 'Arch' }

package OnlyForArchListVar;
our @ISA = qw(ArchListVar);
sub table() { 'OnlyForArch' }

package NotForArchListVar;
our @ISA = qw(ArchListVar);
sub table() { 'NotForArch' }

package CategoriesVar;
our @ISA = qw(ListKeyVar);
sub table() { 'Categories' }
sub keyword_table() { 'CategoryKeys' }

package MultiVar;
our @ISA = qw(ListVar);
sub table() { 'Multi' }

sub add
{
	my ($self, $ins) = @_;
	return if $self->value eq '-';
	$self->SUPER::add($ins);
}

package ModulesVar;
our @ISA = qw(DefinedListKeyVar);
sub table() { 'Modules' }
sub keyword_table() { 'ModuleKeys' }

package ConfigureVar;
our @ISA = qw(DefinedListKeyVar);
sub table() { 'Configure' }
sub keyword_table() { 'ConfigureKeys' }

package ConfigureArgsVar;
our @ISA = qw(QuotedListVar);
sub table() { 'ConfigureArgs' }

package WantlibVar;
our @ISA = qw(ListVar);
sub table() { 'Wantlib' }
sub keyword_table() { 'Library' }

sub _add
{
	my ($self, $ins, $value, $extra) = @_;
	$self->normal_insert($ins, $self->keyword($ins, $value), $extra);
}

sub add_value
{
	my ($self, $ins, $value) = @_;
	if ($value =~ m/^(.*)(\.\>?\=\d+\.\d+)$/) {
		$self->_add($ins, $1, $2);
	} elsif ($value =~ m/^(.*)(\.\>?\=\d+)$/) {
		$self->_add($ins, $1, $2);
	} else {
		$self->_add($ins, $value, undef);
	}
}

sub create_table
{
	my ($self, $inserter) = @_;
	$self->create_keyword_table($inserter);
	$inserter->make_table($self, "UNIQUE(FULLPKGPATH, VALUE)",
	    ValueColumn->new,
	    OptTextColumn->new("EXTRA"));
	$inserter->prepare_normal_inserter($self->table, "VALUE", "EXTRA");
}

package OnlyForArchVar;
our @ISA = qw(DefinedListKeyVar);
sub table() { 'OnlyForArch' }
sub keyword_table() { 'Arches' }

package FileVar;
our @ISA = qw(SecondaryVar);
sub table() { 'Descr' }

sub add
{
	my ($self, $ins) = @_;
	$self->AnyVar::add($ins);
	open my $file, '<', $self->value or return;
	local $/ = undef;
	$self->add_value($ins, <$file>);
}

package SharedLibsVar;
our @ISA = qw(KeyVar);
sub table() { 'Shared_Libs' }
sub keyword_table() { 'Library' }

sub add
{
	my ($self, $ins) = @_;
	$self->AnyVar::add($ins);
	my %t = $self->words;
	while (my ($k, $v) = each %t) {
		$self->normal_insert($ins, $self->keyword($ins, $k), $v);
	}
}

sub create_table
{
	my ($self, $inserter) = @_;
	$self->create_keyword_table($inserter);
	$inserter->make_table($self, "UNIQUE (FULLPKGPATH, LIBNAME)",
	    ValueColumn->new("LIBNAME"),
	    TextColumn->new("VERSION"));
	$inserter->prepare_normal_inserter($self->table, "LIBNAME", "VERSION");
}

package EmailVar;
our @ISA = qw(KeyVar);
sub keyword_table() { 'Email' }

package YesKeyVar;
our @ISA = qw(KeyVar);
sub keyword_table() { 'Keywords2' }

package AutoVersionVar;
our @ISA = qw(OptKeyVar);
sub keyword_table() { 'AutoVersion' }

1;
