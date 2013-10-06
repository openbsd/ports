# ex:ts=8 sw=4:
# $OpenBSD: Rebuild.pm,v 1.2 2013/10/06 13:33:38 espie Exp $
#
# Copyright (c) 2010-2013 Marc Espie <espie@openbsd.org>
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
package DPB::PortBuilder::Rebuild;
our @ISA = qw(DPB::PortBuilder);

sub init
{
	my $self = shift;
	$self->SUPER::init;

	require OpenBSD::PackageRepository;
	$self->{repository} = OpenBSD::PackageRepository->new(
	    "file:/$self->{fullrepo}");
	# this is just a dummy core, for running quick pipes
	$self->{core} = DPB::Core->new_noreg('localhost');
}

my $uptodate = {};

sub equal_signatures
{
	my ($self, $core, $v) = @_;
	my $p = $self->{repository}->find($v->fullpkgname.".tgz");
	my $plist = $p->plist(\&OpenBSD::PackingList::UpdateInfoOnly);
	my $pkgsig = $plist->signature->string;
	# and the port
	my $portsig = $self->{state}->grabber->grab_signature($core,
	    $v->fullpkgpath);
	return $portsig eq $pkgsig;
}

sub check_signature
{
	my ($self, $core, $v) = @_;
	my $okay = 1;
	for my $w ($v->build_path_list) {
		my $name = $w->fullpkgname;
		if (!-f "$self->{fullrepo}/$name.tgz") {
			print "$name: absent\n";
			$okay = 0;
			next;
		}
		next if $uptodate->{$name};
		if ($self->equal_signatures($core, $w)) {
			$uptodate->{$name} = 1;
			print "$name: uptodate\n";
			next;
		}
		print "$name: rebuild\n";
		$self->{state}->grabber->clean_packages($core,
		    $w->fullpkgpath);
	    	$okay = 0;
	}
	return $okay;
}

# this is due to the fact check_signature is within a child
sub register_package
{
	my ($self, $v) = @_;
	$uptodate->{$v->fullpkgname} = 1;
}

sub end_check
{
	my ($self, $v) = @_;
	return 0 unless $self->SUPER::end_check($v);
	$self->register_package($v);
	return 1;
}

sub check
{
	my ($self, $v) = @_;
	return 0 unless $self->SUPER::check($v);
	return $uptodate->{$v->fullpkgname};
}

sub register_updates
{
	my ($self, $v) = @_;
	for my $w ($v->build_path_list) {
		$self->end_check($w);
	}
}

sub checks_rebuild
{
	my ($self, $v) = @_;
	return 1 unless $uptodate->{$v->fullpkgname};
}

1;
