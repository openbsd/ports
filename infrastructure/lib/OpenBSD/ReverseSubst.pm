# $OpenBSD: ReverseSubst.pm,v 1.20 2019/05/18 18:53:48 espie Exp $
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

# prefix and suffix have a default meaning, and then a special meaning
# for some element classes
package OpenBSD::PackingElement;
sub unsubst_prefix
{
	my ($self, $string, $v, $k2) = @_;
	
	# if we start with a keyword, substitute after it
	if ($string =~ m/^\@/) {
		$string =~ s/^(\@\S+\s+)\Q$v\E/$1\$\{$k2\}/;
	} else {
		$string =~ s/^\Q$v\E/\$\{$k2\}/;
	}
	return $string;
}

sub unsubst_suffix
{
	my ($self, $string, $v, $k2) = @_;
	$string =~ s/\Q$v\E$/\$\{$k2\}/;
	return $string;
}

sub unsubst_version
{
	my ($self, $string, $v, $k2) = @_;
	# we have to loop over the string because negative assertions are
	# hard for non constant width strings
	my $done = '';
	# so remove each $v
	while ($string =~ s/(.*?)\Q$v\E//) {
		$done .= $1;
		# if it's in the middle of a larger version string, nope
		if ($done =~ m/\d$/ || $string =~ m/^\d/ ||
		# also do dewey numbers if $v is also one
		    ($v =~ m/\./ && 
		     ($done =~ m/\d\.$/ || $string =~ m/^\.\d/))) {
			$done .= $v;
		} else {
		# otherwise it's okay
			$done .= "\${$k2}";
		}
	}
	return $done.$string;
}

sub assert_valid_prefix
{
	my ($self, $subst, $string, $unsubst) = @_;
	return if !defined $unsubst;
	my $s2 = $subst->do($unsubst);
	$s2 =~ s,/+$,/,;
	die "Not a valid unsubst '$unsubst' vs '$string' vs '$s2'"
	    if $string !~ m/^\Q$s2\E/;
}

sub adjust
{
}

package OpenBSD::PackingElement::Action;
sub unsubst_prefix
{
	my ($self, $string, $v, $k2) = @_;
	
	$string =~ s/([\s:=])\Q$v\E/$1\$\{$k2\}/g;
	return $self->SUPER::unsubst_prefix($string, $v, $k2);
}

sub unsubst_suffix
{
	my ($self, $string, $v, $k2) = @_;
	$string =~ s/\Q$v\E([\s:=])/\$\{$k2\}$1/g;
	return $self->SUPER::unsubst_suffix($string, $v, $k2);
}


package OpenBSD::PackingElement::Manpage;
sub unsubst_suffix
{
	my ($self, $string, $v, $k2) = @_;
	$string =~ s/\Q$v\E(\.[^\.]+(\.gz|\.Z)?)$/\$\{$k2\}$1/;
	return $self->SUPER::unsubst_suffix($string, $v, $k2);
}

# allow version unsubst not affecting the manpage part
sub unsubst_version
{
	my ($self, $string, $v, $k2) = @_;
	if ($string =~ m/(.*)(\.[^\.]+(\.gz|\.Z)?)$/) {
		return $self->SUPER::unsubst_version($1, $v, $k2).$2;
	} else {
		return $self->SUPER::unsubst_version($string, $v, $k2);
	}
}

package OpenBSD::PackingElement::Lib;
sub assert_valid_prefix
{
	my ($self, $subst, $string, $unsubst) = @_;
	# libraries are already partially subst'd at this stage
	$self->SUPER::assert_valid_prefix($subst, $subst->do($string), $unsubst);
}

package OpenBSD::PackingElement::DirBase;

# make sure dirobjects show an explicit / at end, even added after the subst
sub adjust
{
	my ($self, $rstring) = @_;
	$$rstring =~ s,([^/])$,$1/,;
}

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
	    dont_backsubst => {},
	    # list of actual variables we care about, e.g., ignored stuff
	    # and whatnot
	    l => [],
	    # variables that expand to nothing have specific handling
	    lempty => [],
	    # variables that expand to something that looks like a version
	    # number won't substitute in the middle of numbers by default
	    isversion => {},
	    # under some cases, some variables are a priority
	    disregard_count => {},
	    # to be able to inject @comment  conditionally on some other
	    # variables
	    maybe_comment => $state->{maybe_comment},
	    }, $class;
    	for my $k (qw(dont_backsubst start_only suffix_only no_version
	    maybe_ignored)) {
		if (defined $state->{$k}) {
			for my $v (@{$state->{$k}}) {
				$o->{$k}{$v} = 1;
			}
		}
	}
	return $o;
}

sub remove_ignored_vars
{
	my ($self, $s) = @_;
	for my $v (keys %{$self->{maybe_ignored}}) {
		while ($s =~ s/\$\{\Q$v\E\}//) {}
	}
	$s =~ s,//,/,g;
	return $s;
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

	my $k2 = $k;
	$k2 =~ s/\^//;

	# XXX whatever is before FLAVORS is internal pkg_create options
	# such as flavor conditionals, so ignore them
	if ($k eq 'FLAVORS') {
		$self->{l} = [];
		$self->{count} = {};
		$self->{lempty} = [];
	}
	if ($ignore->{$k2} || $k2 =~ m/^LIB\S+_VERSION$/) {
	} else {
		# any variable that expands to @comment should never get
		# added where it wasn't already
		if ($v =~ m/^\@comment\s*$/) {
			$self->{dont_backsubst}{$k2} = 1;
		}
		if ($v eq '') {
			unshift(@{$self->{lempty}}, $k);
		} else {
			if ($v =~ m/^[\d\.]+$/ && !$self->{no_version}{$k2}) {
				$self->{isversion}{$k2} = 1;
			}
			unshift(@{$self->{l}}, $k);
		}
		# if two variables expand to the same thing, but one is
		# marked "don't backsubst", then we should backsubst the other
		$self->{count}{$v} //= 0;
		if (!$self->{dont_backsubst}{$k2}) {
			$self->{count}{$v}++;
		}
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
	if (!$self->{disregard_count}{$k} &&
	    $self->{count}{$self->value($k)} > 1) {
		return 1;
	} else {
		return $self->{dont_backsubst}{$k};
	}
}

# this can't delegate if reversesubst is to work properly
sub parse_option
{
	&OpenBSD::Subst::parse_option;
}


# after we got all variables, but before performing backsubst
sub finalize
{
	my $subst = shift;
	# sort non empty variables by reverse length
	$subst->{vars} = [sort 
	    {length($subst->value($b)) <=> length($subst->value($a))} 
	    @{$subst->{l}}];
	# remove the ambiguity of PREFIX vs LOCALBASE
	my $v = $subst->value('PREFIX');
	if ($v eq $subst->value('LOCALBASE') &&
	    $subst->{count}{$v} == 2) {
	    	$subst->{disregard_count}{PREFIX} = 1;
	}
}

# some unsubst variables have special cases
sub special_case
{
	my ($subst, $k, $v, $string) = @_;
	if ($k eq 'FULLPKGNAME' && $string =~ m,^share/doc/pkg-readmes/,) {
		return 1;
	}
	if ($k eq 'PKGSTEM' && $string =~ m,^share/doc/pkg-readmes/,) {
		return 1;
	}
	if ($k eq 'MACHINE_ARCH' && $string =~ m/\Q$v\E-openbsd/) {
		return 1;
	}
	return 0;
}

sub unsubst_non_empty_var
{
	my ($subst, $string, $k, $unsubst, $context) = @_;
	my $k2 = $k;
	$k2 =~ s/^\^//;
	my $v = $subst->value($k2);
	# don't add subst on THOSE variables
	# TODO ARCH, MACHINE_ARCH could happen, but only with word
	#  boundary contexts
	if ($subst->never_add($k2)) {
		unless (defined $unsubst &&
		    $unsubst =~ m/\$\{\Q$k2\E\}/) {
			return $string 
			    unless $subst->special_case($k2, $v, $string);
		}
	} else {
		# Heuristics: if the variable is already known AND was 
		# not used already, AND the value was in unsubst
		# then we don't add a new substitution
		return $string if defined $unsubst &&
		    $subst->{used}{$k2} &&
		    $unsubst !~ m/\$\{$k2\}/ &&
		    $unsubst =~ m/\Q$v\E/;
	}
		
	if ($k =~ m/^\^(.*)$/ || $subst->{start_only}{$k}) {
		$string = $context->unsubst_prefix($string, $v, $k2);
	} elsif ($subst->{suffix_only}{$k}) {
		$string = $context->unsubst_suffix($string, $v, $k2);
	} else {
		if ($subst->{isversion}{$k2}) {
			$string = $context->unsubst_version($string, $v, $k2);
		} else {
			$string =~ s/\Q$v\E/\$\{$k2\}/g;
		}
	}
	return $string;
}

sub do_empty_backsubst
{
	my ($subst, $string, $unsubst) = @_;
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

# create actual reverse substitution. $unsubst is the string already stored
# in an existing plist, to figure out ambiguous cases and empty substs
sub do_backsubst
{
	my ($subst, $string, $unsubst, $context) = @_;

	$context //= 'OpenBSD::PackingElement';
	# note that unsubst doesn't necessarily match the whole of subst
	# (in new elements, it can be stolen from approximate matches)
	# but it should always be a legitimate prefix of subst
	#$context->assert_valid_prefix($subst, $string, $unsubst);

	if (!defined $subst->{vars}) {
		$subst->finalize;
	}
	for my $k (@{$subst->{vars}}) {
		$string = $subst->unsubst_non_empty_var($string, $k, $unsubst,
		    $context);
	}

	# we can't do empty subst without an unsubst;
	if ($unsubst) {
		$string = $subst->do_empty_backsubst($string, $unsubst);
	}
	$context->adjust(\$string);

	return $string;
}

1;
