# $OpenBSD: LogParser.pm,v 1.1 2018/06/09 09:46:27 espie Exp $
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

package OpenBSD::LogParser;
sub parse_file
{
	my ($class, $fs, $filename) = @_;
	open(my $fh, '<', $filename) or die "can't read $filename: $!";
	while(<$fh>) {
		chomp;
		if (m/^(\S+)\s+(\S+)\s+(.*)/) {
			my ($cwd, $cmd, @args) = ($1, $2, split(/\s+/, $3));
			my $parsed = $class->parse_line($cwd, $cmd, @args);
			if ($parsed) {
				# TODO incorporate into fs
				use Data::Dumper;
				print Dumper($parsed), "\n";
				next;
			}
		}
		print "Bad line in $filename at $.: $_\n";
	}
}

my $parser = {
	install => 'OpenBSD::InstallParser',
	chown => 'OpenBSD::ChownParser',
	chgrp => 'OpenBSD::ChgrpParser'
};

sub parse_line
{
	my ($class, $cwd, $cmd, @args) = @_;
	if (defined $parser->{$cmd}) {
		return $parser->{$cmd}->parse_line($cwd, @args);
	} else {
		return undef;
	}
}


package OpenBSD::CmdParser;
# quick and easy option parser
sub parse_opts
{
	my ($self, $template, @args) = @_;

	my $result = {};
	while ($_ = shift @args) {
		last if /^--$/o;
		unless (m/^-(.)(.*)/so) {
			unshift @args, $_;
			last;
		}
		my ($opt, $rest) = ($1, $2);
		if ($template =~ m/\Q$opt\E(\:?)/) {
			if ($1 eq ':') {
				if ($rest eq '') {
					return undef if @args == 0;
					$rest = shift @args;
				}
				$result->{$opt} = $rest;
			} else {
				if ($rest ne '') {
					$_ = "-$rest";
					redo;
				}
				$result->{$opt} = 1;
			}
		} else {
			return undef;
		}
	}
	$result->{args} = \@args;
	return $result;
}

sub parse_line
{
	my ($self, $cwd, @args) = @_;
	print join(' ', $self, @args), "\n";
	my $opts = $self->parse_opts($self->template, @args);
	return undef if !defined $opts;
	return $self->encoded($cwd, $opts);
}

sub encoded
{
	my ($self, $cwd, $opts) = @_;
	if (@{$opts->{args}} < 2) {
		return undef;
	}
	my $result = $self->parse_ug($opts);
	$self->parse_args($result, $cwd, $opts);

	return $result;
}

package OpenBSD::OwnGrpParser;
our @ISA = qw(OpenBSD::CmdParser);

sub template
{
	'hRHLP'
}

sub parse_args
{
	my ($self, $result, $cwd, $opts) = @_;
	$result->{args} = [];
	for my $f (@{$opts->{args}}) {
		if ($f =~ m/^\//) {
			push(@{$result->{args}}, $f);
		} else {
			push(@{$result->{args}}, "$cwd/$f");
		}
	}
	if ($opts->{R}) {
		$result->{recursive} = 1;
	}
}

package OpenBSD::ChownParser;
our @ISA = qw(OpenBSD::OwnGrpParser);

sub parse_ug
{
	my ($self, $opts) = @_;
	my $result = {};
	my $ug = shift @{$opts->{args}};
	if ($ug =~ m/^[:\.](.*)/) {
		$result->{group} = $1;
	} elsif ($ug =~ m/(.*)[:\.](.*)/) {
		$result->{user} = $1;
		$result->{group} = $2 if $2 ne '';
	} else {
		$result->{user} = $ug;
	}
	return $result;
}

package OpenBSD::ChgrpParser;
our @ISA = qw(OpenBSD::OwnGrpParser);

sub parse_ug
{
	my ($self, $opts) = @_;

	my $result = {};

	$result->{group} = shift @{$opts->{args}};
	return $result;
}

package OpenBSD::InstallParser;
our @ISA = qw(OpenBSD::CmdParser);
use File::Basename;

sub template
{
	'bCcDdFpSsB:f:g:m:o:'
}

sub parse_ug
{
	my ($self, $opts) = @_;
	my $result = {};
	if ($opts->{o}) {
		$result->{user} = $opts->{o};
	}
	if ($opts->{g}) {
		$result->{group} = $opts->{g};
	}
	return $result;
}

sub parse_args
{
	my ($self, $result, $cwd, $opts) = @_;
	$result->{args} = [];
	if ($opts->{d}) {
		    # TODO InstallWrapper should give us more info, we can't
		    # reconstitute everything that way
		    for my $f (@{$opts->{args}}) {
			    if ($f =~ m/^\//) {
				    push(@{$result->{args}}, $f);
			    } else {
				    push(@{$result->{args}}, "$cwd/$f");
			    }
		    }
	} else {
		my $last = pop @{$opts->{args}};
		if ($last !~ m/^\//) {
			$last = "$cwd/$last";
		}
		if (-d $last) {
			for my $f (@{$opts->{args}}) {
				push(@{$result->{args}}, "$last/".basename($f));
			}
		} else {
			push(@{$result->{args}}, $last);
		}
		$result->{args} = $opts->{args};
	}
}

1;
