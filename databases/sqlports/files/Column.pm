#! /usr/bin/perl
# $OpenBSD: Column.pm,v 1.3 2010/04/17 13:06:49 espie Exp $
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

# The Column hierarchy is mostly responsible for dealing with the database
# schema itself.

package Column;
sub new
{
	my ($class, $name) = @_;
	$name //= $class->default_name;
	bless {name => $name}, $class;
}

sub set_vartype
{
	my ($self, $vartype) = @_;

	$self->{vartype} = $vartype;
	return $self;
}

sub name
{
	my $self = shift;
	return $self->{name};
}

sub normal_schema
{
	my ($self, $inserter, $class) = @_;
	return $self->name." ".$self->sqltype;
}

sub view_schema
{
	my ($self, $t) = @_;
	return $t.".".$self->name." AS ".$self->name;
}

sub join_schema
{
	return "";
}

package TextColumn;
our @ISA = qw(Column);

sub sqltype
{
	return "TEXT NOT NULL";
}

package OptTextColumn;
our @ISA = qw(TextColumn);

sub sqltype
{
	return "TEXT";
}

package IntegerColumn;
our @ISA = qw(Column);
sub sqltype
{
	return "INTEGER NOT NULL";
}

package OptIntegerColumn;
our @ISA = qw(IntegerColumn);
sub sqltype
{
	return "INTEGER";
}

package RefColumn;
our @ISA = qw(Column);

my $table = "T0001";

sub table
{
	my $self = shift;
	$self->{table} //= $table++;
	return $self->{table};
}

package PathColumn;
our @ISA = qw(RefColumn);

sub default_name
{
	return "FULLPKGPATH";
}

sub view_schema
{
	my ($self, $t) = @_;
	return $self->table.".FULLPKGPATH AS ".$self->name;
}

sub normal_schema
{
	my ($self, $inserter, $class) = @_;
	return $inserter->pathref($self->name);
}

sub join_schema
{
	my ($self, $table) = @_;
	return "JOIN Paths ".$self->{table}." ON ".$self->table.".ID=$table.".$self->name;
}

package ValueColumn;
our @ISA = qw(RefColumn);

sub default_name
{
	return "VALUE";
}

sub k
{
	my $self = shift;
	return $self->{vartype}->keyword_table;
}

sub normal_schema
{
	my ($self, $inserter) = @_;
	return $inserter->value($self->k, $self->name);
}

sub view_schema
{
	my ($self, $t) = @_;
	if (defined $self->k) {
		return $self->table.".VALUE AS ".$self->name;
	} else {
		return $self->SUPER::view_schema($t);
	}
}

sub join_schema
{
	my ($self, $table) = @_;
	if (defined $self->k) {
		return "JOIN ".$self->k." ".$self->table." ON ".$self->table.".KEYREF=$table.".$self->name;
	}
}

package OptValueColumn;
our @ISA = qw(ValueColumn);

sub normal_schema
{
	my ($self, $inserter) = @_;
	return $inserter->optvalue($self->k, $self->name);
}

sub join_schema
{
	my ($self, $table) = @_;
	return "LEFT ".$self->SUPER::join_schema($table);
}

1;
