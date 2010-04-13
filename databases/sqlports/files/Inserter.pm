#! /usr/bin/perl
# $OpenBSD: Inserter.pm,v 1.1 2010/04/13 10:23:53 espie Exp $
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

package AbstractInserter;
# this is the object to use to put stuff into the db...
sub new
{
	my ($class, $db, $i) = @_;
	bless {
		db => $db, 
		transaction => 0, 
		threshold => $i, 
		vars => {},
		tables_created => {}
	}, $class;
}

sub make_table
{
	my ($self, $class, $constraint, @columns) = @_;

	return if defined $self->{tables_created}->{$class->table};

	unshift(@columns, PathColumn->new);
	for my $c (@columns) {
		$c->set_class($class) unless defined $c->{class};
	}
	my @l = map {$_->render($self)} @columns;
	push(@l, $constraint) if defined $constraint;
	$self->new_table($class->table, @l);
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
	if ($self->{transaction}++ % $self->{threshold} == 0) {
		$self->db->commit;
	}
}

sub new_table
{
	my ($self, $name, @cols) = @_;

	return if defined $self->{tables_created}->{$name};

	$self->db->do("DROP TABLE IF EXISTS $name");
	print "CREATE TABLE $name (".join(', ', @cols).")\n" if $main::opt_v;
	$self->db->do("CREATE TABLE $name (".join(', ', @cols).")");
	$self->{tables_created}->{$name} = 1;
}

sub prepare
{
	my ($self, $s) = @_;
	return $self->db->prepare($s);
}

sub prepare_inserter
{
	my ($ins, $table, @cols) = @_;
	$ins->{insert}->{$table} = $ins->prepare(
	    "INSERT OR REPLACE INTO $table (".
	    join(', ', @cols).
	    ") VALUES (". 
	    join(', ', map {'?'} @cols).")");
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
		push(@values, $self->{vars}->{$i});
	}
	$self->insert('Ports', @values);
	$self->{vars} = {};
}

sub add_to_port
{
	my ($self, $var, $value) = @_;
	$self->{vars}->{$var} = $value;
}

sub create_tables
{
	my ($self, $vars) = @_;

	$self->db->commit;
	my @columns = sort {$a->name cmp $b->name} @{$self->{columnlist}};
	unshift(@columns, PathColumn->new);
	my @l = map {$_->render($self)} @columns;
	$self->new_table("Ports", @l, "UNIQUE(FULLPKGPATH)");
	$self->prepare_normal_inserter('Ports', @{$self->{varlist}});
	$self->prepare_normal_inserter('Paths', 'PKGPATH');
}

sub ref
{
	return shift->{ref};
}

sub insert
{
	my $self = shift;
	my $table = shift;
	$self->{insert}->{$table}->execute(@_);
	$self->insert_done;
}

package CompactInserter;
our @ISA=(qw(AbstractInserter));

our $c = {
	Library => 0,
	Run => 1,
	Build => 2,
	Regress => 3
};

sub convert_depends
{
	my ($self, $value) = @_;
	return $c->{$value};
}


sub pathref
{
	my ($self, $name) = @_;
	$name = "FULLPKGPATH" if !defined $name;
	return "$name INTEGER NOT NULL REFERENCES Paths(ID)";
}

sub value
{
	my ($self, $k, $name) = @_;
	$name = "VALUE" if !defined $name;
	if (defined $k) {
		return "$name INTEGER NOT NULL REFERENCES $k(KEYREF)";
	} else {
		return "$name TEXT NOT NULL";
	}
}

sub optvalue
{
	my ($self, $k, $name) = @_;
	$name = "VALUE" if !defined $name;
	if (defined $k) {
		return "$name INTEGER REFERENCES $k(KEYREF)";
	} else {
		return "$name TEXT";
	}
}

sub create_view
{
	my ($self, $table, @columns) = @_;

	unshift(@columns, PathColumn->new);
	my $name = "_$table";
	my @l = map {$_->render_view($table) } @columns;
	my @j = map {$_->render_join($table)} @columns;
	my $v = "CREATE VIEW $name AS SELECT ".join(", ", @l). " FROM ".$table.' '.join(' ', @j);
	$self->db->do("DROP VIEW IF EXISTS $name");
	print "$v\n" if $main::opt_v;
	$self->db->do($v);
}

sub make_table
{
	my ($self, $class, $constraint, @columns) = @_;

	return if defined $self->{tables_created}->{$class->table};

	$self->SUPER::make_table($class, $constraint, @columns);
	$self->create_view($class->table, @columns);
}

sub create_tables
{
	my ($self, $vars) = @_;
	# create the various tables, dropping old versions

	$self->new_table("Paths", "ID INTEGER PRIMARY KEY", 
	    "FULLPKGPATH TEXT NOT NULL UNIQUE", "PKGPATH INTEGER");

	while (my ($name, $class) = each %$vars) {
		my $c = $class->column($name);
		if (!defined( $class->table )) {
			push(@{$self->{varlist}}, $name);
			push(@{$self->{columnlist}}, $c);
		}
		$class->create_table($self);
	}

	$self->SUPER::create_tables($vars);
	my @columns = sort {$a->name cmp $b->name} @{$self->{columnlist}};
	$self->create_view("Ports", @columns);
	$self->{find_pathkey} =  
	    $self->prepare("SELECT ID From Paths WHERE FULLPKGPATH=(?)");
}

sub find_pathkey
{
	my ($self, $key) = @_;

	if (!defined $key or $key eq '') {
		print STDERR "Empty pathkey\n";
		return 0;
	}

	# get pathkey for existing value
	$self->{find_pathkey}->execute($key);
	my $z = $self->{find_pathkey}->fetchrow_arrayref;
	if (!defined $z) {
		# if none, we create one
		my $path = $key;
		$path =~ s/\,.*//;
		if ($path ne $key) {
			$path = $self->find_pathkey($path);
		} else {
			$path = undef;
		}
		$self->insert('Paths', $key, $path);
		return $self->last_id;
	} else {
		return $z->[0];
	}
}

sub set_newkey
{
	my ($self, $key) = @_;

	$self->set($self->find_pathkey($key));
}

sub find_keyword_id
{
	my ($self, $key, $t) = @_;
	$self->{$t}->{find_key1}->execute($key);
	my $a = $self->{$t}->{find_key1}->fetchrow_arrayref;
	if (!defined $a) {
		$self->{$t}->{find_key2}->execute($key);
		$self->insert_done;
		return $self->last_id;
	} else {
		return $a->[0];
	}
}

sub create_keyword_table
{
	my ($self, $t) = @_;
	$self->new_table($t,
	    "KEYREF INTEGER PRIMARY KEY AUTOINCREMENT", 
	    "VALUE TEXT NOT NULL UNIQUE");
	$self->{$t}->{find_key1} = $self->prepare("SELECT KEYREF FROM $t WHERE VALUE=(?)");
	$self->{$t}->{find_key2} = $self->prepare("INSERT INTO $t (VALUE) VALUES (?)");
}

package NormalInserter;
our @ISA=(qw(AbstractInserter));

our $c = {
	Library => 'L',
	Run => 'R',
	Build => 'B',
	Regress => 'Regress'
};

sub convert_depends
{
	my ($self, $value) = @_;
	return $c->{$value};
}

sub create_tables
{
	my ($self, $vars) = @_;
	# create the various tables, dropping old versions

	$self->new_table("Paths", "FULLPKGPATH TEXT NOT NULL PRIMARY KEY", 
	    "PKGPATH TEXT NOT NULL");
	while (my ($name, $class) = each %$vars) {
		push(@{$self->{varlist}}, $name);
		push(@{$self->{columnlist}}, $class->column($name));
		$class->create_table($self);
	}

	$self->SUPER::create_tables($vars);

}

sub pathref
{
	my ($self, $name) = @_;
	$name = "FULLPKGPATH" if !defined $name;
	return "$name TEXT NOT NULL";
}

sub value
{
	my ($self, $k, $name) = @_;
	$name = "VALUE" if !defined $name;
	return "$name TEXT NOT NULL";
}

sub optvalue
{
	my ($self, $k, $name) = @_;
	$name = "VALUE" if !defined $name;
	return "$name TEXT";
}

sub key
{
	return "TEXT NOT NULL";
}

sub optkey
{
	return "TEXT";
}

sub set_newkey
{
	my ($self, $key) = @_;

	my $path = $key;
	$path =~ s/\,.*//;
	$self->insert('Paths', $key, $path);
	$self->set($key);
}

sub find_pathkey
{
	my ($self, $key) = @_;

	return $key;
}

# no keyword for this dude
sub find_keyword_id
{
	my ($self, $key, $t) = @_;
	return $key;
}

sub create_keyword_table
{
}

1;
