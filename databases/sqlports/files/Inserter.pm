#! /usr/bin/perl
# $OpenBSD: Inserter.pm,v 1.41 2021/01/29 08:30:37 espie Exp $
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
use Sql;

package Inserter;
# this is the object to use to put stuff into the db...
sub new
{
	my ($class, $db, $i, $verbose, $create) = @_;
	$db->do("PRAGMA foreign_keys=ON");
	bless {
		db => $db,
		transaction => 0,
		threshold => $i,
		vars => {},
		created => {},
		create => $create,
		errors => [],
		done => {},
		todo => {},
		verbose => $verbose,
	}, $class;
}

sub add_error
{
}

sub current_path
{
	my $self = shift;
	return $self->{current_path};
}

sub create_tables
{
	my ($self, $vars) = @_;

	my $t = $self->{ports_table} = Sql::Create::Table->new("_Ports");
	my $v = $self->{ports_view} = Sql::Create::View->new("Ports", 
	    origin => '_Ports');
	$self->create_path_table;
	# XXX sort it
	for my $i (sort keys %$vars) {
		$vars->{$i}->prepare_tables($self, $i);
	}

	$t->sort;
	$self->{varlist} = [$t->column_names];
	$t->prepend(AnyVar->fullpkgpath);

	$v->sort;
	$v->prepend(AnyVar->pathref);
	$self->create_meta;
	$self->create_schema;
	print '-'x50, "\n" if $self->{verbose};
}

sub add_to_ports_table
{
	my ($self, @column) = @_;
	$self->{ports_table}->add(@column);
}

sub add_to_ports_view
{
	my ($self, @o) = @_;
	$self->{ports_view}->add(@o);
}

sub make_ordered_view
{
	my ($self, $class) = @_;

	my $view = $self->view_name($class->table."_ordered");
	my @subselect = $class->subselect;
	my @select = (Sql::Column::View->new('FullPkgPath')->group_by,
	    Sql::Column::View::Concat->new("Value"), $class->select);
	Sql::Create::View->new($view, origin => 'o')->add(
	    Sql::With->new('o', origin => $self->table_name($class->table))
	    	->add(@subselect),
	    @select);
}

sub set
{
	my ($self, $ref) = @_;
	$self->{ref} = $ref;
}

sub db
{
	return shift->{db};
}

sub last_id
{
	return shift->db->func('last_insert_rowid');
}

sub insert_done
{
	my $self = shift;
	$self->{transaction}++;
}

sub new_sql
{
	my ($self, $sql) = @_;
	my $n = $sql->name;
	return if defined $self->{created}{$n};
	$self->{created}{$n} = 1;
	my $drop = $sql->drop;
#	print "$drop\n" if $self->{verbose};
	$self->db->do($drop);
	my $request = $sql->stringize;
	print "$request\n" if $self->{verbose};
	$self->db->do($request);
}

sub create_schema
{
	my $self = shift;
	if ($self->{create}) {
		for my $t (Sql::Create->all_tables) {
			$self->new_sql($t);
		}
		for my $t (Sql::Create->all_tables) {
			my $i = $t->inserter;
			print $i, "\n";
			$self->{insert}{$t->name} = $self->prepare($i);
		}
		for my $i (Sql::Create->all_indices) {
			$self->new_sql($i);
		}
	}
	for my $v (Sql::Create->all_views) {
		$self->new_sql($v);
	}
	$self->commit_to_db;
}

sub prepare
{
	my ($self, $s) = @_;
	return $self->db->prepare($s);
}

sub finish_port
{
	my $self = shift;
	my @values = ($self->ref);
	for my $i (@{$self->{varlist}}) {
		push(@values, $self->{vars}{$i});
	}
	$self->insert('_Ports', @values);
	$self->{vars} = {};
	if ($self->{transaction} >= $self->{threshold}) {
		$self->commit_to_db;
		$self->{transaction} = 0;
	}
}

sub add_to_port
{
	my ($self, $var, $value) = @_;
	$self->{vars}{$var} = $value;
}

sub ref
{
	return shift->{ref};
}

sub insert
{
	my $self = shift;
	my $table = shift;
	$self->{insert}{$table}->execute(@_);
	$self->insert_done;
}

sub add_var
{
	my ($self, $v) = @_;
	$v->add($self);
}

sub create_canonical_depends
{
	my ($self, $class) = @_;
	my $t = $self->table_name($class->table);
	my $p = $self->table_name("Paths");
	Sql::Create::View->new("_canonical_depends", origin=>$t)->add(
	    Sql::Column::View->new("FullPkgPath", origin=>"Id")
		->join(Sql::Join->new($p)
		    ->add(Sql::Equal->new("Canonical", "FullPkgPath"))),
	    Sql::Column::View->new("DependsPath", origin=>"Canonical")
		->join(Sql::Join->new($p)
		    ->add(Sql::Equal->new("Id", "DependsPath"))),
	    Sql::Column::View->new("Type"));

	Sql::Create::View->new("canonical_depends", origin=>$t)->add(
	    Sql::Column::View->new("FullPkgPath")
		->join(Sql::Join->new($p)
		    ->add(Sql::Equal->new("Canonical", "FullPkgPath"))),
	    Sql::Column::View->new("DependsPath", origin=>"FullPkgPath")
		->join(Sql::Join->new($p)
		    ->add(Sql::Equal->new("Id", "DependsPath")),
		       Sql::Join->new($p)
		    ->add(Sql::Equal->new("Id", "canonical"))),
	    Sql::Column::View->new("Type"));
}

sub commit_to_db
{
	my $self = shift;
	$self->db->commit;
}

sub table_name
{
	my ($class, $name) = @_;
	return "_$name";
}

sub view_name
{
	my ($class, $name) = @_;
	return $name;
}

sub adjust
{
	my $self = shift;
	return $self->{adjust} //= $self->prepare("UPDATE _Paths set Canonical=? where Id=?");
}

sub create_meta
{
	Sql::Create::Table->new("Meta")->add(
	    Sql::Column::Text->new("SchemaVersion"),
	    Sql::Column::Text->new("Hash"),
	    Sql::Column::CurrentDate->new("CreationDate"));
}

sub create_path_table
{
	my $t = "_Paths";
	my $v = "Paths";
	Sql::Create::Table->new($t)->add(
	    Sql::Column::Key->new("Id")->noautoincrement, 
	    Sql::Column::Text->new("FullPkgPath")->notnull->unique,
	    Sql::Column::Integer->new("PkgPath")->references($t),
	    Sql::Column::Integer->new("Canonical")->references($t)->indexed);

	Sql::Create::View->new($v, origin => $t)->add(
	    Sql::Column::View->new("PathId", origin => "Id"),
	    Sql::Column::View->new("FullPkgPath"),
	    Sql::Column::View->new("PkgPath", origin => "FullPkgPath")
		->join(Sql::Join->new($t)->add(
		    Sql::Equal->new("Id", "PkgPath"))),
	    Sql::Column::View->new("Canonical", origin => "FullPkgPath")
		->join(Sql::Join->new($t)->add(
		    Sql::Equal->new("Id", "Canonical")))
	    );
}

my $path_cache = {};
my $newid = 1;
sub find_pathkey
{
	my ($self, $key) = @_;

	if (!defined $key or $key eq '') {
		print STDERR "Empty pathkey\n";
		return 0;
	}
	if (defined $path_cache->{$key}) {
		return $path_cache->{$key};
	}

	# if none, we create one
	my $path = $key;
	$path =~ s/\,.*//;
	if ($path ne $key) {
		$path = $self->find_pathkey($path);
	} else {
		$path = $newid;
	}
	$self->insert('_Paths', $newid, $key, $path, $newid);
	my $r = $self->last_id;
	$path_cache->{$key} = $r;
	$newid++;
	return $r;
}

sub add_path
{
	my ($self, $key, $alias) = @_;
	$self->adjust->execute($path_cache->{$alias}, $path_cache->{$key});
}

sub set_newkey
{
	my ($self, $key) = @_;

	$self->set($self->find_pathkey($key));
	$self->{current_path} = $key;
}

sub write_log
{
}

1;
