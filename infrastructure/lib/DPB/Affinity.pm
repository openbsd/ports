# ex:ts=8 sw=4:
# $OpenBSD: Affinity.pm,v 1.12 2015/04/26 18:00:19 espie Exp $
#
# Copyright (c) 2012-2013 Marc Espie <espie@openbsd.org>
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

# on multiple hosts setup, it's useful to record which host is building what,
# so that on restart, we try to avoid starting a task on the "wrong" box...

# note that this is only superficially similar to locks

use DPB::Config;
package DPB::Affinity;
our @ISA = (qw(DPB::UserProxy));

use File::Path;
use DPB::PkgPath;

sub new
{
	my ($class, $state, $dir) = @_;

	my $o = bless {dir => $dir, user => $state->{lock_user}}, $class;
	$o->make_path($dir);
	$o->retrieve_existing_markers($state->logger);
	return $o;
}

# each path being built creates an affinity marker
sub affinity_marker
{
	my ($self, $v) = @_;
	my $s = $v->fullpkgpath;
	$s =~ tr|/|.|;
	return join('/', $self->{dir}, $s);
}

# we create a separate marker for each path being built in a MULTI_PACKAGES
# setting, so that if we finish building one, we lose the affinity for it.
sub start
{
	my ($self, $v, $core) = @_;
	$self->run_as(
	    sub {
		my $host = $core->hostname;
		for my $w ($v->build_path_list) {
			next if $w->{info}->is_stub;
			open(my $fh, '>', $self->affinity_marker($w)) or next;
			$w->{affinity} = $host;
			print $fh "host=$host\n";
			print $fh "path=", $w->fullpkgpath, "\n";
			if ($core->{inmem}) {
				print $fh "mem=$core->{inmem}\n";
				$w->{mem_affinity} = $core->{inmem};
			}
			close $fh;
		}
	    });
}

# when we see a package is already done, we have no way of knowing which
# MULTI_PACKAGES led to that, so we just unmark a single file
sub unmark
{
	my ($self, $v) = @_;
	$self->run_as(
	    sub {
		unlink($self->affinity_marker($v));
		delete $v->{affinity};
		delete $v->{mem_affinity};
	    });
}

# on the other hand, when we finish building a port, we can unmark all paths.
sub finished
{
	my ($self, $v) = @_;
	for my $w ($v->build_path_list) {
		$self->unmark($w);
	}
}

sub retrieve_existing_markers
{
	my ($self, $logger) = @_;
	my $log = $logger->open('affinity');
	opendir(my $d, $self->{dir}) or return;
	while (my $e = readdir $d) {
		next unless -f "$self->{dir}/$e";
		open my $fh, '<', "$self->{dir}/$e" or return;
		my ($hostname, $pkgpath, $memory);
		while (<$fh>) {
			chomp;
			if (m/^host\=(.*)/) {
				$hostname = $1;
			}
			if (m/^path\=(.*)/) {
				$pkgpath = $1;
			}
			if (m/^mem\=(.*)/) {
				$memory = $1;
			}
		}
		close $fh;
		next unless (defined $pkgpath) && (defined $hostname);

		my $v = DPB::PkgPath->new($pkgpath);
		$v->{affinity} = $hostname;
		if ($memory) {
			$v->{mem_affinity} = $memory;
		}
		print $log "$$:", $v->fullpkgpath, " => ", $hostname, "\n";
	}
	close $log;
}

sub simplifies_to
{
	my ($self, $v, $w) = @_;
	for my $tag ("affinity", "mem_affinity") {
		if (defined $v->{$tag}) {
			$w->{$tag} //= $v->{$tag};
		}
		if (defined $w->{$tag}) {
			$v->{$tag} //= $w->{$tag};
		}
	}
}

my $queued = {};

sub sorted
{
	my ($self, $queue, $core) = @_;
	# okay, we know we have affinity stuff in the queue (maybe, so we want to do something special here
	# maybe...
	my $n = $core->hostname;
	if ($queued->{$n}) {
		# XXX for now, look directly inside the queue
		my @l = grep 
		    { defined($_->{affinity}) && $_->{affinity} eq $n } 
		    values %{$queue->{o}};
		if (@l == 0) {
			delete $queued->{$n};
		} else {
			return DPB::AffinityQueue->new(\@l, $queue, $core);
		}
	}
	return $queue->sorted($core);
}

sub has_in_queue
{
	my ($self, $v) = @_;
	if (defined $v->{affinity}) {
		$queued->{$v->{affinity}} = 1;
	}
}

package DPB::AffinityQueue;
sub new
{
	my ($class, $l, $queue, $core) = @_;
	bless { l => $l, 
	    queue => $queue, 
	    core => $core}, $class;
}

sub next
{
	my $self = shift;
	if (@{$self->{l}} > 0) {
		return pop @{$self->{l}};
	}
	if (!defined $self->{sorted}) {
		$self->{sorted} = 
		    $self->{queue}->sorted($self->{core});
	}
	return $self->{sorted}->next;
}

1;
