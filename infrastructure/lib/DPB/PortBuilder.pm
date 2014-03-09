# ex:ts=8 sw=4:
# $OpenBSD: PortBuilder.pm,v 1.61 2014/03/09 20:11:33 espie Exp $
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

# this object is responsible for launching the build of ports
# which mostly includes starting the right jobs
package DPB::PortBuilder;
use File::Path;
use DPB::Util;
use DPB::Job::Port;
use DPB::Serialize;

sub new
{
	my ($class, $state) = @_;
	if ($state->opt('R')) {
		require DPB::PortBuilder::Rebuild;
		$class = $class->rebuild_class;
	}
	my $self = bless {
	    state => $state,
	    clean => $state->opt('c'),
	    dontclean => $state->{dontclean},
	    fetch => $state->opt('f'),
	    wantsize => $state->{wantsize},
	    fullrepo => $state->fullrepo,
	    realfullrepo => $state->anchor($state->fullrepo),
	    sizer => $state->sizer,
	    heuristics => $state->heuristics}, $class;
	if ($state->opt('u') || $state->opt('U')) {
		$self->{update} = 1;
	}
	if ($state->opt('U')) {
		$self->{forceupdate} = 1;
	}
	$self->init;
	return $self;
}

sub want_size
{
	my ($self, $v, $core) = @_;
	if (!$self->{wantsize}) {
		return 0;
	}
	# always show for inmem
	if ($core->{inmem}) {
		return 1;
	}
	# do we already have this stats ? don't run it every time
	if ($self->{sizer}->match_pkgname($v)) {
		return rand(10) < 1;
	} else {
		return 1;
	}
}

sub rebuild_class
{ 'DPB::PortBuilder::Rebuild' }

sub ports
{
	my $self = shift;
	return $self->{state}->ports;
}

sub logger
{
	my $self = shift;
	return $self->{state}->logger;
}

sub locker
{
	my $self = shift;
	return $self->{state}->locker;
}

sub dontjunk
{
	my ($self, $v) = @_;
	$self->{dontjunk}{$v->fullpkgname} = 1;
}

sub make
{
	my $self = shift;
	return $self->{state}->make;
}

sub make_args
{
	my $self = shift;
	return $self->{state}->make_args;
}

sub init
{
	my $self = shift;
	File::Path::make_path($self->{realfullrepo});
	$self->{global} = $self->logger->open("build");
	$self->{lockperf} = 
	    DPB::Util->make_hot($self->logger->open("awaiting-locks"));
	if ($self->{wantsize}) {
		$self->{logsize} = 
		    DPB::Util->make_hot($self->logger->open("size"));
	}
	if ($self->{state}->defines("WRAP_MAKE")) {
		$self->{rsslog} = $self->logger->logfile("rss");
		$self->{wrapper} = $self->{state}->defines("WRAP_MAKE");
	}
}

sub pkgfile
{
	my ($self, $v) = @_;
	my $name = $v->fullpkgname;
	return "$self->{realfullrepo}/$name.tgz";
}

sub check
{
	my ($self, $v) = @_;
	return -f $self->pkgfile($v);
}

sub end_check
{
	&check;
}

sub checks_rebuild
{
}

sub register_package
{
}

sub report
{
	my ($self, $v, $job, $core) = @_;
	return if $job->{signature_only};
	my $pkgpath = $v->fullpkgpath;
	my $host = $core->fullhostname;
	if ($core->{realjobs}) {
		$host .= '*'.$core->{realjobs};
	}
	my $log = $self->{global};
	my $sz = (stat $self->logger->log_pkgpath($v))[7];
	if (defined $job->{offset}) {
		$sz -= $job->{offset};
	}
	print $log "$pkgpath $host ", $job->totaltime, " ", $sz, " ",
	    $job->timings;
	if ($job->{failed}) {
		open my $fh, '>>', $job->{log};
		print $fh "Error: job failed $job->{failed}\n";
		print $log  "!\n";
	} else {
		print $log  "\n";
		open my $fh, '>>', $self->{state}{permanent_log};
		print $fh DPB::Serialize::Build->write({
		    pkgpath => $pkgpath, 
		    host => $host, 
		    time => $job->totaltime, 
		    size => $sz, 
		    ts => CORE::time }), "\n";
	}
}

sub get
{
	my $self = shift;
	return DPB::Core->get;
}

sub end_lock
{
	my ($self, $lock, $core, $job) = @_;
	my $end = time();
	print $lock "status=$core->{status}\n";
	print $lock "todo=", $job->current_task, "\n";
	print $lock "end=$end (", DPB::Util->time2string($end), ")\n";
	close $lock;
}

sub build
{
	my ($self, $v, $core, $lock, $final_sub) = @_;
	my $start = time();
	my $log = $self->logger->make_logs($v);
	open my $fh, ">>", $log or die "can't open $log: $!";
	my $memsize = $self->{sizer}->build_in_memory($fh, $core, $v);

	if ($memsize) {
		print $lock "mem=$memsize\n";
		print $fh ">>> Building in memory under ";
		$core->{inmem} = $memsize;
	} else {
		print $fh ">>> Building under ";
		$core->{inmem} = 0;
	}
	if ($v->{info}->has_property('tag')) {
		print $lock "tag=".$v->{info}->has_property('tag')."\n";
	}
	$v->quick_dump($fh);

	my $job;
	$job = DPB::Job::Port->new($log, $fh, $v, $lock, $self, $memsize, $core,
	    sub {
	    	close($fh); 
		$self->end_lock($lock, $core, $job); 
		$self->report($v, $job, $core); 
		&$final_sub($job->{failed});
	    });
	$core->start_job($job, $v);
	if ($job->{parallel}) {
		$core->can_swallow($job->{parallel}-1);
	}
	print $lock "host=", $core->hostname, "\n",
	    "pid=$core->{pid}\n",
	    "start=$start (", DPB::Util->time2string($start), ")\n";
	$job->set_watch($self->logger, $v);
}

sub test
{
	my ($self, $v, $core, $lock, $final_sub) = @_;
	my $start = time();
	my $log = $self->logger->make_test_logs($v);
	my $memsize = $self->{sizer}->build_in_memory($core, $v);

	open my $fh, ">>", $log or die "can't open $log: $!";
	if ($memsize) {
		print $lock "mem=$memsize\n";
		print $fh ">>> Building in memory under ";
		$core->{inmem} = $memsize;
	} else {
		print $fh ">>> Building under ";
		$core->{inmem} = 0;
	}
	if ($v->{info}->has_property('tag')) {
		print $lock "tag=".$v->{info}->has_property('tag')."\n";
	}
	$v->quick_dump($fh);

	my $job;
	$job = DPB::Job::Port::Test->new($log, $fh, $v, $lock, $self, 
	    $memsize, $core,
	    sub {
	    	close($fh); 
		$self->end_lock($lock, $core, $job); 
		$self->report($v, $job, $core); 
		&$final_sub($job->{failed});
	    });
	$core->start_job($job, $v);
	print $lock "host=", $core->hostname, "\n",
	    "pid=$core->{pid}\n",
	    "start=$start (", DPB::Util->time2string($start), ")\n";
}

sub install
{
	my ($self, $v, $core) = @_;
	my $log = $self->logger->make_logs($v);
	open my $fh, ">>", $log or die "can't open $log: $!";
	print $fh ">>> Installing under ";
	$v->quick_dump($fh);
	my $job = DPB::Job::Port::Install->new($log, $fh, $v, $self,
	    sub {
	    	close($fh);
	    	$core->mark_ready; 
	    });
	$core->start_job($job, $v);
	return $core;
}


1;
