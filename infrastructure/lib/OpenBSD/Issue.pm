# $OpenBSD: Issue.pm,v 1.4 2011/12/03 09:29:41 espie Exp $
# Copyright (c) 2004-2010 Marc Espie <espie@openbsd.org>
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

# part of check-lib-depends
# Issue: intermediate objects that record problems with libraries
package OpenBSD::Issue;
sub new
{
	my ($class, $lib, $binary, @packages) = @_;
	bless { lib => $lib, binary => $binary, packages => \@packages }, 
		$class;
}

sub stringize
{
	my $self = shift;
	my $string = $self->{lib};
	if (@{$self->{packages}} > 0) {
		$string.=" from ".join(',', @{$self->{packages}});
	}
	return $string." ($self->{binary})";
}

sub do_record_wantlib
{
	my ($self, $h) = @_;
	my $want = $self->{lib};
	$want =~ s/\.\d+$//;
	$h->{$want} = 1;
}

sub record_wantlib
{
}

sub not_reachable
{
	return 0;
}

sub print
{
	my $self = shift;
	print $self->message, "\n";
}
package OpenBSD::Issue::SystemLib;
our @ISA = qw(OpenBSD::Issue);

sub message
{
	my $self = shift;
	return "Missing: ". $self->stringize. " (system lib)";
}

sub record_wantlib
{
	&OpenBSD::Issue::do_record_wantlib;
}
package OpenBSD::Issue::DirectDependency;
our @ISA = qw(OpenBSD::Issue);
sub message
{
	my $self = shift;
	return "Missing: ". $self->stringize;
}

sub record_wantlib
{
	&OpenBSD::Issue::do_record_wantlib;
}

package OpenBSD::Issue::IndirectDependency;
our @ISA = qw(OpenBSD::Issue);
sub message
{
	my $self = shift;
	return "Missing: ". $self->stringize;
}

sub record_wantlib
{
	&OpenBSD::Issue::do_record_wantlib;
}

package OpenBSD::Issue::NotReachable;
our @ISA = qw(OpenBSD::Issue);
sub message
{
	my $self = shift;
	return "Missing lib: ". $self->stringize. " (NOT REACHABLE)";
}

sub not_reachable
{
	my $self = shift;
	return "Bogus WANTLIB: ". $self->stringize. " (NOT REACHABLE)";
}

1;
