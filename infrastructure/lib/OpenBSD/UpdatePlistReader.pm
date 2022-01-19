#! /usr/bin/perl
# $OpenBSD: UpdatePlistReader.pm,v 1.1 2022/01/19 14:38:48 espie Exp $
# Copyright (c) 2018-2022 Marc Espie <espie@openbsd.org>
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

use OpenBSD::CommonPlist;
use OpenBSD::ReverseSubst;

# UpdatePlistReader is "just" a specialized version of PkgCreate algorithm
# that does mimic what PkgCreate reader does with a few specialized methods
package OpenBSD::UpdatePlistReader;
our @ISA = qw(OpenBSD::BasePlistReader);

use File::Path qw(make_path);
use File::Basename;

sub new
{
	my $class = shift;
	my $o = $class->SUPER::new;
	$o->{nlist} = OpenBSD::PackingList->new;
	return $o;
}

sub stateclass
{
	return 'OpenBSD::UpdatePlistReader::State';
}

sub command_name
{
	return 'update-plist';
}

sub nlist
{
	my $self = shift;
	return $self->{nlist};
}

sub process_next_subpackage
{
	my ($class, $o) = @_;
	my $r = $class->SUPER::process_next_subpackage($o);

	$r->nlist->set_pkgname($r->olist->pkgname);
	# add the cwd to new list as well!!!
	OpenBSD::PackingElement::Cwd->add($r->nlist, $r->{state}{prefix});
	$r->add_extra_info($r->olist, $r->{state});
}

sub strip_prefix
{
	my ($self, $path) = @_;
	$path =~ s,^\Q$self->{state}{prefix}\E/,,;
	return $path;
}

sub subst
{
	my $self = shift;
	return $self->{state}{subst};
}

# this is where the magic happens, with the specialized methods
# e is the plist element
# self is the reader (with pkgname et al)
# file is the fileclass where this comes from
# unsubst is the full name before substitution
sub annotate
{
	my ($self, $e, $s, $file) = @_;
	$e->{file} = $file->name;
	$e->{comesfrom} = $self;

	return unless defined $s;
	chomp $s;
	$e->{unsubst} = $s;

	return unless $s =~ m/\$/o;	# optimization

	# so we redo what subst does, but we keep track of it!
	my $subst = $self->{state}{subst};
	while ( my $k = ($s =~ m/\$\{([A-Za-z_][^\}]*)\}/o)[0] ) {
		my $v = $subst->value($k);
		$subst->{used}{$k} = 1;
		unless ( defined $v ) { $v = "\$\\\{$k\}"; }
		$s =~ s/\$\{\Q$k\E\}/$v/g;
	}
}

# and more magic, we want to record fragments as pseudo-objects
sub record_fragment
{
	my ($self, $plist, $not, $name, $file) = @_;
	my $f;
	if ($not) {
		$f = OpenBSD::PackingElement::NoFragment->add($plist, $name);
	} else {
		$f = OpenBSD::PackingElement::Fragment->add($plist, $name);
	}
	$self->annotate($f, undef, $file);
}


# okay, so that plist doesn't exist, wouhou, I don't care,
# since I'm not pkg_create
sub cant_read_fragment
{
}

sub missing_fragments
{
}

# XXX we should go to the tree for self, always. Don't grab bad data from
# old packages or cache.  At the very least invalidate if the version number
# changes!
sub get_plist
{
	my ($self, $pkgpath, $portsdir) = @_;
	my $fullpath;
	if (defined $self->{state}{cache_dir}) {
		$fullpath = $pkgpath;
		# flatten the pkgpath proper
		$fullpath =~ s,/,.,g;
		$fullpath = "$self->{state}{cache_dir}/$fullpath";
		if (-f $fullpath) {
			return OpenBSD::PackingList->fromfile($fullpath,
			    \&OpenBSD::PackingList::UpdatePlistOnly);
		} else {
			make_path(dirname($fullpath));
		}
	}
	my $plist = OpenBSD::Dependencies::CreateSolver->ask_tree(
	    $self->{state}, $pkgpath, $portsdir,
	    \&OpenBSD::PackingList::UpdatePlistOnly,
	    "print-plist-with-depends", "wantlib_args=no-wantlib-args");
	if (defined $fullpath) {
		$plist->tofile($fullpath);
	}
	return $plist;
}

sub figure_out_dependencies
{
	my ($self, $cache, $portsdir) = @_;
	my @solve = ();
	my %solve = ();
	my $register = $self->{directory_register};
	# compute initial list of dependencies
	for my $full (keys %{$self->{state}{dependencies}}) {
		next unless $full =~ m/^(.*?):/;
		push(@solve, $1);
		$solve{$1} = 1;
	}

	# and do the walk
	while (@solve != 0) {
		# optimization: don't try if we don't have directories left
		return if !%$register;
		my $pkgpath = pop @solve;
		if (!defined $cache->{$pkgpath}) {
			$cache->{$pkgpath} = {};
			$self->{state}->say("Stripping directories from #1",
			    $pkgpath) unless $self->{state}{quiet};
			my $plist = $self->get_plist($pkgpath, $portsdir);
			$plist->process_dependency($cache->{$pkgpath});
		}
		for my $dir (keys %{$cache->{$pkgpath}{dir}}) {
			if (defined $register->{$dir}) {
				$register->{$dir}{DONT} = 1;
				$self->{stripped}{$dir} = $pkgpath;
				delete $register->{$dir};
			}
		}
		for my $k (keys %{$cache->{$pkgpath}{pkgpath}}) {
			push(@solve, $k) unless defined $solve{$k};
			$solve{$k} = 1;
		}
	}
}

# specialized state
package OpenBSD::UpdatePlistReader::State;
our @ISA = qw(OpenBSD::BasePlistReader::State);

# our subst will record everything
sub substclass
{
	return 'OpenBSD::ReverseSubst';
}

# Most of the heavy lifting is done by visitor methods, as always


1;
