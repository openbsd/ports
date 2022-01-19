# $OpenBSD: BasePlistReader.pm,v 1.1 2022/01/19 14:46:00 espie Exp $
# Copyright (c) 2019 Marc Espie <espie@openbsd.org>
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

# common code for update-plist and build-debug-info
# specifically:
# - scanning all packing-lists
# - handling debug names mogrification

use OpenBSD::PkgCreate;
package OpenBSD::BasePlistReader;
our @ISA = qw(OpenBSD::PkgCreate);

sub new
{
	my $class = shift;
	return bless { olist => OpenBSD::PackingList->new }, $class;
}

sub olist
{
	my $self = shift;
	return $self->{olist};
}

sub process_next_subpackage
{
	my ($class, $o) = @_;

	my $r = $class->new;

	my $s = $class->stateclass->new($class->command_name, $o->{state});
	$r->{state} = $s;
	$s->handle_options;
	$s->{opt}{q} = 1;
	$r->{base_plists} = $s->{contents};
	my $pkg = shift @ARGV;

	$r->olist->set_pkgname($pkg);
	$o->{state}->say("Reading existing plist for #1", $pkg) 
	    unless $o->{state}{quiet};
	$r->read_all_fragments($s, $r->olist);
	push(@{$o->{lists}}, $r);
	return $r;
}

sub parse_args
{
	my ($class, $o) = @_;
	# this handles update-plist options proper, finished with --
	$o->{state}->handle_options;
	if (@ARGV == 0) {
		$o->{state}->usage;
	}
	# we read all plists using the exact same code as pkg_create
	# e.g., ARGV is all PKG_ARGS*  parameters concatenated together:
	# options1 pkgname1 options2 pkgname2 ...
	while (@ARGV > 0) {
		$class->process_next_subpackage($o);
	}
}

# specialized state
package OpenBSD::BasePlistReader::State;
our @ISA = qw(OpenBSD::PkgCreate::State);
# mostly make sure we have a progressmeter
sub init
{
	my ($self, $realstate) = @_;
	$self->{subst} = $self->substclass->new($realstate);
	$self->{progressmeter} = $realstate->{progressmeter};
	$self->{bad} = 0;
	$self->{repo} = $realstate->{repo};
	$self->{quiet} = $realstate->{quiet};
	$self->{cache_dir} = $realstate->{cache_dir};
}

# if we're in quiet mode, get rid of status messages
sub set_status
{
	my $self = shift;
	return if $self->{quiet};
	$self->SUPER::set_status(@_);
}

sub end_status
{
	my $self = shift;
	return if $self->{quiet};
	$self->SUPER::end_status(@_);
}

1;
