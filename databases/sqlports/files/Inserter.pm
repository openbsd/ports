#! /usr/bin/perl
# $OpenBSD: Inserter.pm,v 1.29 2018/12/03 20:11:15 espie Exp $
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

package Inserter;
# this is the object to use to put stuff into the db...
sub new
{
	my ($class, $db, $i, $verbose) = @_;
	$db->do("PRAGMA foreign_keys=ON");
	bless {
		db => $db,
		transaction => 0,
		threshold => $i,
		vars => {},
		table_created => {},
		view_created => {},
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

	$self->create_path_table;
	# XXX sort it
	for my $t (sort keys %$vars) {
		$vars->{$t}->prepare_tables($self, $t);
	}

	$self->create_ports_table;
	$self->prepare_normal_inserter('Ports', @{$self->{varlist}});
	$self->prepare_normal_inserter('Paths', 'PKGPATH', 'CANONICAL');
	$self->create_view_info;
	$self->commit_to_db;
	print '-'x50, "\n" if $self->{verbose};
}

sub map_columns
{
	my ($self, $mapper, $colref, @p) = @_;
	$mapper .= '_schema';
	return grep {defined $_} (map {$_->$mapper(@p)} @$colref);
}

sub make_ordered_view
{
	my ($self, $class) = @_;

	my $view = $self->view_name($class->table."_ordered");
	my $subselect = $class->subselect($self);
	my @group = $class->group_by;
	unshift(@group, 'fullpkgpath');
	my $groupby = join(', ', @group);
	my $result = join(",\n\t", @group, 'group_concat(value, " ") AS value');
	$self->new_object('VIEW', $class->table."_ordered",
	    qq{AS 
    WITH o AS
    	($subselect)
    SELECT
    	$result 
    FROM o 
    GROUP by $groupby;});
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

sub new_object
{
	my ($self, $type, $name, $request) = @_;
	my $o;
	if ($type eq 'VIEW') {
		return if defined $self->{view_created}{$name};
		$self->{view_created}{$name} = 1;
		$o = $self->view_name($name);
	} elsif ($type eq 'TABLE') {
		return if defined $self->{table_created}{$name};
		$self->{table_created}{$name} = 1;
		$o = $self->table_name($name);
	} else {
		die "unknown object type";
	}
	$self->db->do("DROP $type IF EXISTS $o");
	$request = "CREATE $type $o $request";
	print "$request\n" if $self->{verbose};
	$self->db->do($request);
}

sub new_table
{
	my ($self, $name, @cols) = @_;

	$self->new_object('TABLE', $name, "(".join(', ', @cols).")");
}

sub prepare
{
	my ($self, $s) = @_;
	return $self->db->prepare($s);
}

sub prepare_inserter
{
	my ($ins, $table, @cols) = @_;
	my $request = "INSERT OR REPLACE INTO ".
	    $ins->table_name($table)." (".
	    join(', ', @cols).
	    ") VALUES (".
	    join(', ', map {'?'} @cols).")";
	print "$request\n" if $ins->{verbose};
	$ins->{insert}{$table} = $ins->prepare($request);
}

sub prepare_normal_inserter
{
	my ($ins, $table, @cols) = @_;
	$ins->prepare_inserter($table, "FULLPKGPATH", @cols);
}

sub finish_port
{
	my $self = shift;
	my @values = ($self->ref);
	for my $i (@{$self->{varlist}}) {
		push(@values, $self->{vars}{$i});
	}
	$self->insert('Ports', @values);
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

sub create_ports_table
{
	my $self = shift;

	my @columns = sort {$a->name cmp $b->name} @{$self->{columnlist}};
	unshift(@columns, PathColumn->new);
	my @l = $self->map_columns('normal', \@columns, $self);
	$self->new_table("Ports", @l, "UNIQUE(FULLPKGPATH)");
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
	$self->new_object('VIEW', "_canonical_depends",
		qq{AS 
    SELECT 
	p1.id AS fullpkgpath, 
	p2.canonical AS dependspath, 
	$t.type 
    FROM $t 
	JOIN $p p1 
	    ON p1.canonical=$t.fullpkgpath
	JOIN $p p2 
	    ON p2.Id=$t.dependspath});
	$self->new_object('VIEW', "canonical_depends",
		qq{AS
    SELECT 
	p1.fullpkgpath AS fullpkgpath, 
	p3.fullpkgpath AS dependspath, 
	$t.type 
    FROM $t 
	JOIN $p p1 
	    ON p1.canonical=$t.fullpkgpath
	JOIN $p p2 
	    ON p2.Id=$t.dependspath
	JOIN $p p3 
	    ON p3.Id=p2.canonical});
}

sub commit_to_db
{
	my $self = shift;
	$self->db->commit;
}

our $c = {
	Library => 0,
	Run => 1,
	Build => 2,
	Test => 3
};

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

sub convert_depends
{
	my ($self, $value) = @_;
	return $c->{$value};
}


sub pathref
{
	my ($self, $name) = @_;
	$name = "FULLPKGPATH" if !defined $name;
	return "$name INTEGER NOT NULL REFERENCES ".
	    $self->table_name("Paths")."(ID)";
}

sub value
{
	my ($self, $k, $name) = @_;
	$name = "VALUE" if !defined $name;
	if (defined $k) {
		return "$name INTEGER NOT NULL REFERENCES ".
		    $self->table_name($k)."(KEYREF)";
	} else {
		return "$name TEXT NOT NULL";
	}
}

sub optvalue
{
	my ($self, $k, $name) = @_;
	$name = "VALUE" if !defined $name;
	if (defined $k) {
		return "$name INTEGER REFERENCES ".
		    $self->table_name($k)."(KEYREF)";
	} else {
		return "$name TEXT";
	}
}

sub create_view
{
	my ($self, $table, @columns) = @_;

	unshift(@columns, PathColumn->new);
	my $t = $self->table_name($table);
	my @l = $self->map_columns('view', \@columns, $t, $self);
	my @j = $self->map_columns('join', \@columns, $t, $self);
	$self->new_object('VIEW', $table,
	    "AS\n    SELECT\n\t".join(",\n\t", @l). "\n    FROM ".
	    $t."\n".join(' ', @j));
}

sub make_table
{
	my ($self, $class, $constraint, @columns) = @_;

	unshift(@columns, PathColumn->new);
	for my $c (@columns) {
		$c->set_vartype($class) unless defined $c->{vartype};
	}
	my @l = $self->map_columns('normal', \@columns, $self);
	push(@l, $constraint) if defined $constraint;
	$self->new_table($class->table, @l);
	$self->create_view($class->table, @columns);
}

sub create_path_table
{
	my $self = shift;
	$self->new_table("Paths", "ID INTEGER PRIMARY KEY",
	    "FULLPKGPATH TEXT NOT NULL UNIQUE",
	    $self->pathref("PKGPATH"), $self->pathref("CANONICAL"));
	my $t = $self->table_name("Paths");
    	$self->new_object('VIEW', "Paths", 
		qq{AS 
    SELECT 
	$t.Id AS PathId, 
	$t.fullpkgpath AS fullpkgpath, 
	p1.fullpkgpath AS pkgpath, 
	p2.fullpkgpath AS canonical 
    FROM $t
	JOIN $t p1 
	    ON p1.id=$t.pkgpath 
	JOIN $t p2 
	    ON p2.id=$t.canonical});
	$self->{adjust} = $self->db->prepare("UPDATE ".
	    $self->table_name("Paths")." set canonical=? where id=?");
}

sub handle_column
{
	my ($self, $column) = @_;
	if ($column->{vartype}->need_in_ports_table) {
		push(@{$self->{varlist}}, $column->{name});
	}
	if ($column->{vartype}->want_in_ports_view) {
		push(@{$self->{columnlist}}, $column);
	}
}

sub create_view_info
{
	my $self = shift;
	my @columns = sort {$a->name cmp $b->name} @{$self->{columnlist}};
	$self->create_view("Ports", @columns);
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
	$self->insert('Paths', $key, $path, $newid);
	my $r = $self->last_id;
	$path_cache->{$key} = $r;
	$newid++;
	return $r;
}

sub add_path
{
	my ($self, $key, $alias) = @_;
	$self->{adjust}->execute($path_cache->{$alias}, $path_cache->{$key});
}

sub set_newkey
{
	my ($self, $key) = @_;

	$self->set($self->find_pathkey($key));
	$self->{current_path} = $key;
}

sub find_keyword_id
{
	my ($self, $key, $t) = @_;
	$self->{$t}{find_key1}->execute($key);
	my $a = $self->{$t}{find_key1}->fetchrow_arrayref;
	if (!defined $a) {
		$self->{$t}{find_key2}->execute($key);
		$self->insert_done;
		return $self->last_id;
	} else {
		return $a->[0];
	}
}

sub create_keyword_table
{
	my ($self, $t) = @_;
	my $name = $self->table_name($t);
	$self->new_table($t,
	    "KEYREF INTEGER PRIMARY KEY AUTOINCREMENT",
	    "VALUE TEXT NOT NULL UNIQUE");
	$self->{$t}{find_key1} = $self->prepare("SELECT KEYREF FROM $name WHERE VALUE=?");
	$self->{$t}{find_key2} = $self->prepare("INSERT INTO $name (VALUE) VALUES (?)");
}

sub write_log
{
}

1;
