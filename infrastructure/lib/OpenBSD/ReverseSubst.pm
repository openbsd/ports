# $OpenBSD: ReverseSubst.pm,v 1.7 2018/05/08 13:23:51 espie Exp $
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

use strict;
use warnings;

package Forwarder;
# perfect forwarding
sub AUTOLOAD
{
	our $AUTOLOAD;
	my $fullsub = $AUTOLOAD;
	(my $sub = $fullsub) =~ s/.*:://o;
	return if $sub eq 'DESTROY'; # special case
	no strict "refs";
	*$fullsub = sub {
		my $self = shift;
		$self->{delegate}->$sub(@_);
	};
	goto &$fullsub;
}

# this is the code that does all the heavy lifting finding variables
# to put into plists

package OpenBSD::ReverseSubst;
our @ISA = qw(Forwarder);

# this hijacks the "normal" subst code, but it does gather some useful
# statistics
sub new
{
	my ($class, $state) = @_;
	my $o = bless {delegate => OpenBSD::Subst->new, 
	    # count the number of times we see each value. More than once,
	    # hard to figure out WHICH one to backsubst
	    count => {}, 
	    # record that a variable is actually used. Then if we see the
	    # string and no backsubst, it's probably intentional
	    used => {}, 
	    # special variables we won't add in substitutions
	    special => {
		FULLPKGNAME => 1,
		FULLPKGPATH => 1,
		MACHINE_ARCH => 1,
		ARCH => 1,
		BASE_PKGPATH => 1,
		LOCALSTATEDIR => 1,
	    },
	    # list of actual variables we care about, e.g., ignored stuff
	    # and whatnot
	    l => [],
	    # variables that expand to nothing have specific handling
	    lempty => [],
	    }, $class;
	if (defined $state->{dont_backsubst}) {
		for my $v (@{$state->{dont_backsubst}}) {
			$o->{special}{$v} = 1;
		}
	}
	if (defined $state->{start_only}) {
		for my $v (@{$state->{start_only}}) {
			$o->{start_only}{$v} = 1;
		}
	}
	if (defined $state->{suffix_only}) {
		for my $v (@{$state->{suffix_only}}) {
			$o->{suffix_only}{$v} = 1;
		}
	}
	return $o;
}

# those are actually just passed thru to pkg_create for special
# purposes, we don't need to consider them at all
my $ignore = {
	COMMENT => 1,
	MAINTAINER => 1,
	PERMIT_PACKAGE_CDROM => 1,
	PERMIT_PACKAGE_FTP => 1,
	HOMEPAGE => 1,
};

sub add
{
	my ($self, $k, $v) = @_;
	# XXX whatever is before FLAVORS is internal pkg_create options
	# such as flavor conditionals, so ignore them
	if ($k eq 'FLAVORS') {
		$self->{l} = [];
		$self->{count} = {};
		$self->{lempty} = [];
	}
	if ($ignore->{$k} || $k =~ m/^LIB\S+_VERSION$/) {
	} else {
		# any variable that expands to @comment should never get
		# added where it wasn't already
		if ($v =~ m/^\@comment\s*$/) {
			my $k2 = $k;
			$k2 =~ s/\^//;
			$self->{special}{$k2} = 1;
		}
		if ($v eq '') {
			unshift(@{$self->{lempty}}, $k);
		} else {
			unshift(@{$self->{l}}, $k);
		}
		$self->{count}{$v}++;
	}
	$self->{delegate}->add($k, $v);
}

sub value
{
	my ($self, $k) = @_;
	$k =~ s/\^//;
	return $self->{delegate}->value($k);
}

# heuristics to figure out which substitutions we should never add:
# some are "hard-coded", others are just ambiguous
sub never_add
{
	my ($self, $k) = @_;
	if ($self->{count}{$self->value($k)} > 1) {
		return 1;
	} else {
		return $self->{special}{$k};
	}
}

# this can't delegate if reversesubst is to work properly
sub parse_option
{
	&OpenBSD::Subst::parse_option;
}

sub unsubst_non_empty_var
{
	my ($subst, $string, $k, $unsubst) = @_;
	my $k2 = $k;
	$k2 =~ s/^\^//;
	# don't add subst on THOSE variables
	# TODO ARCH, MACHINE_ARCH could happen, but only with word
	#  boundary contexts
	if ($subst->never_add($k2)) {
		unless (defined $unsubst &&
		    $unsubst =~ m/\$\{\Q$k2\E\}/) {
			# add a magical location for FULLPKGNAME
			return $string unless $k2 eq 'FULLPKGNAME' &&
			    $string =~ m,^share/doc/pkg-readmes/,;
		}
	} else {
		# Heuristics: if the variable is already known AND was 
		# not used already, then we don't try to use it
		# XXX should we look for the value in $unsubst ?
		return $string if defined $unsubst &&
		    $subst->{used}{$k2} &&
		    $unsubst !~ m/\$\{$k2\}/;
	}
		
	my $v = $subst->value($k2);
	if ($k =~ m/^\^(.*)$/ || $subst->{start_only}{$k}) {
		$string =~ s/^\Q$v\E/\$\{$k2\}/;
		$string =~ s/([\s:=])\Q$v\E/$1\$\{$k2\}/g;
	} elsif ($subst->{suffix_only}{$k}) {
		$string =~ s/\Q$v\E$/\$\{$k2\}/;
		$string =~ s/\Q$v\E([\s:=])/\$\{$k2\}$1/g;
	} else {
		# TODO on the other hand, numeric and version-like
		# variables shouldn't substitute partial numbers
		$string =~ s/\Q$v\E/\$\{$k2\}/g;
	}
	return $string;
}

# create actual reverse substitution. $unsubst is the string already stored
# in an existing plist, to figure out ambiguous cases and empty substs
sub do_backsubst
{
	my ($subst, $string, $unsubst) = @_;

	# sort non empty variables by reverse length
	$subst->{vars} //= [sort 
	    {length($subst->value($b)) <=> length($subst->value($a))} 
	    @{$subst->{l}}];
	for my $k (@{$subst->{vars}}) {
		$string = $subst->unsubst_non_empty_var($string, $k, $unsubst);
	}

	# we can't do empty subst without an unsubst;
	return $string unless defined $unsubst;

	# this part will be done repeatedly
	my $old;
	do {
		$old = $string;
		for my $k (@{$subst->{lempty}}) {
			my $k2 = $k;
			$k2 =~ s/^\^//;
			if ($unsubst =~ m/^(.*)\$\{$k2\}/) {
				my $prefix = $1;
				# XXX avoid infinite loop
				next if $string =~ m/\Q$prefix\E\$\{\Q$k2\E\}/;
				$string =~ s/^\Q$prefix\E/$prefix\$\{$k2\}/;
			}
			# TODO we could also try based on suffixes ?
		}
	} while ($old ne $string);
	return $string;
}

1;
