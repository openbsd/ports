# ex:ts=8 sw=4:
# $OpenBSD: State.pm,v 1.8 2014/03/17 10:48:40 espie Exp $
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

package DPB::State;
our @ISA = qw(OpenBSD::State);

use OpenBSD::State;
use OpenBSD::Paths;
use DPB::Heuristics;
use DPB::PkgPath;
use DPB::Logger;
use DPB::Config;
use File::Path;
use File::Basename;
use DPB::Core;
use DPB::Core::Init;
use DPB::Locks;
use DPB::Serialize;

sub define_present
{
	my ($self, $k) = @_;
	return defined $self->{subst}{$k};
}

sub init
{
	my $self = shift;
	$self->SUPER::init;
	$self->{no_exports} = 1;
	$self->{heuristics} = DPB::Heuristics->new($self);
	$self->{make} = $ENV{MAKE} || OpenBSD::Paths->make;
	$self->{starttime} = time();

	return $self;
}

sub startdate
{
	my $self = shift;
	my @l = gmtime $self->{starttime};
	$l[5] += 1900;
	$l[4] ++;
	return sprintf '%04d-%02d-%02d@%02d:%02d:%02d', @l[5,4,3,2,1,0];
}

sub anchor
{
	my ($self, $dir) = @_;
	if ($self->{chroot}) {
		return join('/', $self->{chroot}, $dir);
	} else {
		return $dir;
	}
}

sub expand_path
{
	my ($self, $path) = @_;
	$path =~ s/\%L/$self->{logdir}/g;
	$path =~ s/\%p/$self->{realports}/g;
	$path =~ s/\%h/DPB::Core::Local->hostname/ge;
	$path =~ s/\%a/$self->{arch}/g;
	$path =~ s/\%t/$self->{starttime}/g;
	$path =~ s/\%d/$self->startdate/ge;
	$path =~ s/\%f/$self->{realdistdir}/g;
	return $path;
}

sub interpret_path
{
	my ($state, $path, $do, $scale) = @_;

	my $weight;
	if ($path =~ s/\=(.*)//) {
		$weight = $1;
	}
	if ($path =~ s/\*(\d+)$//) {
		$scale = $1;
	}
	$path =~ s/\/+$//;
	$path =~ s/^\.\/+//;
	my $p = DPB::PkgPath->new($path);
	if (defined $scale) {
		$p->{scaled} = $scale;
	}
	for my $d (@{$state->{portspath}}) {
		if (-d join('/', $d , $p->pkgpath)) {
			&$do($p, $weight);
			return;
	   	} 
	}
	$state->usage("Bad package path: #1", $path);
}

sub interpret_paths
{
	my $state = shift;
	my $do = pop;
	for my $file (@_) {
		my $scale;
		if ($file =~ s/\*(\d+)$//) {
			$scale = $1;
		}

		if (-f $file) {
			open my $fh, '<', $file or
			    $state->usage("Can't open $file");
			while (<$fh>) {
				chomp;
				s/\s*(?:\#.*)?$//;
				next if m/^$/;
				$state->interpret_path($_, $do, $scale);
			}
		} else {
			$state->interpret_path($file, $do);
		}
	}
}

sub handle_options
{
	my $state = shift;
	DPB::Config->parse_command_line($state);
	$state->{logger} = DPB::Logger->new($state->logdir, $state->opt('c'));
	$state->{locker} = DPB::Locks->new($state, $state->{lockdir});
	DPB::Core::Init->init_cores($state);
	DPB::Core->reap;
	$state->sizer->parse_size_file;
	DPB::Limiter->setup($state->logger);
	$state->{concurrent} = $state->{logger}->open("concurrent");
	DPB::Core->reap;
}

sub SUPER_handle_options
{
	my ($state, @p) = @_;
	$state->SUPER::handle_options(@p);
}

sub logger
{
	return shift->{logger};
}

sub heuristics
{
	return shift->{heuristics};
}

sub sizer
{
	return shift->{sizer};
}
sub locker
{
	return shift->{locker};
}

sub stalelocks
{
	return shift->locker->{stalelocks};
}

sub builder
{
	return shift->{builder};
}

sub engine
{
	return shift->{engine};
}

sub grabber
{
	return shift->{grabber};
}

sub make
{
	return shift->{make};
}

sub make_args
{
	my $self = shift;
	my @l = ($self->{make});
	if ($self->{build_once}) {
		push(@l, 'BUILD_ONCE=Yes');
	}
	return @l;
}

sub ports
{
	return shift->{ports};
}

sub fullrepo
{
	return shift->{fullrepo};
}

sub distdir
{
	return shift->{realdistdir};
}

sub localarch
{
	return shift->{localarch};
}

sub arch
{
	return shift->{arch};
}

sub logdir
{
	return shift->{logdir};
}

sub parse_build_line
{
	return split(/\s+/, shift);
}

sub parse_build_file
{
	my ($state, $fname) = @_;
	if (!-f $fname) {
		my $arch = $state->arch;
		if (-f "$fname/$arch/build.log") {
			$fname = "$fname/$arch/build.log";
		} elsif (-f "$fname/build.log") {
			$fname = "$fname/build.log";
		}
	}
	open my $fh, '<', $fname or return;
	while (<$fh>) {
		next if m/!$/;
		my $s = DPB::Serialize::Build->read($_);
		next if !defined $s->{size};
		my $o = DPB::PkgPath->new($s->{pkgpath});
		push(@{$o->{stats}}, $s);
	}
}

sub add_build_info
{
	my ($state, @consumers) = @_;
	for my $p (DPB::PkgPath->seen) {
		next unless defined $p->{stats};
		my ($i, $time, $sz, $host);
		for my $s (@{$p->{stats}}) {
			$time += $s->{time};
			$sz += $s->{size};
			$i++;
			$host = $s->{host}; # XXX
		}
		for my $c (@consumers) {
			$c->add_build_info($p, $host, $time/$i, $sz/$i);
		}
	}
}

sub rewrite_build_info
{
	my $state = shift;
	File::Path::mkpath(File::Basename::dirname($state->{permanent_log}));
	open my $f, '>', $state->{permanent_log}.'.part' or return;
	for my $p (sort {$a->fullpkgpath cmp $b->fullpkgpath}
	    DPB::PkgPath->seen) {
		next unless defined $p->{stats};
		shift @{$p->{stats}} while @{$p->{stats}} > 10;
		for my $s (@{$p->{stats}}) {
			print $f DPB::Serialize::Build->write($s), "\n";
		}
		delete $p->{stats};
	}
	close $f;
	rename $state->{permanent_log}.'.part', $state->{permanent_log};
}

sub handle_build_files
{
	my $state = shift;
	return if $state->{fetch_only};
	return unless defined $state->{build_files};
	print "Reading build stats...";
	for my $file (@{$state->{build_files}}) {
		$state->parse_build_file($file);
	}
	$state->heuristics->calibrate(DPB::Core::Init->cores);
	$state->add_build_info($state->heuristics, "DPB::Job::Port");
	print "zapping old stuff...";
	$state->rewrite_build_info($state->{permanent_log});
	print "Done\n";
	$state->heuristics->finished_parsing;
}

1;
