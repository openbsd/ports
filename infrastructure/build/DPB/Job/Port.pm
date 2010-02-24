# ex:ts=8 sw=4:
# $OpenBSD: Port.pm,v 1.1 2010/02/24 11:33:31 espie Exp $
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

use DPB::Job;
package DPB::Task::Port;
our @ISA = qw(DPB::Task::Fork);
sub new
{
	my ($class, $phase) = @_;
	bless {phase => $phase}, $class;
}

sub fork
{
	my ($self, $core) = @_;

	my $job = $core->job;
	$job->clock;
	$job->{current} = $self->{phase};
	return $self->SUPER::fork($core);
}

sub run
{
	my ($self, $core) = @_;
	my $job = $core->job;
	my $t = $self->{phase};
	my $ports = $job->{builder}->{ports};
	my $fullpkgpath = $job->{v}->fullpkgpath;
	my $log = $job->{log};
	my $make = $job->{builder}->{make};
	my $shell = $core->{shell};
	close STDOUT;
	close STDERR;
	open STDOUT, '>>', $log or die "Can't write to $log";
	open STDERR, '>&STDOUT' or die "bad redirect";
	my @args = ($t, "TRUST_PACKAGES=Yes", 
	    "REPORT_PROBLEM='exit 1'");
	if ($job->{special}) {
		push(@args, "WRKOBJDIR=/tmp/ports");
	}
	if (defined $shell) {
		$shell->run("cd $ports && SUBDIR=".
		    $fullpkgpath." ".join(' ',$shell->make, @args));
	} else {
		chdir($ports) or 
		    die "Wrong ports tree $ports";
		$ENV{SUBDIR} = $fullpkgpath;
		exec {$make} ("make", @args);
	}
	exit(1);
}

package DPB::Job::Port;
our @ISA = qw(DPB::Job::Normal);

use Time::HiRes qw(time);
my @list = qw(prepare fetch patch configure build fake package clean);

my $alive = {};
sub stopped_clock
{
	my ($class, $gap) = @_;
	for my $t (values %$alive) {
		if (defined $t->{started}) {
			$t->{started} += $gap;
		}
	}
}

sub new
{
	my ($class, $log, $v, $builder, $special, $endcode) = @_;
	my @todo = @list;
	if ($builder->{clean}) {
		unshift @todo, "clean";
	}
	my $o = bless {tasks => [map {DPB::Task::Port->new($_)} @todo],
	    log => $log, v => $v,
	    special => $special,  current => '',
	    builder => $builder, endcode => $endcode},
		$class;
	
	$alive->{$o} = $o;
	return $o;
}

sub pkgpath
{
	my $self = shift;
	return $self->{v};
}

sub name
{
	my $self = shift;
	return $self->{v}->fullpkgpath."($self->{current})";
}

sub clock
{
	my $self = shift;
	if (defined $self->{started}) {
		push(@{$self->{times}}, [$self->{current}, time() - $self->{started}]);
	}
	$self->{started} = time();
}

sub finalize
{
	my $self = shift;
	$self->clock;
	$self->SUPER::finalize(@_);
	delete $alive->{$self};
}

sub totaltime
{
	my $self = shift;
	my $t = 0;
	for my $plus (@{$self->{times}}) {
		next if $plus->[0] eq 'fetch' or $plus->[0] eq 'prepare' 
		    or $plus->[0] eq 'clean';
		$t += $plus->[1];
    	}
	return sprintf("%.2f", $t);
}

sub timings
{
	my $self = shift;
	return join('/', map {sprintf("%s=%.2f", @$_)} @{$self->{times}});
}

my $logsize = {};

sub add_build_info
{
	my ($class, $pkgpath, $host, $time, $sz) = @_;
	$logsize->{$pkgpath} = $sz;
}

sub set_watch
{
	my ($self, $logger, $v) = @_;
	for my $w ($logger->pathlist($v)) {
		if (defined $logsize->{$w}) {
			$self->{expected} = $logsize->{$w};
			last;
		}
	}
	$self->{watched} = $logger->log_pkgpath($v);
}

sub watch
{
	my $self = shift;
	my $sz = (stat $self->{watched})[7];
	if (!defined $self->{sz} || $self->{sz} != $sz) {
		$self->{sz} = $sz;
		$self->{time} = time();
	}
}

sub watched
{
	my ($self, $current) = @_;
	return "" unless defined $self->{watched};
	$self->watch;
	my $progress = '';
	if (defined $self->{sz}) {
		if (defined $self->{expected} && 
		    $self->{sz} < 4 * $self->{expected}) {
			$progress = ' '.
			    int($self->{sz}*100/$self->{expected}). '%';
		} else {
			$progress = ' '.$self->{sz};
	    	}
	}

	my $diff = $current - $self->{time};
	if ($diff > 7200) {
		return "$progress unchanged for ".int($diff/3600)." hours";
	} elsif ($diff > 300) {
		return "$progress unchanged for ".int($diff/60)." minutes";
	} elsif ($diff > 10) {
		return "$progress unchanged for ".int($diff)." seconds";
	} else {
		return $progress;
	}
}

sub really_watch
{
	my ($self, $current) = @_;
	return "" unless defined $self->{watched};
	$self->watch;
	my $diff = $current - $self->{time};
	$self->{lastdiff} //= 5;
	if ($diff > $self->{lastdiff} * 2) {
		$self->{lastdiff} = $diff;
		return 1;
	} elsif ($diff < $self->{lastdiff}) {
		$self->{lastdiff} = 5;
	}
	return 0;
}
1;

