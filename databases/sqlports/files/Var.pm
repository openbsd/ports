# $OpenBSD: Var.pm,v 1.74 2023/09/25 17:10:44 espie Exp $
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

use v5.36;
use warnings;

# use a Template Method approach to store the variable values.

# rule: we store each value in the main table, after converting YesNo
# variables to undef/1. Then, in addition, we process specific variables
# to store them in secondary tables (because of one/many associations).

package AnyVar;
sub ports_table_column($self, $name)
{
	return Sql::Column::Text->new($name);
}

sub ports_view_column($self, $name)
{
	return Sql::Column::View->new($name);
}

sub table($) { undef }
sub keyword_table($) { undef }

sub table_name($class, $name)
{
	return "_$name";
}

sub new($class, $var, $value, $arch = undef, $ = undef)
{
	die "No arch for $var" if defined $arch;
	bless [$var, $value], $class;
}

sub var($self)
{
	return $self->[0];
}

sub value($self)
{
	return $self->[1];
}

sub words($self)
{
	my $v = $self->value;
	$v =~ s/^\s+//;
	$v =~ s/\s+$//;
	return split(/\s+/, $v);
}

sub add($self, $ins)
{
	$ins->add_to_port($self->var, $self->value);
}

sub add_value($self, $ins, $value, @extra)
{
	$ins->add_to_port($self->var, $value, @extra);
}

sub prepare_tables($self, $inserter, $name)
{
	if ($self->need_in_ports_table) {
		$inserter->add_to_ports_table($self->ports_table_column($name));
	}
	if ($self->want_in_ports_view) {
		$inserter->add_to_ports_view($self->ports_view_column($name));
	}
	$self->create_tables($inserter);
}

sub keyword($self, $ins, $value)
{
	$ins->insert($self->keyword_table, $value);
	return $value;
}

sub create_keyword_table($self)
{
	if (defined $self->keyword_table) {
		Sql::Create::Table->new($self->keyword_table)->ignore->add(
			Sql::Column::Key->new("KeyRef"),
			Sql::Column::Text->new("Value")->notnull->unique);
	}
}

sub create_tables($self, $inserter)
{
	$self->create_keyword_table;
}

sub normal_insert($self, $ins, @p)
{
    	$ins->insert($self->table_name($self->table), $ins->ref, @p);
}

sub subselect($)
{
	return (Sql::Column::View->new('FullPkgPath'),
	    Sql::Column::View->new('Value'),
	    Sql::Order->new('N'));
}

sub select($)
{
	return ();
}

sub want_in_ports_view($self)
{
	return !defined $self->table;
}

sub need_in_ports_table($self)
{
	return !defined $self->table;
}

sub fullpkgpath($)
{
	return Sql::Column::Integer->new("FullPkgPath")->references("_Paths")
	    ->constraint->indexed;
}

sub pathref($)
{
	my $j = Sql::Join->new('_Paths')->add(
	    Sql::Equal->new('Canonical', 'FullPkgPath'));
	return (Sql::Column::View->new("PathId", origin => "Id")->join($j),
	    Sql::Column::View->new('FullPkgPath')->join($j));
}

sub create_table($self, @c)
{
	Sql::Create::Table->new($self->table_name($self->table))->add(@c);
	$self->create_keyword_table;
}

sub create_view($self, @c)
{
	Sql::Create::View->new($self->table,
	    origin => $self->table_name($self->table))->add(@c);
}

package BaselineMixin;

my $baseline;

sub prime($, $p)
{
	$baseline = $p;
}

sub check($self)
{
	return $self->value eq $baseline->{$self->var};
}

# for distinction later
package FullpkgnameVar;
our @ISA = qw(AnyVar);

# for variables we want to know about, but not register in the db
package IgnoredVar;
our @ISA = qw(AnyVar);
sub add($, $)
{
}

sub prepare_tables($, $, $)
{
}

package KeyVar;
our @ISA = qw(AnyVar);
sub ports_table_column($self, $name)
{
	return Sql::Column::Integer->new($name)
	    ->references($self->keyword_table);
}

sub compute_join($self, $name)
{
	if (defined $self->keyword_table) {
		return Sql::Join->new($self->keyword_table)
		    ->add(Sql::Equal->new("KeyRef", $name));
	} else {
		return Sql::Join->new($self->table_name($self->table))
		    ->add(Sql::Equal->new("FullPkgPath", "FullPkgPath"));
	}
}

sub ports_view_column($self, $name)
{
	return Sql::Column::View->new($name, origin => 'Value')->join(
		$self->compute_join($name));
}

sub add($self, $ins)
{
	$self->add_value($ins, $self->keyword($ins, $self->value));
}


package ArchKeyVar;
our @ISA = qw(KeyVar);
sub keyword_table($) { '_Arch' }

package PrefixKeyVar;
our @ISA = qw(KeyVar);
sub keyword_table($) { '_Prefix' }

package SubstVar;
our @ISA = qw(ListKeyVar);
sub table($) { 'SubstVars' }
sub keyword_table($) { '_SubstVarsKey' }

package OptKeyVar;
our @ISA = qw(KeyVar);
sub ports_table_column($self, $name)
{
	return $self->SUPER::ports_table_column($name)->null;
}

sub compute_join($self, $name)
{
	return $self->SUPER::compute_join($name)->left;
}

sub add($self, $ins)
{
	if ($self->value ne '') {
		$self->SUPER::add($ins);
	}
}

package ArchDependentVar;
our @ISA = qw(AnyVar);
sub keyword_table($) { '_Arch' }

sub new($class, $var, $value, $arch, $ = undef)
{
	bless [$var, $value, $arch], $class;
}

sub arch($self)
{
	return $self->[2];
}

sub add($self, $ins)
{
	my $arch = $self->arch;
	if (defined $arch) {
		$arch = $self->keyword($ins, $arch);
	} else {
		$self->SUPER::add($ins);
	}
	$self->normal_insert($ins, $arch, $self->value);
}

sub create_tables($self, $inserter)
{
	my $k = $self->keyword_table;
	$self->create_table(
	    $self->fullpkgpath,
	    Sql::Column::Integer->new("Arch")->may_reference($k)->constraint,
	    Sql::Column::Text->new("Value")->notnull->constraint);
	$self->create_view(
		$self->pathref,
		Sql::Column::View->new('Arch', origin => 'Value')->join(
		    Sql::Join->new($k)
			->add(Sql::Equal->new("KeyRef", 'Arch'))->left),
		Sql::Column::View->new("Value"));
}

package BrokenVar;
our @ISA = qw(ArchDependentVar);
sub table($) { 'Broken' }

package ValuedVar;
our @ISA = qw(AnyVar);
sub ports_table_column($self, $name)
{
	return Sql::Column::Integer->new($name);
}

sub find_value($self, $ins)
{
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

sub add($self, $ins)
{
	if (defined $self->value) {
		$self->add_value($ins, $self->find_value($ins));
	} else {
		$self->add_value($ins, undef);
	}
}

package YesNoVar;
our @ISA = qw(ValuedVar);
sub values($)
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

sub values($)
{
	return { 
		yes => 1,
		gnu => 2,
		no => undef
	}
}

package YesNoSpecialVar;
our @ISA = qw(ValuedVar);

sub values($)
{
	return { 
		yes => 1,
		special => 2,
		no => undef
	}
}

# variable is always defined, but we don't need to store empty values.
package DefinedVar;
our @ISA = qw(AnyVar);

sub add($self, $ins)
{
	return if $self->value eq '';
	$self->SUPER::add($ins);
}


# all the dependencies are converted into lists. 
package DependsVar;
our @ISA = qw(AnyVar);
sub table($) { 'Depends' }
sub want_in_ports_view($) { 1 }

sub ports_view_column($self, $name)
{
	return Sql::Column::View->new($name, origin => 'Value')->join(
	    Sql::Join->new($self->table."_ordered")->left
	    	->add(Sql::Equal->new("FullPkgpath", "FullPkgpath"),
		    Sql::EqualConstant->new("Type", $self->match)));
}

sub add($self, $ins)
{
	$self->SUPER::add($ins);
	my $n = 0;
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
		    $pkgspec, $rest, 
		    $ins->find_pathkey($p->fullpkgpath),
		    $self->match,
		    $n);
		$n++;
# XXX		    $ins->add_todo($pkgpath2);
	}
}

sub create_tables($self, $inserter)
{
	my $t = $self->table_name($self->table);

	$self->create_table(
	    $self->fullpkgpath,
	    Sql::Column::Text->new("FullDepends")->notnull,
	    Sql::Column::Text->new("PkgSpec"),
	    Sql::Column::Text->new("Rest"),
	    Sql::Column::Integer->new("DependsPath")->references("_Paths"),
	    Sql::Column::Text->new("Type")->notnull->constraint,
	    Sql::Column::Integer->new("N")->notnull->constraint);
	my $j = Sql::Join->new('_Paths')->add(
	    Sql::Equal->new('Canonical', 'FullPkgPath'));
	$self->create_view(
	    $self->pathref,
	    Sql::Column::View->new("FullDepends"),
	    Sql::Column::View->new("PkgSpec"),
	    Sql::Column::View->new("Rest"),
	    Sql::Column::View->new('DependsPath', origin => 'FullPkgpath')
	    	->join(Sql::Join->new('_Paths')->add(
		    Sql::Equal->new('Canonical', 'DependsPath'))),
	    Sql::Column::View->new("Type"),
	    Sql::Column::View->new("N"));
	$inserter->make_ordered_view($self);
	$inserter->create_canonical_depends($self);
}

sub select($)
{
	return (Sql::Column::View->new('Type')->group_by);
}

sub subselect($)
{
	return (Sql::Column::View->new('FullPkgPath'),
	    Sql::Column::View->new('Value', origin => 'FullDepends'),
	    Sql::Column::View->new('Type'),
	    Sql::Order->new('N'));
}

package PkgPathsVar;
our @ISA = qw(AnyVar);
sub want_in_ports_view($) { 1 }

sub ports_view_column($self, $name)
{
	return Sql::Column::View->new($name, origin => 'Value')->join(
	    Sql::Join->new($self->table."_ordered")->left
	    	->add(Sql::Equal->new("FullPkgpath", "FullPkgpath")));

}

sub table($) { 'PkgPaths' }
sub create_tables($self, $inserter)
{
	$self->create_table(
	    $self->fullpkgpath,
	    Sql::Column::Integer->new("Value")->references("_Paths"),
	    Sql::Column::Integer->new("N")->notnull->constraint);
	$self->create_view(
	    $self->pathref,
	    Sql::Column::View->new('Value', origin => 'FullPkgPath')->join(
	    	Sql::Join->new('_Paths')
		    ->add(Sql::Equal->new('Id', 'Value'))),
	    Sql::Column::View->new('N'));
	$inserter->make_ordered_view($self);
}

sub add($self, $ins)
{
	$self->SUPER::add($ins);
	my $n = 0;
	for my $pkgpath ($self->words) {
		my $p = PkgPath->new($pkgpath);
		$p->{want} = 1;
		$p->{parent} //= $ins->current_path;
		$self->normal_insert($ins, 
		    $ins->find_pathkey($p->fullpkgpath), $n);
	    	$n++;
	}
}

package LibDependsVar;
our @ISA = qw(DependsVar);
sub match($) { 0 }

package RunDependsVar;
our @ISA = qw(DependsVar);
sub match($) { 1 }

package BuildDependsVar;
our @ISA = qw(DependsVar);
sub match($) { 2 }

package TestDependsVar;
our @ISA = qw(DependsVar);
sub match($) { 3 }

# Stuff that gets stored in another table
package SecondaryVar;
our @ISA = qw(KeyVar);
sub keyword_table($) { undef }

sub add_value($self, $ins, $value, @r)
{
	$self->normal_insert($ins, $value, @r);
}

sub add_keyword($self, $ins, $value, @r)
{
	$self->add_value($ins, $self->keyword($ins, $value), @r);
}

sub create_tables($self, $inserter)
{
	my $k = $self->keyword_table;
	
	$self->create_table(
	    $self->fullpkgpath,
	    $self->table_columns($k));
	$self->create_view(
	    $self->pathref, $self->view_columns($k));
}

sub view_columns($self, $k = undef)
{
	my $c = Sql::Column::View->new("Value");
	if (defined $k) {
		$c->join(Sql::Join->new($k)
		    ->add(Sql::Equal->new("KeyRef", "Value")));
	}
	return $c;
}

sub table_columns($self, $k = undef)
{
	if (defined $k) {
		return Sql::Column::Integer->new("Value")->references($k)
		    ->constraint;
	} else {
		return Sql::Column::Text->new("Value")->notnull->constraint;
	}
}

package CountedSecondaryVar;
our @ISA = qw(SecondaryVar);

sub view_columns($self, $k = undef)
{
	return ($self->SUPER::view_columns($k),
		Sql::Column::View->new("N"));
}

sub table_columns($self, $k = undef)
{
	return ($self->SUPER::table_columns($k),
	    Sql::Column::Integer->new("N")->notnull->constraint);
}

sub ports_view_column($self, $name)
{
	return Sql::Column::View->new($name, origin => 'Value')->join(
	    Sql::Join->new($self->table."_ordered")->left
	    	->add(Sql::Equal->new("FullPkgpath", "FullPkgpath")));

}

sub create_tables($self, $inserter)
{
	$self->SUPER::create_tables($inserter);
	$inserter->make_ordered_view($self);
}

package SitesVar;
our @ISA = qw(OptKeyVar);
sub table($) { 'Sites' }
sub want_in_ports_view($) { 1 }

sub compute_join($self, $name)
{
	my $j = Sql::Join->new($self->table_name($self->table))->left
	    ->add(Sql::Equal->new("FullPkgPath", "FullPkgPath"));
	# for now we only record SITES in ports
	$j->add(Sql::IsNull->new("N"));
	return $j;
}

sub ports_view_column($self, $name)
{
	return Sql::Column::View->new($name, origin => 'Value')->join(
		$self->compute_join($name));
}

sub add($self, $ins)
{
	$self->AnyVar::add($ins);

	my $n;
	if ($self->var =~ m/^SITES(.+)$/) {
		$n = $1;
	}
	$self->normal_insert($ins, $n, $self->value);
}

sub create_tables($self, $inserter)
{
	my $t = $self->table_name($self->table);
	$self->create_table(
	    $self->fullpkgpath,
	    Sql::Column::Text->new("N")->constraint,
	    Sql::Column::Text->new("Value")->notnull->constraint);
	$self->create_view(
	    $self->pathref,
	    Sql::Column::View->new("N"),
	    Sql::Column::View->new("Value"));
}

package RoachSitesVar;
our @ISA = qw(SitesVar);
sub table($) { 'RoachSites' }

# Generic handling for any blank-separated list
package ListVar;
our @ISA = qw(CountedSecondaryVar);
sub want_in_ports_view($) { 1 }

sub add($self, $ins)
{
	$self->AnyVar::add($ins);
	my $n = 0;
	for my $d ($self->words) {
		next if $d eq '';
		$self->add_value($ins, $d, $n);
		$n++;
	}
}

package ListKeyVar;
our @ISA = qw(CountedSecondaryVar);
sub keyword_table($) { '_Keywords' }
sub want_in_ports_view($) { 1 }

sub add($self, $ins)
{
	$self->AnyVar::add($ins);
	my $n = 0;
	for my $d ($self->words) {
		next if $d eq '';
		$self->add_keyword($ins, $d, $n);
		$n++;
	}
}

sub subselect($self)
{
	my $k = $self->keyword_table;
	return (Sql::Column::View->new('FullPkgPath'),
	    Sql::Column::View->new('Value')
	    	->join(Sql::Join->new($k)
		    ->add(Sql::Equal->new('KeyRef', 'Value'))),
	    Sql::Order->new('N'));
}

package Sql::Column::View::QuoteExpr;
our @ISA = qw(Sql::Column::View::Expr);
sub expr($self)
{
	my $q = $self->column("QuoteType");
	my $v = $self->column;
	return
qq{CASE $q
  WHEN 0 THEN $v
  WHEN 1 THEN '"'||$v||'"'
  WHEN 2 THEN "'"||$v||"'"
END};
}

package QuotedListVar;
our @ISA = qw(ListVar);

sub add($self, $ins)
{
	$self->AnyVar::add($ins);
	my @l = ($self->words);
	my $n = 0;
	while (my $v = shift @l) {
		while ($v =~ m/^[^']*\'[^']*$/ || $v =~m/^[^"]*\"[^"]*$/) {
			$v.=' '.shift @l;
		}
		my $quotetype = 0;
		if ($v =~ m/^\"(.*)\"$/) {
		    $v = $1;
		    $quotetype = 1;
		}
		elsif ($v =~ m/^\'(.*)\'$/) {
		    $v = $1;
		    $quotetype = 2;
		}
		next if $v eq '';
		$self->add_value($ins, $v, $n, $quotetype);
		$n++;
	}
}

sub view_columns($self, $k)
{
	return ($self->SUPER::view_columns($k),
	    Sql::Column::View->new("QuoteType"));
}

sub table_columns($self, $k)
{
	return ($self->SUPER::table_columns($k), 
	    Sql::Column::Integer->new("QuoteType")->notnull);
}

sub subselect($self)
{
	my $t = $self->table_name($self->table);
	return (Sql::Column::View->new('FullPkgPath'),
	    Sql::Column::View::QuoteExpr->new('Value'),
	    Sql::Order->new('N'));
}

package DefinedListKeyVar;
our @ISA = qw(ListKeyVar);

sub add($self, $ins)
{
	return if $self->value eq '';
	$self->SUPER::add($ins);
}

package MakefilesListVar;
our @ISA = qw(DefinedListKeyVar);

my $portsdir = $ENV{PORTSDIR} || '/usr/ports';
sub table($) { 'Makefiles' }
sub keyword_table($) { '_Filename' }

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
		'${PORTSDIR}/infrastructure/db/network.conf',
		)
};
	
sub words($self)
{
	my @result = ();
	for my $x ($self->SUPER::words) {
		$x =~ s,^\Q$portsdir\E/,\$\{PORTSDIR\}/,;
		next if $always->{$x};
		push(@result, $x);
	}
	return @result;
}

package CRLFFiles;
our @ISA = qw(DefinedListKeyVar);

sub table($) { 'FixCRLFFiles' }
sub keyword_table($) { '_Filename2' }

package FlavorsVar;
our @ISA = qw(DefinedListKeyVar);
sub table($) { 'Flavors' }

package PseudoFlavorsVar;
our @ISA = qw(DefinedListKeyVar);
sub table($) { 'PseudoFlavors' }

package ArchListVar;
our @ISA = qw(DefinedListKeyVar);
sub keyword_table($) { '_Arch' }

package CompilerLinksVar;
our @ISA = qw(DefinedListKeyVar);
sub table($) { 'CompilerLinks' }
sub keyword_table($) { '_Compiler' }

package OnlyForArchListVar;
our @ISA = qw(ArchListVar);
sub table($) { 'OnlyForArch' }

package NotForArchListVar;
our @ISA = qw(ArchListVar);
sub table($) { 'NotForArch' }

package CategoriesVar;
our @ISA = qw(ListKeyVar);
sub table($) { 'Categories' }
sub keyword_table($) { '_CategoryKeys' }
sub ports_view_column($self, $name)
{
	return Sql::Column::View->new($name, origin => 'Value')->join(
	    Sql::Join->new($self->table."_ordered")
	    	->add(Sql::Equal->new("FullPkgpath", "FullPkgpath")));

}

package TargetsVar;
our @ISA = qw(ListKeyVar);
sub table($) { 'Targets' }
sub keyword_table($) { '_TargetKeys' }

package DPBPropertiesVar;
our @ISA = qw(DefinedListKeyVar);
sub table($) { 'DPBProperties' }
sub keyword_table($) { '_DPBKeys' }

package MultiVar;
our @ISA = qw(ListVar);
sub table($) { 'Multi' }
sub want_in_ports_view($) { 0 }

sub create_tables($self, $inserter)
{
	$self->create_table(
	    $self->fullpkgpath,
	    Sql::Column::Text->new("Value")->notnull->constraint,
	    Sql::Column::Integer->new("SubPkgPath")->references("_Paths"));
	$self->create_view(
	    $self->pathref,
	    Sql::Column::View->new('Value'),
	    Sql::Column::View->new('SubPkgPath', origin => 'FullPkgPath')->join(
	    	Sql::Join->new('_Paths')
		    ->add(Sql::Equal->new('Id', 'SubPkgPath'))));
}

sub new($class, $var, $value, $arch = undef, $path = undef)
{
	die "No arch fo $var" if defined $arch;
	bless [$var, $value, $path], $class;
}

sub path($self)
{
	return $self->[2];
}

sub dont_add($self)
{
	return $self->value eq '-';
}

sub add($self, $ins)
{
	return if $self->dont_add;
	my $base = $self->path;
	$self->AnyVar::add($ins);
	for my $d ($self->words) {
		my $path = $base->change_multi($d);
		my $k = $ins->find_pathkey($path->fullpkgpath);
		$self->normal_insert($ins, $d, $k) if $d ne '';
	}
}

package DebugPackagesVar;
our @ISA = qw(MultiVar);
sub table($) { 'DebugPackages' }

sub dont_add($)
{
	0
}

package ModulesVar;
our @ISA = qw(DefinedListKeyVar);
sub table($) { 'Modules' }
sub keyword_table($) { '_ModuleKeys' }

package ConfigureVar;
our @ISA = qw(DefinedListKeyVar);
sub table($) { 'Configure' }
sub keyword_table($) { '_ConfigureKeys' }

package ConfigureArgsVar;
our @ISA = qw(QuotedListVar);
sub table($) { 'ConfigureArgs' }

package DebugConfigureArgsVar;
our @ISA = qw(ConfigureArgsVar);
sub table($) { 'DebugConfigureArgs' }

package DistfilesVar;
our @ISA = qw(ListVar);
sub keyword_table($) { '_fetchfiles' }
sub table($) { 'Distfiles' }
sub match($) { 0 }
sub want_in_ports_view($) { 0 }

sub add_value($self, $ins, $value, @extra)
{
	my $sufx;
	if ($self->var =~ m/^(?:DISTFILES|SUPDISTFILES|PATCHFILES)(.+)$/) {
		$sufx = $1;
	}
	$self->normal_insert($ins, $self->keyword($ins, $value), 
	    $sufx, $self->match);
}

sub create_tables($self, $inserter)
{
	my $t = $self->table_name($self->table);
	my $k = $self->keyword_table;
	$self->create_table(
	    $self->fullpkgpath,
	    Sql::Column::Integer->new("Value")->references($k)->constraint,
	    Sql::Column::Text->new("SUFX")->constraint,
	    Sql::Column::Integer->new("Type")->constraint->notnull);

	$self->create_view(
	    $self->pathref,
	    Sql::Column::View->new("Value")->join(Sql::Join->new($k)
		->add(Sql::Equal->new("KeyRef", "Value"))),
	    Sql::Column::View->new("Sufx"),
	    Sql::Column::View->new("Type"));
	$inserter->make_ordered_view($self);
}

sub subselect($self)
{
	my $t = $self->table_name($self->table);
	my $k = $self->keyword_table;
	return (Sql::Column::View->new('FullPkgPath'),
	    Sql::Column::View->new("Value")->join(Sql::Join->new($k)
		->add(Sql::Equal->new("KeyRef", "Value"))),
	    Sql::Column::View->new("Sufx"),
	    Sql::Column::View->new("Type"),
	    Sql::Order->new("Value"));
}

sub select($)
{
	return (Sql::Column::View->new("Sufx")->group_by,
	    Sql::Column::View->new("Type")->group_by);
}

sub ports_view_column($self, $name)
{
	return Sql::Column::View->new($name, origin => 'Value')->join(
	    Sql::Join->new($self->table."_ordered")->left
	    	->add(Sql::Equal->new("FullPkgpath", "FullPkgpath"),
		    Sql::IsNull->new("SUFX"),
		    Sql::EqualConstant->new("Type", $self->match)));
}
 
package SupdistfilesVar;
our @ISA = qw(DistfilesVar);
sub match($) { 2 }

package PatchfilesVar;
our @ISA = qw(DistfilesVar);
sub match($) { 1 }

package Sql::Column::View::WithExtra;
our @ISA = qw(Sql::Column::View::Expr);

sub expr($self)
{
	my $c = $self->column;
	my $extra = $self->column("Extra");
	return
qq{CASE 1
  WHEN $extra IS NULL THEN $c
  ELSE $c||$extra
END
};
}

package WantlibVar;
our @ISA = qw(ListVar);
sub table($) { 'Wantlib' }
sub keyword_table($) { '_Library' }
sub want_in_ports_view($) { 1 }

sub _add($self, $ins, $value, $extra = undef)
{
	$self->normal_insert($ins, $self->keyword($ins, $value), $extra);
}

sub add_value($self, $ins, $value, @)
{
	if ($value =~ m/^(.*?)(\>?\=\d+\.\d+)$/) {
		$self->_add($ins, $1, $2);
	} elsif ($value =~ m/^(.*?)(\>?\=\d+)$/) {
		$self->_add($ins, $1, $2);
	} else {
		$self->_add($ins, $value, undef);
	}
}

sub create_tables($self, $inserter)
{
	my $t = $self->table_name($self->table);
	my $k = $self->keyword_table;
	$self->create_table(
	    $self->fullpkgpath,
	    Sql::Column::Integer->new("Value")->references($k)->constraint,
	    Sql::Column::Text->new("Extra")->constraint);

	$self->create_view(
	    $self->pathref,
	    Sql::Column::View::WithExtra->new("Value")->join(Sql::Join->new($k)
		->add(Sql::Equal->new("KeyRef", "Value"))));
	$inserter->make_ordered_view($self);
}

sub subselect($self)
{
	my $t = $self->table_name($self->table);
	my $k = $self->keyword_table;
	return (Sql::Column::View->new('FullPkgPath'),
	    Sql::Column::View::WithExtra->new("Value")->join(Sql::Join->new($k)
		->add(Sql::Equal->new("KeyRef", "Value"))),
	    Sql::Order->new("FullPkgPath"), Sql::Order->new("Value"));
}

sub select($)
{
	return ();
}

sub ports_view_column($self, $name)
{
	return Sql::Column::View->new($name, origin => 'Value')->join(
	    Sql::Join->new($self->table."_ordered")->left
	    	->add(Sql::Equal->new("FullPkgpath", "FullPkgpath")));
}

package OnlyForArchVar;
our @ISA = qw(DefinedListKeyVar);
sub table($) { 'OnlyForArch' }
sub keyword_table($) { '_Arches' }

package FileVar;
our @ISA = qw(SecondaryVar);
sub want_in_ports_view($) { 1 }

sub new($class, $var, $value, $arch, $pkg)
{
	my $path = $value;
	if ($value =~ m,^/,) {
		$value =~ s,^\Q$portsdir\E/,,;
	} else {
		$value = join("/", $pkg->pkgpath, $value);
		$path = join("/", $portsdir, $pkg->pkgpath, $path);
	}
	my $o = $class->SUPER::new($var, $value, $arch);
	push @$o, $path;
	return $o;
}

sub fullpath($self)
{
	return $self->[2];
}

sub add($self, $ins)
{
	$self->AnyVar::add($ins);
	my $filename = $self->fullpath;
	open my $file, '<', $filename or die "Can't open $filename: $!";
	local $/ = undef;
	# XXX save the file contents in a variable
	# somehow, directly passing <$file> results in a missing value
	# instead of '' if the file is empty
	my $contents = <$file>;
	$self->add_value($ins, $contents, $self->value);
}

sub view_columns($self, $k)
{
	return ($self->SUPER::view_columns($k),
	    Sql::Column::View->new("Filename"));
}

sub table_columns($, $)
{
	return (Sql::Column::Text->new("Value")->notnull,
	    Sql::Column::Text->new("Filename")->notnull);
}

sub ports_view_column($self, $name)
{
	my $j = $self->compute_join($name);
	return (Sql::Column::View->new($name, origin => 'Filename')->join($j),
	    Sql::Column::View->new($name."_CONTENTS", origin => 'Value')
	    	->join($j));
}

package ReadmeVar;
our @ISA = qw(FileVar);
sub table($) { 'ReadMe' }

sub compute_join($self, $name)
{
	return $self->SUPER::compute_join($name)->left;
}

package DescrVar;
our @ISA = qw(FileVar);
sub table($) { 'Descr' }
use File::Basename;

# README does not exist as an actual variable, but it's trivial
# to add it as a subsidiary of DESCR when the file exists.

sub new($class, $var, $value, $arch, $path)
{
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

package Sql::Column::View::AddVersion;
our @ISA = qw(Sql::Column::View::Expr);
sub expr($self)
{
	my $c = $self->column;
	my $extra = $self->column("Version");
	return "$c || ' '||$extra";
}

package SharedLibsVar;
our @ISA = qw(KeyVar);
sub table($) { 'Shared_Libs' }
sub keyword_table($) { '_Library' }
sub want_in_ports_view($) { 1 }

sub add($self, $ins)
{
	$self->AnyVar::add($ins);
	my %t = $self->words;
	while (my ($k, $v) = each %t) {
		$self->normal_insert($ins, $self->keyword($ins, $k), $v);
	}
}

sub create_tables($self, $inserter)
{
	my $k = $self->keyword_table;
	$self->create_table(
	    $self->fullpkgpath,
	    Sql::Column::Integer->new("LibName")->references($k)->constraint,
	    Sql::Column::Text->new("Version")->notnull);
	$self->create_view(
	    $self->pathref,
	    Sql::Column::View->new("LibName", origin => 'Value')->join(
	    	Sql::Join->new($k)->add(Sql::Equal->new("KeyRef", "LibName"))),
	    Sql::Column::View->new("Version"));
	$inserter->make_ordered_view($self);
}

sub subselect($self)
{
	my $t = $self->table_name($self->table);
	my $k = $self->keyword_table;
	return (Sql::Column::View->new('FullPkgPath'),
	    Sql::Column::View::AddVersion->new("Value")->join(Sql::Join->new($k)
		->add(Sql::Equal->new("KeyRef", "LibName"))),
	    Sql::Order->new("Value"));
}

sub select($)
{
	return ();
}

sub ports_view_column($self, $name)
{
	return Sql::Column::View->new($name, origin => 'Value')->join(
	    Sql::Join->new($self->table."_ordered")->left
	    	->add(Sql::Equal->new("FullPkgpath", "FullPkgpath")));
}

package DistTupleVar;
our @ISA = qw(AnyVar);
sub table($) { 'DistTuple' };

sub add($self, $ins)
{
	$self->AnyVar::add($ins);
	my @l = $self->words;
	while(@l > 0) {
		my $type = shift @l;
		my $account = shift @l;
		my $project = shift @l;
		my $id = shift @l;
		my $mv = shift @l;
		$self->normal_insert($ins, $type, $account, $project, $id, $mv);
	}
}

sub create_tables($self, $inserter)
{
	$self->create_table(
	    $self->fullpkgpath,
	    Sql::Column::Text->new("Type"),
	    Sql::Column::Text->new("Account"),
	    Sql::Column::Text->new("Project"),
	    Sql::Column::Text->new("Id"),
	    Sql::Column::Text->new("Mv"));
	$self->create_view(
	    $self->pathref,
	    Sql::Column::View->new("Type"),
	    Sql::Column::View->new("Account"),
	    Sql::Column::View->new("Project"),
	    Sql::Column::View->new("Id"),
	    Sql::Column::View->new("Mv"));
}

package EmailVar;
our @ISA = qw(KeyVar);
sub keyword_table($) { '_Email' }

package YesKeyVar;
our @ISA = qw(KeyVar);
sub keyword_table($) { '_Keywords2' }

package AutoVersionVar;
our @ISA = qw(OptKeyVar);
sub keyword_table($) { '_AutoVersion' }

package ModulesVarVar;
our @ISA = qw(KeyVar);
sub table($) { 'ModulesVar' }
sub keyword_table($) { '_VarName' }
sub want_in_ports_view($) { 0 }

sub create_tables($self, $inserter)
{
	my $k = $self->keyword_table;
	$self->create_table(
	    $self->fullpkgpath,
	    Sql::Column::Integer->new("VarName")->references($k)->constraint,
	    Sql::Column::Text->new("Value"));
	$self->create_view(
	    $self->pathref,
	    Sql::Column::View->new("VarName", origin => 'Value')->join($self->compute_join("VarName")),
	    Sql::Column::View->new("Value"));
}

sub add($self, $ins)
{
	$self->AnyVar::add($ins);
	$self->normal_insert($ins, $self->keyword($ins, $self->var), 
	    $self->value);
}

1;
