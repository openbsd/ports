# ex:ts=8 sw=4:
# $OpenBSD: State.pm,v 1.29 2020/02/27 11:48:17 espie Exp $
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
use DPB::Reporter;

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
	$self->{starttime} = CORE::time();
	$self->{master_pid} = $$;

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
	my ($self, $path) = @_;
	if ($self->{chroot}) {
		return join('/', $self->{chroot}, $path);
	} else {
		return $path;
	}
}

sub expand_path
{
	my ($self, $path) = @_;
	return $self->expand_path_with_ports($path, $self->{realports});
}

sub expand_path_with_ports
{
	my ($self, $path, $ports) = @_;
	$path =~ s/\%L/$self->{logdir}/g;
	$path =~ s/\%p/$ports/g;
	$path =~ s/\%h/DPB::Core::Local->short_hostname/ge;
	$path =~ s/\%a/$self->{arch}/g;
	$path =~ s/\%t/$self->{starttime}/g;
	$path =~ s/\%d/$self->startdate/ge;
	$path =~ s/\%f/$self->{realdistdir}/g;
	$path =~ s/\%\$/$self->{master_pid}/g;
	return $path;
}


sub expand_chrooted_path
{
	my ($self, $path) = @_;
	return $self->expand_path_with_ports($path, $self->{ports});
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

		my $fh = $state->logger->open('<', $file);
		if (defined $fh) {
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
	# at this point, we should know all our ids!
	$state->{logger} = DPB::Logger->new($state);
	# must come after logger
	$state->{locker} = DPB::Locks->new($state);
	$state->{reporter} = DPB::Reporter->new($state);
	DPB::Core::Init->init_cores($state);
	DPB::Core->reap;
	$state->sizer->parse_size_file;
	DPB::Limiter->setup($state->logger);
	$state->{concurrent} = $state->{logger}->append("concurrent");
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

sub fetch
{
	return shift->{grabber}{fetch};
}

sub make
{
	return shift->{make};
}

sub make_args
{
	my $self = shift;
	my @l = ($self->{make}, "-C", $self->{ports});
	if ($self->{build_once}) {
		push(@l, 'BUILD_ONCE=Yes');
	}
	# Paradoxically, we don't need privsep at the ports level
	# since we do our own
	if ($self->{noportsprivsep}) {
		push(@l, 'PORTS_PRIVSEP=No');
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
		if (!defined $s->{size}) {
			print "bogus line #$. in ", $fname, "\n";
			next;
		}
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
	my ($state, $filename) = @_;
	$state->{log_user}->rewrite_file($state, $filename,
	    sub {
	    	my $f = shift;
		for my $p (sort {$a->fullpkgpath cmp $b->fullpkgpath}
		    DPB::PkgPath->seen) {
			next unless defined $p->{stats};
			shift @{$p->{stats}} while @{$p->{stats}} > 10;
			for my $s (@{$p->{stats}}) {
				print $f DPB::Serialize::Build->write($s), "\n"
				    or return 0;
			}
			delete $p->{stats};
		}
		return 1;
	    });
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
	if (defined $state->{permanent_log}) {
		print "zapping old stuff...";
		$state->rewrite_build_info($state->{permanent_log});
		print "Done\n";
	}
	$state->heuristics->finished_parsing;
}

sub find_window_size
{
	my ($state, $cont) = @_;
	$state->SUPER::find_window_size;
	if (defined $state->{reporter}) {
		$state->{reporter}->sig_received($cont);
	}
}
1;
