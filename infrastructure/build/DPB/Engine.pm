# ex:ts=8 sw=4:
# $OpenBSD: Engine.pm,v 1.1 2010/02/24 11:33:31 espie Exp $
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

package DPB::Engine;

use DPB::Heuristics;
use DPB::Util;

sub new
{
	my ($class, $builder, $heuristics, $logger, $locker) = @_;
	my $o = bless {built => {}, tobuild => {}, 
	    buildable => $heuristics->new_queue,
	    later => {}, building => {},
	    installable => {}, builder => $builder, 
	    packages => {},
	    all => {},
	    heuristics => $heuristics,
	    locker => $locker,
	    logger => $logger,
	    errors => [],
	    ignored => []}, $class;
	$o->{log} = DPB::Util->make_hot($logger->open("engine"));
	$o->{stats} = DPB::Util->make_hot($logger->open("stats"));
	return $o;
}

sub log_no_ts
{
	my ($self, $kind, $v, $extra) = @_;
	$extra //= '';
	my $fh = $self->{log};
	print $fh "$$\@$self->{ts}: $kind: ", $v->fullpkgpath, "$extra\n";
}

sub log
{
	my $self = shift;
	$self->{ts} = time();
	$self->log_no_ts(@_);
}

sub count
{
	my ($self, $field) = @_;
	my $r = $self->{$field};
	if (ref($r) eq 'HASH') {
		return scalar keys %$r;
	} elsif (ref($r) eq 'ARRAY') {
		return scalar @$r;
	} else {
		return "?";
    	}
}

sub errors_string
{
	my $self = shift;
	my @l = ();
	for my $e (@{$self->{errors}}) {
		if (defined $e->{host}) {
			push(@l, $e->fullpkgpath."($e->{host})");
		} else {
			push(@l, $e->fullpkgpath);
		}
	}
	return join(' ', @l);
}

sub report
{
	my $self = shift;
	return join(" ", 
	    "P=".$self->count("packages"),
	    "I=".$self->count("installable"),
	    "B=".$self->count("built"),
	    "Q=".$self->{buildable}->count,
	    "T=".$self->count("tobuild"),
	    "!=".$self->count("ignored"))."\n".
	    "E=".$self->errors_string."\n";
}

sub stats
{
	my $self = shift;
	my $fh = $self->{stats};
	$self->{statline} //= "";
	my $line = join(" ", 
	    "P=".$self->count("packages"),
	    "I=".$self->count("installable"),
	    "B=".$self->count("built"),
	    "Q=".$self->{buildable}->count,
	    "T=".$self->count("tobuild"));
	if ($line ne $self->{statline}) {
		$self->{statline} = $line;
		print $fh $self->{ts}, " ", $line, "\n";
	}
}

my $done_scanning = 0;
sub finished_scanning
{
	my $self = shift;
	$done_scanning = 1;
	# this is scary, we need to do it by-pkgname
	my $needed_by = {};
	my $bneeded_by = {};
	for my $v (values %{$self->{all}}) {
	# also, this is an approximation, we could be more specific wrt
	# BUILD/RUN_DEPENDS, this leads to more code in check_buildable...
		for my $kind (qw(RUN_DEPENDS LIB_DEPENDS)) {
			next unless defined $v->{info}{$kind};
			for my $depend (values %{$v->{info}{$kind}}) {
				next if $depend eq $v;
				$needed_by->{$depend->fullpkgname}{$v} = $v;
			}
		}
		if (defined $v->{info}{BUILD_DEPENDS}) {
			for my $depend (values %{$v->{info}{BUILD_DEPENDS}}) {
				next if $depend eq $v;
				$bneeded_by->{$depend->fullpkgname}{$v} = $v;
			}
		}
	}
	# then we link each pkgpath to its array
	for my $v (values %{$self->{all}}) {
		if (defined $needed_by->{$v->fullpkgname}) {
			$v->{info}{NEEDED_BY} = $needed_by->{$v->fullpkgname};
			bless $v->{info}{NEEDED_BY}, "AddDepends";
		}
		if (defined $bneeded_by->{$v->fullpkgname}) {
			$v->{info}{BNEEDED_BY} = $bneeded_by->{$v->fullpkgname};
			bless $v->{info}{BNEEDED_BY}, "AddDepends";
		}
	}
}

sub important
{
	my $self = shift;
	$self->{lasterrors} //= 0;
	if (@{$self->{errors}} > $self->{lasterrors}) {
		my $i = 0;
		my @msg;
		for my $v (@{$self->{errors}}) {
			next if $i++ < $self->{lasterrors};
			push(@msg, $v->fullpkgpath);
		}
		$self->{lasterrors} = @{$self->{errors}};
		return "Error in ".join(' ', @msg)."\n";
	}
}

sub adjust
{
	my ($self, $v, $kind) = @_;
	return 0 if !exists $v->{info}{$kind};
	my $not_yet = 0;
	for my $d (values %{$v->{info}{$kind}}) {
		$self->{heuristics}->mark_depend($d, $v);
		if ($self->{installable}{$d} || 
		    (defined $d->{info} && 
		    $d->fullpkgname eq $v->fullpkgname)) {
			delete $v->{info}{$kind}{$d};
		} else {
			$not_yet++;
		}
	}
	return $not_yet if $not_yet;
	delete $v->{info}{$kind};
	return 0;
}

sub adjust_extra
{
	my ($self, $v, $kind) = @_;
	return 0 if !exists $v->{info}{$kind};
	my $not_yet = 0;
	for my $d (values %{$v->{info}{$kind}}) {
		$self->{heuristics}->mark_depend($d, $v);
		if ((defined $d->{info} && !$self->{tobuild}{$d}) ||
		    (defined $d->fullpkgname && 
		    $d->fullpkgname eq $v->fullpkgname)) {
			delete $v->{info}{$kind}{$d};
		} else {
			$not_yet++;
		}
	}
	return $not_yet if $not_yet;
	delete $v->{info}{$kind};
	return 0;
}

sub can_package
{
	my ($self, $v) = @_;
	if (defined $v->{info}{NEEDED_BY}) {
		for my $w (values %{$v->{info}{NEEDED_BY}}) {
			if ($self->{packages}{$w}) {
				delete $v->{info}{NEEDED_BY}{$w};
			} else {
				return 0;
			}
		}
	}
	if (defined $v->{info}{BNEEDED_BY}) {
		for my $w (values %{$v->{info}{BNEEDED_BY}}) {
			if ($self->{packages}{$w} || $self->{built}{$w} ||
			    $self->{installable}{$w}) {
				delete $v->{info}{BNEEDED_BY}{$w};
			} else {
				return 0;
			}
		}
	}
	return 1;
}

sub check_buildable
{
	my $self = shift;
	$self->{ts} = time();
	my $changes;
	do {
		$changes = 0;
		# move stuff to packages once we know all reverse dependencies
		if ($done_scanning) {
			for my $v (values %{$self->{installable}}) {
				if ($self->can_package($v)) {
					$self->log_no_ts('P', $v);
					$self->{packages}{$v} = $v;
					delete $self->{installable}{$v};
					$changes++;
				}
			}
		}
		for my $v (values %{$self->{tobuild}}) {
			if ($self->was_built($v)) {
				$changes++;
			} elsif (defined $v->{info}{IGNORE}) {
				delete $self->{tobuild}{$v};
				push(@{$self->{ignored}}, $v);
				$changes++;
			}
		}
		for my $v (values %{$self->{built}}) {
			if ($self->adjust($v, 'RDEPENDS') == 0) {
				delete $self->{built}{$v};
				$self->{installable}{$v} = $v;
				$self->log_no_ts('I', $v);
				$changes++;
			}
		}

		for my $v (values %{$self->{tobuild}}) {
			if ($self->was_built($v)) {
				$changes++;
				next;
			}
			my $has = $self->adjust($v, 'DEPENDS');
			$has += $self->adjust_extra($v, 'EXTRA');
			if ($has == 0) {
				$self->{buildable}->add($v);
				$self->log_no_ts('Q', $v);
				delete $self->{tobuild}{$v};
				$changes++;
			} 
		}
	} while ($changes);
	$self->stats;
}

sub was_built
{
	my ($self, $v) = @_;
	if ($self->{builder}->check($v)) {
		$self->{built}{$v}= $v;
		$self->log('B', $v);
		delete $self->{tobuild}{$v};
		return 1;
	} else {
		return 0;
	}
}
sub new_path
{
	my ($self, $v) = @_;
	$self->{all}{$v} = $v;
	if (!$self->was_built($v)) {
		$self->{tobuild}{$v} = $v;
		$self->log('T', $v);
	}
}

sub end_job
{
	my ($self, $core, $v) = @_;
	my $e = $core->mark_ready;
	if (!$self->was_built($v)) {
		if (!$e || $core->{status} == 65280) {
			$self->{buildable}->add($v);
			$self->{locker}->unlock($v);
			$self->log('N', $v);
		} else {
			push(@{$self->{errors}}, $v);
			$v->{host} = $core->host;
			$self->{locker}->simple_unlock($v);
			$self->log('E', $v);
		}
	} else {
		$self->{locker}->unlock($v);
	}
	$self->job_done($v);
}

sub add_fatal
{
	my ($self, $v) = @_;
	push(@{$self->{errors}}, $v);
	$self->{locker}->lock($v);
}

sub job_done
{
	my ($self, $v) = @_;
	for my $candidate (values %{$self->{later}}) {
		if ($candidate->{pkgpath} eq $v->{pkgpath}) {
			delete $self->{later}{$candidate};
			$self->log('V', $candidate);
			$self->{buildable}->add($candidate);
		}
	}
	delete $self->{building}{$v->{pkgpath}};
	$self->{locker}->recheck_errors($self);
}

sub new_job
{
	my ($self, $core, $v, $lock) = @_;
	my $special = $self->{heuristics}->special_parameters($core, $v);
	$self->log('J', $v, " ".$core->host." ".$special);
	$self->{builder}->build($v, $core, $special,
	    $lock, sub {$self->end_job($core, $v)});
}

sub start_new_job
{
	my $self = shift;
	my $core = $self->{builder}->get;
	my $o = $self->{buildable}->sorted($core);
	while (my $v = $o->next) {
		$self->{buildable}->remove($v);
		if ($self->was_built($v)) {
			$self->{logger}->make_log_link($v);
			$self->job_done($v);
			next;
		}
		if ($self->{building}{$v->{pkgpath}}) {
			$self->{later}{$v} = $v;
			$self->log('^', $v);
		} elsif (my $lock = $self->{locker}->lock($v)) {
			$self->{building}{$v->{pkgpath}} = 1;
			$self->new_job($core, $v, $lock);
			return;
		} else {
			push(@{$self->{errors}}, $v);
			$self->log('L', $v);
		} 
	}
	$core->mark_ready;
}

sub can_build
{
	my $self = shift;
	
	return $self->{buildable}->non_empty;
}

sub dump_category
{
	my ($self, $k, $fh) = @_;
	$fh //= \*STDOUT;

	$k =~ m/^./;
	my $q = "\u$&: ";
	for my $v (sort {$a->fullpkgpath cmp $b->fullpkgpath} 
	    values %{$self->{$k}}) {
		print $fh $q; 
		$v->quick_dump($fh);
	}
}

sub dump
{
	my ($self, $fh) = @_;
	$fh //= \*STDOUT;
	for my $k (qw(packages built tobuild installable)) {
		$self->dump_category($k, $fh);
	}
	print $fh "\n";
}

1;
