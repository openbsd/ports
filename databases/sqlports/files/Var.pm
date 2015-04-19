# $OpenBSD: Var.pm,v 1.24 2015/04/19 12:08:02 espie Exp $
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
	die "No arch for $var" if defined $arch;
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

sub prepare_tables
{
	my ($self, $inserter, $name) = @_;
	$inserter->handle_column($self->column($name));
	$self->create_tables($inserter);
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

sub create_tables
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

# for distinction later
package FullpkgnameVar;
our @ISA = qw(AnyVar);

# for variables we want to know about, but not register in the db
package IgnoredVar;
our @ISA = qw(AnyVar);
sub add
{
}

sub prepare_tables
{
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

package PrefixKeyVar;
our @ISA = qw(KeyVar);
sub keyword_table() { 'Prefix' }

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

sub create_tables
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

package ValuedVar;
our @ISA = qw(AnyVar);
sub columntype() { 'OptIntegerColumn' }

sub find_value
{
	my ($self, $ins) = @_;

	my $key = $self->value;
	my $h = $self->values;
	while (my ($v, $k) = each %$h) {
		if ($key =~ m/$v/i) {
			return $k;
		}
	}
	$ins->add_error($self->var." has unknown value $key in ".$ins->{ref});
	return undef;
}

sub add
{
	my ($self, $ins) = @_;
	if (defined $self->value) {
		$self->add_value($ins, $self->find_value($ins));
	} else {
		$self->add_value($ins, undef);
	}
}

package YesNoVar;
our @ISA = qw(ValuedVar);
sub values
{
	return { 
	    	yes => 1,
		no => undef 
	};
}

package StaticPlistVar;
our @ISA = qw(YesNoVar);

package YesNoGnuVar;
our @ISA = qw(ValuedVar);

sub values
{
	return { 
		yes => 1,
		gnu => 2,
		no => undef
	}
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
		$depends =~ s/^\:+//;
		my ($pkgspec, $pkgpath2, $rest) = split(/\:/, $depends);
		if ($pkgspec =~ m/\//) {
			($pkgspec, $pkgpath2, $rest) = 
			    ('', $pkgspec, $pkgpath2);
		}
		if (!defined $pkgpath2) {
			print STDERR "Wrong depends $depends\n";
			return;
		}
		my $p = PkgPath->new($pkgpath2);
		$p->{want} = 1;
		$p->{parent} //= $ins->current_path;
		$self->normal_insert($ins, $depends,
		    $ins->find_pathkey($p->fullpkgpath),
		    $ins->convert_depends($self->depends_type),
		    $pkgspec, $rest);
# XXX		    $ins->add_todo($pkgpath2);
	}
}

sub create_tables
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

package LibDependsVar;
our @ISA = qw(DependsVar);
sub depends_type() { 'Library' }

package RunDependsVar;
our @ISA = qw(DependsVar);
sub depends_type() { 'Run' }

package BuildDependsVar;
our @ISA = qw(DependsVar);
sub depends_type() { 'Build' }

package TestDependsVar;
our @ISA = qw(DependsVar);
sub depends_type() { 'Test' }

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

sub create_tables
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
	$self->AnyVar::add($ins);

	my $n;
	if ($self->var =~ m/^MASTER_SITES(\d)$/) {
		$n = $1;
	}
	$self->normal_insert($ins, $n, $self->value);
}

sub create_tables
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

package FilesListVar;
our @ISA = qw(DefinedListKeyVar);

my $portsdir = $ENV{PORTSDIR} || '/usr/ports';
sub table() { 'Makefiles' }
sub keyword_table() { 'Filename' }

my $always = {
	map {($_, 1)} (
		'/usr/share/mk/sys.mk', 
		'Makefile',
		'/usr/share/mk/bsd.port.mk',
		'/usr/share/mk/bsd.own.mk',
		'/etc/mk.conf', 
		'${PORTSDIR}/infrastructure/mk/bsd.port.mk',
		'${PORTSDIR}/infrastructure/mk/pkgpath.mk',
		'${PORTSDIR}/infrastructure/mk/arch-defines.mk',
		'${PORTSDIR}/infrastructure/mk/modules.port.mk',
		'${PORTSDIR}/infrastructure/mk/bsd.port.arch.mk',
		'${PORTSDIR}/infrastructure/templates/network.conf.template',
		)
};
	
sub words
{
	my $self = shift;
	my @result = ();
	for my $x ($self->SUPER::words) {
		$x =~ s,^\Q$portsdir\E/,\$\{PORTSDIR\}/,;
		next if $always->{$x};
		push(@result, $x);
	}
	return @result;
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

package TargetsVar;
our @ISA = qw(ListKeyVar);
sub table() { 'Targets' }
sub keyword_table() { 'TargetKeys' }

package DPBPropertiesVar;
our @ISA = qw(DefinedListKeyVar);
sub table() { 'DPBProperties' }
sub keyword_table() { 'DPBKeys' }

package MultiVar;
our @ISA = qw(ListVar);
sub table() { 'Multi' }

sub create_tables
{
	my ($self, $inserter) = @_;
	$inserter->make_table($self, 'UNIQUE(FULLPKGPATH, VALUE)',
	    TextColumn->new("VALUE"),
	    PathColumn->new("SUBPKGPATH"));
    	$inserter->prepare_normal_inserter($self->table,
	    "VALUE", "SUBPKGPATH");
}

sub new
{
	my ($class, $var, $value, $arch, $path) = @_;
	die "No arch fo $var" if defined $arch;
	bless [$var, $value, $path], $class;
}

sub path
{
	return shift->[2];
}

sub add
{
	my ($self, $ins) = @_;
	return if $self->value eq '-';
	my $base = $self->path;
	$self->AnyVar::add($ins);
	for my $d ($self->words) {
		my $path = $base->change_multi($d);
		my $k = $ins->find_pathkey($path->fullpkgpath);
		$self->normal_insert($ins, $d, $k) if $d ne '';
	}
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

sub create_tables
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

sub add
{
	my ($self, $ins) = @_;
	$self->AnyVar::add($ins);
	open my $file, '<', $self->value or return;
	local $/ = undef;
	$self->add_value($ins, <$file>);
}

package ReadmeVar;
our @ISA = qw(FileVar);
sub table() { 'ReadMe' }
sub columntype() { 'OptTextColumn' }

package DescrVar;
our @ISA = qw(FileVar);
sub table() { 'Descr' }
use File::Basename;

# README does not exist as an actual variable, but it's trivial
# to add it as a subsidiary of DESCR when the file exists.

sub new
{
	my ($class, $var, $value, $arch, $path) = @_;
	my $dir = dirname($value);
	my $readme = "$dir/README";
	my $multi = $path->multi;
	if (defined $multi) {
		$readme .= $multi;
	}
	if (-e $readme) {
		$path->{info}->create('README', $readme, $arch, $path);
	}

	return $class->SUPER::new($var, $value, $arch, $path);
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

sub create_tables
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
