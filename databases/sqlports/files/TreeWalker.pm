#! /usr/bin/perl
# $OpenBSD: TreeWalker.pm,v 1.16 2020/05/19 08:44:44 espie Exp $
#
# Copyright (c) 2006-2013 Marc Espie <espie@openbsd.org>
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

package TreeWalker;
use PkgPath;

sub new
{
	my ($class, $strict) = @_;
	return bless { strict => $strict }, $class;
}

sub subdirlist
{
	my ($self, $list) = @_;
	return join(' ', sort keys %$list);
}

sub dump_dirs
{
	my ($self, $subdirs) = @_;
	my ($pid, $fd);
	unless (defined($pid = open($fd, "-|"))) {
		die "can't fork : $!";
	}
	if ($pid) {
		$self->parse_dump($fd, $subdirs);
		close $fd || die $!;
	} else {
		my %myenv = ();
		my $portsdir = $ENV{PORTSDIR};
		if (defined $subdirs) {
			$myenv{'SUBDIR'} = $self->subdirlist($subdirs);
		} elsif (defined $ENV{SUBDIRLIST}) {
			$myenv{'SUBDIRLIST'} = $ENV{SUBDIRLIST};
		}
		$myenv{'NO_IGNORE'} = 'Yes';
		$myenv{PORTSDIR} = $portsdir;
		close STDERR;
		open STDERR, '>&STDOUT';
		chdir $portsdir;
		%ENV = %myenv;
		my @vars = ('LIBECXX=$${LIBECXX}', 
		    'COMPILER_LIBCXX=$${COMPILER_LIBCXX}');
		if (!$self->{strict}) {
		    push(@vars, "PORTSDIR_PATH=$portsdir");
		}
		exec {'make'} ("make", "dump-vars", @vars);
		die $!;
	}
}

sub parse_dump
{
	my ($self, $fd, $subdirs) = @_;
	my $h = {};
	my $seen = {};
	my $subdir;
	my $reset = sub {
		$h = PkgPath->handle_equivalences($self, $h, $subdirs);
		for my $pkgpath (sort values %$h) {
			$self->handle_path($pkgpath, $self->{equivs});
		}
		$h = {};
	};

	while (<$fd>) {
		chomp;
		# kill noise
		if (m/^\=\=\=\>\s*Exiting (.*) with an error$/) {
			my $dir = PkgPath->new($1);
			$dir->break("exiting with an error");
			$h->{$dir} = $dir;
			$h = {};
			next;
		}
		if (m/^\=\=\=\>\s*(.*)/) {
			$subdir = PkgPath->new($1);
			&$reset;
		} elsif (my ($pkgpath, $var, $arch, $value) =
		    m/^(.*?)\.([A-Z][A-Z_0-9]*)(?:\-([a-z0-9]+))?\=\s*(.*)\s*$/) {
			if ($value =~ m/^\"(.*)\"$/) {
				$value = $1;
			}
			my $o = PkgPath->compose($pkgpath, $subdir);
			$h->{$o} = $o;
			$self->handle_value($o, $var, $value, $arch);
			# Note we did it !
		} elsif (m/^\>\>\s*Broken dependency:\s*(.*?)\s*non existent/) {
			my $dir = PkgPath->new($1);
			$dir->break("broken dependency");
			$h->{$dir} = $dir;
			$h= {};
		}
	}
	&$reset;
}

sub handle_value
{
}

sub handle_path
{
}

sub dump_all_dirs
{
	my $self = shift;
	$self->dump_dirs(undef);

	my $i = 1;
	while (1) {
		my $subdirlist = {};
		for my $v (PkgPath->seen) {
			if (defined $v->{info}) {
				delete $v->{tried};
				if (defined $v->{want}) {
					delete $v->{want};
				}
				next;
			}
			if (defined $v->{tried}) {
			} elsif ($v->{want}) {
				$v->add_to_subdirlist($subdirlist);
				$v->{tried} = 1;
			}
		}
		last if (keys %$subdirlist) == 0;
		$i++;
		print "pass #$i\n";
		$self->dump_dirs($subdirlist);
	}
}

1;
