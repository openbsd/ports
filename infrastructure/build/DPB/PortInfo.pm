# ex:ts=8 sw=4:
# $OpenBSD: PortInfo.pm,v 1.1 2010/02/24 11:33:31 espie Exp $
#
# Copyright (c) 2010 Marc Espie <espie@openbsd.org>
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
package AddInfo;

sub add
{
	my ($class, $var, $o, $value) = @_;
	return if $value =~ m/^[\s\-]*$/;
	$o->{$var} = $class->new($value, $o);
}

sub new
{
	my ($class, $value) = @_;
	bless \$value, $class;
}

sub string
{
	my $self = shift;
	return $$self;
}

sub quickie
{
	return 0;
}

package AddInfoShow;
our @ISA = qw(AddInfo);
sub quickie
{
	return 1;
}

package AddList;
our @ISA = qw(AddInfo);

sub make_list
{
	my ($class, $value) = @_;
	$value =~ s/^\s+//;
	$value =~ s/\s+$//;
	return split(/\s+/, $value);
}

sub new
{
	my ($class, $value) = @_;
	my %values = map {($_, 1)} $class->make_list($value);
	bless \%values, $class;
}

sub string
{
	my $self = shift;
	return join(', ', keys %$self);
}

package AddDepends;
our @ISA = qw(AddList);
sub new
{
	my ($class, $value, $self) = @_;
	my $r = {};
	for my $_ ($class->make_list($value)) {
		next if m/^$/;
		s/^.*?\:.*?\://;
		if (s/\:(?:patch|build|configure)$//) {
			Extra->add('EXTRA', $self, $_);
		} else {
			s/\:$//;
			my $info = DPB::PkgPath->new($_);
			$r->{$info} = $info;
		}
	}
	bless $r, $class;
}

sub string
{
	my $self = shift;
	return '['.join(';', map {$_->fullpkgpath} (values %$self)).']';
}

sub quickie
{
	return 1;
}

package Extra;
our @ISA = qw(AddDepends);

sub add
{
	my ($class, $key, $self, $value) = @_;
	$self->{$key} //= bless {}, $class;
	my $info = DPB::PkgPath->new($value);
	$self->{$key}{$info} = $info;
	return $self;
}

package DPB::PortInfo;
my %adder = (
	FULLPKGNAME => "AddInfoShow",
	RUN_DEPENDS => "AddDepends",
	BUILD_DEPENDS => "AddDepends",
	LIB_DEPENDS => "AddDepends",
	SUBPACKAGE => "AddInfo",
	MULTI_PACKAGES => "AddList",
	EXTRA => "Extra",
	DEPENDS => "AddDepends",
	RDEPENDS => "AddDepends",
	IGNORE => "AddInfo",
	NEEDED_BY => "AddDepends",
	BNEEDED_BY => "AddDepends",
);

sub wanted
{
	my ($class, $var) = @_;
	return $adder{$var};
}

sub new
{
	my ($class, $pkgpath) = @_;
	$pkgpath->{info} //= bless {}, $class;
}

sub add
{
	my ($self, $var, $value) = @_;
	$adder{$var}->add($var, $self, $value);
}

sub dump
{
	my ($self, $fh) = @_;
	for my $k (sort keys %adder) {
		print $fh "\t $k = ", $self->{$k}->string, "\n" 
		    if defined $self->{$k};
	}
}

use Data::Dumper;
sub quick_dump
{
	my ($self, $fh) = @_;
	for my $k (sort keys %adder) {
		if (defined $self->{$k} and $adder{$k}->quickie) {
			print $fh "\t $k = ";
			if (ref($self->{$k}) eq 'HASH') {
				print $fh "????\n";
			} else {
				print $fh $self->{$k}->string, "\n" ;
			}
		}
	}
}

sub fullpkgname
{
	my $self = shift;
	
	return (defined $self->{FULLPKGNAME}) ? 
	    $self->{FULLPKGNAME}->string : undef;
}

1;
