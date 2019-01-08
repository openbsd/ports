#! /usr/bin/perl
# $OpenBSD: Sql.pm,v 1.22 2019/01/08 19:42:45 espie Exp $
#
# Copyright (c) 2018 Marc Espie <espie@openbsd.org>
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

# This does implement objects for an Sql Tree.

use strict;
use warnings;

package Sql::Object;
sub new
{
	my ($class, $name, %rest) = @_;
	my $o = \%rest;
	$o->{name} = $name;
	bless $o, $class;
}

sub indent
{
	my ($self, $string, $plus) = @_;
	$self->{level} //= 0;
	return ' 'x(($self->{level}+$plus)).$string;
}

sub name
{
	my $self = shift;
	return $self->{name};
}

sub drop
{
	my $self = shift;
	return "DROP ".$self->type." IF EXISTS ".$self->name;
}

sub dump
{
	my $self = shift;
	print $self->stringize, "\n";
}

sub add
{
	my $self = shift;
	for my $o (@_) {
		$o->add_to($self);
	}
	return $self;
}

sub add_to
{
	my ($o, $c) = @_;
	$o->{parent} = $c;
	push(@{$c->{$o->category}}, $o);
}

sub prepend
{
	my $self = shift;
	for my $o (reverse @_) {
		$o->prepend_to($self);
	}
	return $self;
}

sub prepend_to
{
	my ($o, $c) = @_;
	$o->{parent} = $c;
	unshift(@{$c->{$o->category}}, $o);
}

sub is_table
{
	0
}

sub origin
{
	my $self = shift;
	return $self->{origin};
}

sub origin_name
{
	my $self = shift;
	return $self->origin;
}

sub normalize
{
	my ($self, $v) = @_;
	$v =~ tr/A-Z/a-z/;
	return $v;
}

package Sql::Create;
our @ISA = qw(Sql::Object);

my $register;

sub stringize
{
	my $self = shift;
	return "CREATE ".($self->{temp} ? "TEMP ": "").$self->type.
	    " ".$self->name." ".join("\n", $self->contents);
}

sub sort
{
	my $self = shift;

	$self->{columns} = [ sort {$a->name cmp $b->name} @{$self->{columns}}];
	return $self;
}

sub all_tables
{
	my $class = shift;
	return grep {$_->is_table} (sort {$a->name cmp $b->name} values %$register);
}

sub all_views
{
	my $class = shift;
	return grep {!$_->is_table} (sort {$a->name cmp $b->name} values %$register);
}

sub key
{
	my ($class, $name) = @_;
	return $register->{$class->normalize($name)}{key};
}

sub dump_all
{
	my $class = shift;
	for my $v (values %$register) {
		$v->dump;
	}
}

sub register
{
	my $self = shift;
	$register->{$self->normalize($self->name)} = $self;
	return $self;
}

sub add_column_names
{
	my ($self, $name) = @_;
	my $o = $register->{$self->normalize($name)};
	if (!defined $o) {
	#	print STDERR $name, "\n";
		return;
	}
	$self->add_column_names_from($o);
}

sub add_column_names_from
{
	my ($self, $o) = @_;
	for my $c ($o->columns) {
		$self->{column_names}{$self->normalize($c->name)}++;
	}
}

sub columns
{
	my $self = shift;
	return @{$self->{columns}};
}

sub column_names
{
	my $self = shift;
	my @names;
	for my $c ($self->columns) {
		next if $c->is_key;
		push(@names, $c->name);
	}
	return @names;
}

sub temp
{
	my $self = shift;
	$self->{temp} = 1;
	return $self;
}

package Sql::Create::Table;
our @ISA = qw(Sql::Create);

sub type
{
	"TABLE"
}

sub is_table
{
	1
}

sub contents
{
	my $self = shift;
	my @c;
	my @d;
	for my $col (@{$self->{columns}}) {
		push(@c, $col->stringize);
		if ($col->{is_constraint}) {
			push(@d, $col->name);
		}
	}
	if (@d > 0) {
		push(@c, "UNIQUE(".join(", ", @d). ")");
	}
	return "(". join(', ', @c).")";
}

sub inserter
{
	my $self = shift;
	my @names = $self->column_names;
	my $alt = $self->{ignore} ? " OR IGNORE" :
	    ($self->{noreplace} ? "" : " OR REPLACE");
	return "INSERT$alt INTO ".$self->name." (".
	    join(', ', @names).") VALUES (".join(', ', map {('?')} @names).")";
}

sub noreplace
{
	my $self = shift;
	$self->{noreplace} = 1;
	return $self;
}

sub ignore
{
	my $self = shift;
	$self->{ignore} = 1;
	return $self;
}

sub new
{
	my $class = shift;
	$class->SUPER::new(@_)->register;
}

package Sql::Create::View;
our @ISA = qw(Sql::Create);
sub type
{
	"VIEW"
}

sub new
{
	my $class = shift;
	my $o = $class->SUPER::new(@_);
	my $a = "T0001";
	$o->{alias} = \$a;
	$o->{select} = Sql::Select->new(@_);
	$o->register;
}


sub contents
{
	my $self = shift;
	my @parts = ();

	$self->{select}{level} = ($self->{level}//0)+4;
	$self->{select}{alias} = $self->{alias};

	return ("AS", $self->{select}->contents);
}

sub columns
{
	my $self = shift;
	return @{$self->{select}{columns}};
}

sub add
{
	my $self = shift;
	$self->{select}->add(@_);
	return $self;
}

sub prepend
{
	my $self = shift;
	$self->{select}->prepend(@_);
	return $self;
}
sub sort
{
	my $self = shift;
	$self->{select}->sort;
	return $self;
}

package Sql::Select;
our @ISA = qw(Sql::Create);


sub contents
{
	my $self = shift;

	my @parts = ();
	# compute the joins
	my $joins = {};
	my @joins = ();
	
	# figure out used tables
	my $tables = {};
	
	if (!defined $self->{origin}) {
		die "Error no origin for select in ".$self->name;
	}
	# and column names
	$self->{column_names} = {};

	for my $w (@{$self->{with}}) {
		$w->{alias} = $self->{alias};
		$self->add_column_names_from($w);
		push(@parts, $self->indent("WITH ".$w->name." AS", 0));
		my @c = $w->contents;
		my $one = shift @c;
		my $last = pop @c;
		push(@parts, $self->indent("($one", 4));
		for my $c (@c) {
			push(@parts, $self->indent($c, 5));
		}
		push(@parts, $self->indent("$last)", 5));
	}

	$self->add_column_names($self->origin);

	$tables->{$self->normalize($self->origin)}++;

	for my $c (@{$self->{columns}}) {
		my $j = $c->{join};
		while (defined $j) {
			if (!defined $joins->{$j}) {
				$self->add_column_names($j->name);
				push(@joins, $j);
				$joins->{$j} = $j;
				if (++$tables->{$self->normalize($j->name)} == 1) {
					delete $j->{alias};
				} else {
					$j->{alias} = ${$self->{alias}}++;
				}
			}
			$j = $j->{join};
		}
	}

	push(@parts, $self->indent("SELECT", 0));
	my @c = @{$self->{columns}};
	while (@c != 0) {
		my $c = shift @c;
		my $sep = @c == 0 ? '' : ',';
		for my $l (split /\n/, $c->stringize) {
			push(@parts, $self->indent($l, 4).$sep);
		}
	}

	push(@parts, $self->indent("FROM ".$self->origin, 0));
	for my $j  (@joins) {
		push(@parts, $self->indent($j->join_part, 4));
		my @p = $j->on_part($self);
		if (@p > 0) {
			push(@parts, $self->indent("ON ".join(" AND ", @p), 8));
		}
	}
	if (defined $self->{group}) {
		push(@parts, $self->indent("GROUP BY ".
		    join(", ", map {$_->name} @{$self->{group}}), 4));
	}
	if (defined $self->{order}) {
		push(@parts, $self->indent("ORDER BY ".
		    join(", ", map {$_->name} @{$self->{order}}), 4));
	}
	return @parts;
}

sub is_unique_name
{
	my ($self, $name) = @_;
	return ($self->{column_names}{$self->normalize($name)}//1) == 1;
}

package Sql::With;
our @ISA = qw(Sql::Select);
sub category
{
	"with"
}

package Sql::Order;
our @ISA = qw(Sql::Object);
sub category
{
	"order"
}

package Sql::Group;
our @ISA = qw(Sql::Object);
sub category
{
	"group"
}

package Sql::Column;
our @ISA = qw(Sql::Object);
sub category
{
	"columns"
}

sub notnull
{
	my $self = shift;
	$self->{notnull} = 1;
	return $self;
}

sub null
{
	my $self = shift;
	delete $self->{notnull};
	return $self;
}

sub unique
{
	my $self = shift;
	$self->{unique} = 1;
	return $self;
}

sub stringize
{
	my $self = shift;
	my @c = ($self->name, $self->type);
	if ($self->{notnull}) {
		push(@c, "NOT NULL");
	}
	if ($self->{unique}) {
		push(@c, "UNIQUE");
	}
	if ($self->{references}) {
		push(@c, "REFERENCES $self->{references}{table}(".
			$self->reference_field.")");
	}
	return join(" ", @c);
}

sub is_key
{
	0
}

sub constraint
{
	my $self = shift;
	$self->{is_constraint} = 1;
	return $self;
}
package Sql::Column::Integer;
our @ISA = qw(Sql::Column);

sub type
{
	"INTEGER"
}

sub reference_field
{
	my $self = shift;
	if (defined $self->{references}{field}) {
		return $self->{references}{field};
	} else {
		my $table = $self->{references}{table};
		my $k = Sql::Create::Table->key($table);
		if (defined $k) {
			return $k->name;
		} else {
			my $parent = "???";
			if (defined $self->{parent}) {
				$parent = $self->{parent}->name;
			}
			die "Can't reference $table from field ".$self->name.
			    " in $parent";
		}
	}
}
sub may_reference
{
	my ($self, $table, $field) = @_;
	$self->{references}{table} = $table;
	$self->{references}{field} = $field;
	return $self;
}

sub references
{
	my ($self, $table, $field) = @_;
	return $self->may_reference($table, $field)->notnull;
}

package Sql::Column::View;
our @ISA = qw(Sql::Column);

sub stringize
{
	my $self = shift;
	my $container = $self->{parent};

	if ($container->is_unique_name($self->origin_name)) {
		if ($self->origin eq $self->name) {
			return $self->name;
		} else {
			return $self->origin." AS ".$self->name;
		}
	} elsif (defined $self->{join}) {
		return $self->{join}->alias.".".$self->origin." AS ".$self->name;
	} else {
		return $container->origin.".".$self->origin." AS ".$self->name;
	}
}

sub group_by
{
	my $self = shift;
	$self->{group_by} = 1;
	return $self;
}

sub join
{
	my ($self, $j) = @_;
	$self->{join} = $j;
	$j->{parent} = $self;
	return $self;
}

sub left
{
	my $self = shift;
	if (defined $self->{join}) {
		$self->{join}->left;
	}
	return $self;
}

sub new
{
    my $class = shift;
    my $o = $class->SUPER::new(@_);
    $o->{origin} //= $o->{name};
    return $o;
}

sub add_to
{
	my ($self, $container) = @_;
	$self->SUPER::add_to($container);
	if ($self->{group_by}) {
		push(@{$container->{group}}, $self);
	}
}

sub prepend_to
{
	my ($self, $container) = @_;
	$self->SUPER::prepend_to($container);
	if ($self->{group_by}) {
		unshift(@{$container->{group}}, $self);
	}
}

package Sql::Column::View::Concat;
our @ISA = qw(Sql::Column::View);

sub new
{
    my $class = shift;
    my $o = $class->SUPER::new(@_);
    $o->{separator} //= ' ';
    return $o;
}

sub origin
{
	my $self = shift;
	return "group_concat(".$self->SUPER::origin.", '".
		$self->{separator}."')";
}

sub origin_name
{
	my $self = shift;
	return $self->SUPER::origin;
}

package Sql::Column::View::Expr;
our @ISA = qw(Sql::Column::View);
sub origin_name
{
	my $self = shift;
	return $self->SUPER::origin;
}

sub origin
{
	my $self = shift;
	return $self->{expr};
}

package Sql::Column::Text;
our @ISA = qw(Sql::Column);
sub type
{
	"TEXT";
}

package Sql::Column::Key;
our @ISA = qw(Sql::Column::Integer);
sub new
{
	my $class = shift;
	my $o = $class->SUPER::new(@_);
	$o->{autoincrement} = 1;
	return $o;
}

sub is_key
{
	my $self = shift;
	return $self->{autoincrement};
}

sub add_to
{
	my ($self, $c) = @_;
	$c->{key} = $self;
	$self->SUPER::add_to($c);
}


sub prepend_to
{
	my ($self, $c) = @_;
	$c->{key} = $self;
	$self->SUPER::prepend_to($c);
}

sub noautoincrement
{
	my $self = shift;
	$self->{autoincrement} = 0;
	return $self;
}

sub type
{
	my $self = shift;
	if ($self->{autoincrement}) {
		return "INTEGER PRIMARY KEY AUTOINCREMENT";
	} else {
		return "INTEGER PRIMARY KEY";
	}
}

package Sql::Join;
our @ISA = qw(Sql::Object);
sub category
{
	"joins"
}

sub join_part
{
	my $self = shift;
	my $s = "JOIN ".$self->name;
	if (defined $self->{alias}) {
		$s .= " ".$self->{alias};
	}
	if ($self->{left}) {
		$s = "LEFT ".$s;
	}
	return $s;
}

sub alias
{
	my $self = shift;
	return $self->{alias} // $self->{name};
}

sub on_part
{
	my ($self, $view) = @_;
	return map {$_->equation($self, $view)} @{$self->{equals}};

}

sub left
{
	my $self = shift;
	$self->{left} = 1;
	return $self;
}

package Sql::Equal;
our @ISA = qw(Sql::Object);

sub new
{
	my ($class, $a, $b) = @_;
	bless {a => $a, b => $b}, $class;
}

sub category
{
	"equals"
}

sub equation
{
	my ($self, $join, $view) = @_;

	my $a = $self->{a};
	my $b = $self->{b};
	if (!$view->is_unique_name($a)) {
		$a = $join->alias.".".$a;
	}
	if (!$view->is_unique_name($b)) {
		$b = $join->{parent}{parent}->origin.".".$b;
	}
	return "$a=$b";
}

package Sql::IsNull;
our @ISA = qw(Sql::Equal);
sub equation
{
	my ($self, $join, $view) = @_;
	my $a = $self->{a};
	if (!$view->is_unique_name($a)) {
		$a = $join->alias.".".$a;
	}

	return "$a IS NULL";
}
1;
