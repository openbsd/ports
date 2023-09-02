#! /usr/bin/perl
# $OpenBSD: TreeWalker.pm,v 1.20 2023/09/02 10:40:59 espie Exp $
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

use v5.36;
use warnings;

package TreeWalker;
use PkgPath;
use Baseline;

sub new($class, $strict, $startdir)
{
	return bless { strict => $strict, startdir => $startdir }, $class;
}

sub subdirlist($self, $list)
{
	return join(' ', sort keys %$list);
}

sub dump_dirs($self, $subdirs = undef)
{
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
		} elsif (defined $self->{startdir}) {
			$myenv{'STARTDIR'} = $self->{startdir};
		}
		$myenv{'NO_IGNORE'} = 'Yes';
		$myenv{PORTSDIR} = $portsdir;
		chdir $portsdir;
		%ENV = %myenv;
		my @params = ();
		if (!$self->{strict}) {
		    push(@params, "PORTSDIR_PATH=$portsdir");
		}
		Baseline->dump_vars(@params);
		die $!;
	}
}

sub parse_dump($self, $fd, $subdirs)
{
	my $h = {};
	my $seen = {};
	my $subdir;
	my $reset = sub() {
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
			&$reset();
		} elsif (my ($pkgpath, $var, $arch, $value) =
		    m/^(.*?)\.([A-Z][A-Za-z0-9_.]*)(?:\-([a-z0-9]+))?\=\s*(.*)\s*$/) {
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
	&$reset();
}

# $self->handle_value($o, $var, $value, $arch)
sub handle_value($, $, $, $, $)
{
}

# $self->handle_path($pkgpath, $equivs)
sub handle_path($, $, $)
{
}

sub dump_all_dirs($self)
{
	$self->dump_dirs;

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
		say "pass #$i";
		$self->dump_dirs($subdirlist);
	}
}

1;
