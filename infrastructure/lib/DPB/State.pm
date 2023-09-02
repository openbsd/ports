# ex:ts=8 sw=4:
# $OpenBSD: State.pm,v 1.39 2023/09/02 12:33:54 espie Exp $
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

use v5.36;

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

sub define_present($self, $k)
{
	return defined $self->{subst}{$k};
}

sub init($self)
{
	$self->SUPER::init;
	$self->{no_exports} = 1;
	$self->{heuristics} = DPB::Heuristics->new($self);
	$self->{make} = $ENV{MAKE} || OpenBSD::Paths->make;
	$self->{starttime} = CORE::time();
	$self->{master_pid} = $$;

	return $self;
}

sub startdate($self)
{
	my @l = gmtime $self->{starttime};
	$l[5] += 1900;
	$l[4] ++;
	return sprintf '%04d-%02d-%02d@%02d:%02d:%02d', @l[5,4,3,2,1,0];
}

sub anchor($self, $path)
{
	if ($self->{chroot}) {
		return join('/', $self->{chroot}, $path);
	} else {
		return $path;
	}
}

sub expand_path($self, $path)
{
	return $self->expand_path_with_ports($path, $self->{realports});
}

sub expand_path_with_ports($self, $path, $ports)
{
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


sub expand_chrooted_path($self, $path)
{
	return $self->expand_path_with_ports($path, $self->{ports});
}

sub interpret_path($state, $path, $do, $scale = undef)
{
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
	push(@{$state->{bad_paths}}, $path);
}

sub interpret_paths($state, @r)
{
	# last parameter is actually a sub !
	my $do = pop @r;
	for my $file (@r) {
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

sub handle_options($state)
{
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
	$state->{concurrent} = $state->{logger}->append("cpu-concurrency");
	DPB::Core->reap;
}

sub SUPER_handle_options($state, @p)
{
	$state->SUPER::handle_options(@p);
}

sub logger($self)
{
	return $self->{logger};
}

sub heuristics($self)
{
	return $self->{heuristics};
}

sub sizer($self)
{
	return $self->{sizer};
}
sub locker($self)
{
	return $self->{locker};
}

sub stalelocks($self)
{
	return $self->locker->{stalelocks};
}

sub builder($self)
{
	return $self->{builder};
}

sub engine($self)
{
	return $self->{engine};
}

sub grabber($self)
{
	return $self->{grabber};
}

sub fetch($self)
{
	return $self->{grabber}{fetch};
}

sub make($self)
{
	return $self->{make};
}

sub make_args($self)
{
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

sub ports($self)
{
	return $self->{ports};
}

sub fullrepo($self)
{
	return $self->{fullrepo};
}

sub distdir($self)
{
	return $self->{realdistdir};
}

sub localarch($self)
{
	return $self->{localarch};
}

sub arch($self)
{
	return $self->{arch};
}

sub logdir($self)
{
	return $self->{logdir};
}

sub parse_build_line($self)
{
	return split(/\s+/, $self);
}

sub parse_build_file($state, $fname)
{
	my $errors = 0;
	if (!-f $fname) {
		my $arch = $state->arch;
		if (-f "$fname/$arch/build.log") {
			$fname = "$fname/$arch/build.log";
		} elsif (-f "$fname/build.log") {
			$fname = "$fname/build.log";
		}
	}
	open my $fh, '<', $fname or return;
LINE:
	while (<$fh>) {
		next if m/!$/;
		my $s = DPB::Serialize::Build->read($_);
		for my $k (qw(host time size ts)) {
			next if defined $s->{$k};
			if (!$errors) {
				print STDERR "\n";
				$errors++;
			}
			print STDERR "bogus line #$. in ", $fname, ":\n";
			print STDERR "\t$_\n";
			next LINE;
		}
		my $o = DPB::PkgPath->new($s->{pkgpath});
		push(@{$o->{stats}}, $s);
	}
	sleep(20) if $errors;
}

sub add_build_info($state, @consumers)
{
	for my $p (DPB::PkgPath->seen) {
		next unless defined $p->{stats};
		my ($i, $time, $sz, $host);
		# most recent first
		$p->{stats} = [sort {$b->{ts} <=> $a->{ts}} @{$p->{stats}}];
		# first loop: we use clean builds
		for my $s (@{$p->{stats}}) {
			# so we keep stuff that predates the tag
			# and stuff that's actually clean
			# (see Job/Port.pm: clean is the number of the line
			# at which we found the clean build marker)
			if (defined $s->{clean} && $s->{clean} == 0) {
				next;
			}
			$i++;
			$time += $s->{time};
			$sz += $s->{size};
			$host = $s->{host}; # XXX we don't do anything with
					    # host information
			last unless $i <= $state->{stats_used};
		}
		# no clean build found: partial stats are better than
		# nothing
		if (!defined $i) {
			for my $s (@{$p->{stats}}) {
				$i++;
				$time += $s->{time};
				$sz += $s->{size};
				$host = $s->{host};
				last unless $i <= $state->{stats_used};
			}
		}
		for my $c (@consumers) {
			$c->add_build_info($p, $host, $time/$i, $sz/$i);
		}
	}

}

sub rewrite_build_info($state, $filename)
{
	$state->{log_user}->rewrite_file($state, $filename,
	    sub($f) {
		for my $p (sort {$a->fullpkgpath cmp $b->fullpkgpath}
		    DPB::PkgPath->seen) {
			next unless defined $p->{stats};
			my $i = 0;
			for my $s (@{$p->{stats}}) {
				$i++;
				last unless $i <= $state->{stats_backlog};
				print $f DPB::Serialize::Build->write($s), "\n"
				    or return 0;
			}
			delete $p->{stats};
		}
		return 1;
	});
}

sub handle_build_files($state)
{
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

sub handle_continue($state)
{
	$state->SUPER::handle_continue;
	if (defined $state->{reporter}) {
		$state->{reporter}->handle_continue;
	}
}

sub find_window_size($state)
{
$state->SUPER::find_window_size;
if (defined $state->{reporter}) {
    $state->{reporter}->handle_window;
}
}

1;
