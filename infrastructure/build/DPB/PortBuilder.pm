# ex:ts=8 sw=4:
# $OpenBSD: PortBuilder.pm,v 1.2 2010/02/26 12:14:57 espie Exp $
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

# this object is responsible for launching the build of ports
# which mostly includes starting the right jobs
package DPB::PortBuilder;
use File::Path;
use DPB::Util;
use DPB::Job::Port;

sub new
{
	my $class = shift;
	my ($opt_c, $fullrepo, $logger, $ports, $make, $h) = @_;
	my $self = bless {clean => $opt_c, 
	    fullrepo => $fullrepo, 
	    logger => $logger, ports => $ports, make => $make,
	    heuristics => $h}, $class;
	$self->init;
	return $self;
}

sub init
{
	my $self = shift;
	File::Path::make_path($self->{fullrepo});
	$self->{global} = $self->{logger}->open("build");
}

sub check
{
	my ($self, $v) = @_;
	my $name = $v->fullpkgname;
	return -f "$self->{fullrepo}/$name.tgz";
}

sub report
{
	my ($self, $v, $job, $host) = @_;
	my $pkgpath = $v->fullpkgpath;
	my $sz = (stat $self->{logger}->log_pkgpath($v))[7];
	my $log = $self->{global};
	if (defined $job->{offset}) {
		$sz -= $job->{offset};
	}
	print $log "$pkgpath $host ", $job->totaltime, " ", $sz, " ", 
	    $job->timings;
	if ($self->check($v)) {
		print $log  "\n";
	} else {
		print $log  "!\n";
	}
}

sub get
{
	my $self = shift;
	return DPB::Core->get;
}

sub end_lock
{
	my ($self, $lock, $core) = @_;
	my $end = time();
	print $lock "status=$core->{status}\n";
	print $lock "end=$end (", DPB::Util->time2string($end), ")\n";
	close $lock;
}

sub build
{
	my ($self, $v, $core, $special, $lock, $final_sub) = @_;
	my $start = time();
	my $log = $self->{logger}->make_logs($v);
	my $job;
	$job = DPB::Job::Port->new($log, $v, $self, $special,
	    sub {$self->end_lock($lock, $core); $self->report($v, $job, $core->host); &$final_sub;});
	$core->start_job($job, $v);
#	(sub {
#	}, 	$v, " (".$self->{heuristics}->measure($v).")");
	print $lock "host=", $core->host, "\n";
	print $lock "pid=$core->{pid}\n";
	print $lock "start=$start (", DPB::Util->time2string($start), ")\n";
	$job->set_watch($self->{logger}, $v);
	return $core;
}

package DPB::DummyCore;
sub host
{
	return "dummy";
}

my $dummy = bless {}, "DPB::DummyCore";

package DPB::PortBuilder::Test;
our @ISA = qw(DPB::PortBuilder);

sub build
{
	my ($self, $v, $core, $lock, $code) = @_;
	my $name = $v->fullpkgname;
#	my $log = $self->{logger}->make_logs(make_logs($v), $self->{clean});
#	open my $out, ">>", $log or die "Can't write to $log";
	open my $fh, ">", "$self->{fullrepo}/$name.tgz";
	close $fh;
	&$code;
	return $dummy;
}

1;
