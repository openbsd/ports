#! /usr/bin/perl
# $OpenBSD: Column.pm,v 1.1 2010/04/13 10:23:53 espie Exp $
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

package Column;
sub new
{
	my ($class, $name) = @_;
	if (!defined $name) {
		$name = $class->default_name;
	}
	bless {name => $name}, $class;
}

sub set_class
{
	my ($self, $varclass) = @_;

	$self->{class} = $varclass;
	return $self;
}

sub name
{
	my $self = shift;
	return $self->{name};
}

sub render
{
	my ($self, $inserter, $class) = @_;
	return $self->name." ".$self->sqltype;
}

sub render_view
{
	my ($self, $t) = @_;
	return $t.".".$self->name." AS ".$self->name;
}

sub render_join
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
our @ISA =qw(Column);
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
	if (!defined $self->{table}) {
		$self->{table} = $table++;
	}
	return $self->{table};
}

package PathColumn;
our @ISA = qw(RefColumn);

sub default_name
{
	return "FULLPKGPATH";
}

sub render_view
{
	my ($self, $t) = @_;
	return $self->table.".FULLPKGPATH AS ".$self->name;
}

sub render
{
	my ($self, $inserter, $class) = @_;
	return $inserter->pathref($self->name);
}

sub render_join
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
	return $self->{class}->keyword_table;
}

sub render
{
	my ($self, $inserter) = @_;
	return $inserter->value($self->k, $self->name);
}

sub render_view
{
	my ($self, $t) = @_;
	if (defined $self->k) {
		return $self->table.".VALUE AS ".$self->name;
	} else {
		return $self->SUPER::render_view($t);
	}
}

sub render_join
{
	my ($self, $table) = @_;
	if (defined $self->k) {
		return "JOIN ".$self->k." ".$self->table." ON ".$self->table.".KEYREF=$table.".$self->name;
	}
}

package OptValueColumn;
our @ISA = qw(ValueColumn);

sub render
{
	my ($self, $inserter) = @_;
	return $inserter->optvalue($self->k, $self->name);
}

sub render_join
{
	my ($self, $table) = @_;
	return "LEFT ".$self->SUPER::render_join($table);
}

1;
