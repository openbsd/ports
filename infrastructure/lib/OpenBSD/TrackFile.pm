#! /usr/bin/perl
# $OpenBSD: TrackFile.pm,v 1.2 2022/01/21 09:38:48 espie Exp $
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

# This is a set of utility classes for update-plist

# so in order to put objects in the right plist part, we need to track
# destination file: objects are annotated with an "OpenBSD::TrackedFile"
# which consists ultimately of all the items that are going to end up in
# that specific file

package OpenBSD::TrackedFile;
# the actual OpenBSD::TrackedFile(s) will be created by the next (factory) class
sub new
{
	my ($class, $name, $ext) = @_;
	bless {name => $name, 	# the actual filename proper
		ext => $ext, 	# extension like -new since update-plist
				# creates new files for people to diff
		items => [], 	# list of items for 1st pass
		items2 => []	# actual list of items that get written
	    }, $class;
}

sub add
{
	my ($self, $item) = @_;
	push(@{$self->{items}}, $item);
}

# this is the internal method that gets called through prepare_restate
sub add2
{
	my ($self, $item, $p) = @_;

	if ($item->NoDuplicateNames) {
		my $s = $p->subst->remove_ignored_vars($item->{prepared});
		my $s2 = $p->subst->do($s);
		if (defined (my $k = $item->keyword)) {
			$s2 =~ s/^\@\Q$k\E\s//;
		}
		$p->{stash}{$s2}++;

		my $comment = $p->subst->{maybe_comment};

		if ($s ne $item->{prepared} &&
			$item->{prepared} !~ m/^\Q$comment\E/) {
			$item->{candidate_for_comment} = $s2;
		}
	}
	push(@{$self->{items2}}, $item);
}

sub fh
{
	my $self = shift;
	if (!defined $self->{fh}) {
		my $full = $self->name.$self->{ext};
		open($self->{fh}, '>', $full) or die "Can't open $full: $!";
	}
	return $self->{fh};
}

sub name
{
	my $self = shift;
	return $self->{name};
}

# iterating through the list for preparing
sub next_item
{
	my $self = shift;
	if (@{$self->{items}} != 0) {
		return shift @{$self->{items}};
	} else {
		return undef;
	}
}

# iterating through the list for writing
sub next_item2
{
	my $self = shift;
	if (@{$self->{items2}} != 0) {
		return shift @{$self->{items2}};
	} else {
		return undef;
	}
}

# this is the factory class that is responsible for (physically) dispatching
# items into the right plist fragment
package OpenBSD::TrackFile;

# the base factory creates a "default" destination
sub new
{
	my ($class, $default, $ext) = @_;
	my $self = bless {ext => $ext}, $class;
	$self->{known}{$default} = 
	$self->{default} = 
		OpenBSD::TrackedFile->new($default, $self->{ext});
	return $self;
}

# each new fragment creates a new OpenBSD::TrackedFile 
# (unless it already exists)
sub file
{
	my ($self, $name) = @_;
	$self->{known}{$name} //= 
	    OpenBSD::TrackedFile->new($name, $self->{ext});
	return $self->{known}{$name};
}

sub default
{
	my $self = shift;
	return $self->{default};
}

# and this is the actual method that writes every object: responsible for
# handling each and every file, and also passing offstate changes (@mode and
# the likes) to prepare_restate to avoid too much duplication
sub write_all
{
	my ($self, $p) = @_;

	# we mimic the way pkg_create writes files

	# first pass is just going to scan through the list and queue actual
	# stuff we want to write
	for my $i (@{$p->{base_plists}}) {
		$p->{restate} = {};

		my @stack = ();
		push(@stack, $self->file($i));


		while (my $file = pop @stack) {
			while (my $j = $file->next_item) {
				my $filename = $j->prepare_restate($file, $p);
				if (defined $filename) {
					push(@stack, $file);
					$file = $self->file($filename);
				}
			}
		}
	}

	# second pass writes out the resulting "restated" data
	for my $i (@{$p->{base_plists}}) {
		$p->{restate} = {};

		my @stack = ();
		push(@stack, $self->file($i));


		while (my $file = pop @stack) {
			while (my $j = $file->next_item2) {
				my $filename = $j->write_restate($file, $p);
				if (defined $filename) {
					push(@stack, $file);
					$file = $self->file($filename);
				}
			}
			close($file->fh);
		}
	}
}

package OpenBSD::PackingElement;
# the actual methods that keep state (@mode/@owner/@group) and do
# backsubstitution and writing.
# part of the state is the current fragment, so it should return the
# new filename when it changes
# Note that this is not called as a visitor, but directly by the FileTracker
# on the lists it builds
# The methods are split into a "restate" and a "backsubst" level so that
# subclasses may concentrate on that part of the job


# this is the actual writer. 
sub write_restate
{
	my ($o, $file, $p) = @_;
	$o->write_backsubst($file, $p);
	return undef;
}

# this just prepares data for the second pass
sub prepare_restate
{
	my ($o, $file, $p) = @_;
	$o->prepare_backsubst($file, $p);
	return undef;
}

sub prepare_backsubst
{
	my ($o, $file, $p) = @_;
	my $s = $p->subst->do_backsubst($o->fullstring, $o->unsubst, $o);
	$o->{prepared} = $s;
	$file->add2($o, $p);
}

# default backsubstitution and writing. 
sub write_backsubst
{
	my ($o, $file, $p) = @_;

	if (defined (my $s = $o->{candidate_for_comment})) {
		if ($p->{stash}{$s} > 1) {
			$o->{prepared} = 
			    $p->subst->{maybe_comment}.$o->{prepared};
		}
	}
	print {$file->fh} $o->{prepared}, "\n";
}

package OpenBSD::PackingElement::CVSTag;
# we will never do backsubst on CVSTags
sub prepare_backsubst
{
	my ($o, $file, $p) = @_;
	$o->{prepared} = $o->fullstring;
	$file->add2($o, $p);
}

package OpenBSD::PackingElement::SpecialFile;
sub write_restate
{
}

sub prepare_restate
{
}

package OpenBSD::PackingElement::Fragment;
# while writing, change file accordingly
sub write_restate
{
	my ($self, $file, $p) = @_;
	# don't do backsubst on fragments, pkg_create does not!
	$self->write($file->fh);
	my $base = $file->name;
	my $frag = $self->frag;
	$base =~ s/PFRAG\./PFRAG.$frag-/ or
	    $base =~ s/PLIST/PFRAG.$frag/;
	return $base if $p->{tracker}{known}{$base};
	return undef;
}

sub prepare_restate
{
	my ($self, $file, $p) = @_;
	# don't do backsubst on fragments, pkg_create does not!
	$file->add2($self, $p);
	my $base = $file->name;
	my $frag = $self->frag;
	$base =~ s/PFRAG\./PFRAG.$frag-/ or
	    $base =~ s/PLIST/PFRAG.$frag/;
	return $base if $p->{tracker}{known}{$base};
	return undef;
}

package OpenBSD::PackingElement::FileObject;
sub write_restate
{
	my ($self, $f, $p) = @_;
	
	# TODO there should be some more code matching the mode to the original
	# file that was copied
	for my $k (qw(mode owner group)) {
		my $s = "\@$k";
		if (defined $self->{$k}) {
			if (defined $p->{restate}{$k}) {
				if ($p->{restate}{$k} eq $self->{$k}) {
					next;
				}
			}
			if ($k eq 'mode') {
				$s .= " ".$self->{$k};
			} else {
				$s .= " ".
				    $p->subst->do_backsubst($self->{$k}, undef);
			}
		} else {
			if (!defined $p->{restate}{$k}) {
				next;
			}
		}
		$p->{restate}{$k} = $self->{$k};
		print {$f->fh} $s, "\n";
	}
	$self->write_backsubst($f, $p);
	return undef;
}

package OpenBSD::PackingElement::FileBase;
sub write_backsubst
{
	my ($self, $f, $p) = @_;
	if (defined $self->{nochecksum}) {
		print {$f->fh} "\@comment no checksum\n";
	}
	if (defined $self->{nodebug}) {
		print {$f->fh} "\@comment no debug\n";
	}
	$self->SUPER::write_backsubst($f, $p);
}

package OpenBSD::PackingElement::Lib;
sub prepare_backsubst
{
	my ($self, $f, $p) = @_;
	if ($self->name =~ m,^(.*?)lib([^\/]+)\.so\.(\d+\.\d+)$,) {
		my ($path, $name, $version) = ($1, $2, $3);
		my $k = "LIB${name}_VERSION";
		# XXX redo backsubst on the variable name
		my $s = $p->subst->do_backsubst(
		    "\@lib ${path}lib$name.so.\$\{$k\}", $self->unsubst, $self);
		$self->check_lib_version($version, $name, 
			$p->subst->value($k));
		$self->{prepared} = $s;
		$f->add2($self, $p);
	} else {
		$self->SUPER::write_backsubst($f, $p);
	}
}


1;
