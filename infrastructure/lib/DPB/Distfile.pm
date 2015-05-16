# ex:ts=8 sw=4:
# $OpenBSD: Distfile.pm,v 1.5 2015/05/16 12:23:05 espie Exp $
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

use OpenBSD::md5;
use DPB::User;
package DPB::Distfile;
our @ISA = (qw(DPB::UserProxy));

# same distfile may exist in several ports.

my $cache = {};

sub create
{
	my ($class, $file, $short, $site, $distinfo, $v, $repo) = @_;

	my $sz = $distinfo->{size}{$file};
	my $sha = $distinfo->{sha}{$file};
	if (!defined $sz || !defined $sha) {
		$v->break("Incomplete info for $file");
		return;
	}
	$repo->known_file($sha, $file);
	bless {
		name => $file,
		short => $short,
		sz => $sz,
		sha => $sha,
		site => $site,
		path => $v,
		repo => $repo,
	}, $class;
}

sub user
{
	my $self = shift;
	return $self->{repo}->user;
}

sub distdir
{
	my ($self, @rest) = @_;
	return join('/', $self->{repo}->distdir, @rest);
}

sub logger
{
	my $self = shift;
	return $self->{repo}{logger};
}

sub debug_dump
{
	my $self = shift;
	my $msg = $self->logname;
	if ($self->{okay}) {
		$msg .= "(okay)";
	}
}

sub cached
{
	my $self = shift;
	return $self->{repo}{sha};
}

sub new
{
	my ($class, $file, $url, $dir, @r) = @_;
	my $full = (defined $dir) ? join('/', $dir->string, $file) : $file;
	if (!defined $url) {
		$url = $file;
	}
	$cache->{$full} //= $class->create($full, $url, @r);
}

sub logname
{
	my $self = shift;
	return $self->{path}->fullpkgpath.":".$self->{name};
}

sub lockname
{
	return shift->{name}.".dist";
}

sub simple_lockname
{
	&lockname;
}

# should be used for rebuild_info and logging only

sub fullpkgpath
{
	return shift->{path}->fullpkgpath;
}

sub print_parent
{
	my ($self, $fh) = @_;
	$self->{path}->print_parent($fh);
}

sub pkgpath_and_flavors
{
	return shift->{path}->pkgpath_and_flavors;
}

sub tempfilename
{
	my $self = shift;
	return $self->filename.".part";
}

sub filename
{
	my $self = shift;
	return $self->distdir($self->{name});
}

# this is the entry point from the Engine, this is run as soon as the path
# has been scanned. For performance reasons, we cannot run a sha at that point.
sub check
{
	my $self = shift;
	# XXX in fetch_only mode, we won't build anything, so this is
	# the only place we can check the file is okay
	if ($self->{repo}{fetch_only}) {
		return $self->checksum_and_cache($self->filename);
	} else {
		return $self->checkcache_or_size($self->filename);
	}
}

sub make_link
{
	my $self = shift;
	my $sha = $self->{sha}->stringize;
	if ($sha =~ m/^(..)/) {
		my $result = $self->distdir('by_cipher', 'sha256', $1, $sha);
		$self->make_path($result);
		my $dest = $self->{name};
		$dest =~ s/^.*\///;
		$self->link($self->filename, "$result/$dest");
	}
}

sub find_copy
{
	my ($self, $name) = @_;

	# sha256 must match AND size as well
	my $alternate = $self->{repo}{reverse}{$self->{sha}->stringize};
	if (defined $alternate) {
		my $full = $self->distdir($alternate);
		if (($self->stat($full))[7] == $self->{sz}) {
			$self->unlink($name);
			if ($self->link($full, $name)) {
				$self->do_cache;
				$self->{okay} = 1;
				return 1;
			}
		}
	}
	return 0;
}

sub checkcache_or_size
{
	my ($self, $name) = @_;
	# XXX if we matched once, then we match "forever"
	return 1 if $self->{okay};
	if (defined $self->cached->{$self->{name}}) {
		return $self->checkcached($name);
	}
	return $self->checksize($name);
}

sub checksize
{
	my ($self, $name) = @_;
	# XXX if we matched once, then we match "forever"
	return 1 if $self->{okay};
	if ($self->{sz} == 0) {
		my $fh = $self->logger->append('dist/'.$self->{name});
		print $fh "incomplete distinfo: no size\n";
	}
		
	if (!$self->stat($name)) {
		return $self->find_copy($name);
	}
	if (($self->stat($name))[7] != $self->{sz}) {
		my $fh = $self->logger->append('dist/'.$self->{name});
		print $fh "size does not match\n";
		return 0;
	}
	return 1;
}

sub checkcached
{
	my ($self, $name) = @_;
	if (!defined $self->{sha}) {
		my $fh = $self->logger->append('dist/'.$self->{name});
		print $fh "incomplete distinfo: no sha\n";
		return 0;
	}
	if ($self->cached->{$self->{name}}->equals($self->{sha})) {
		$self->{okay} = 1;
		return 1;
	} else {
		delete $self->cached->{$self->{name}};
		my $fh = $self->logger->append('dist/'.$self->{name});
		print $fh "sha cache info does not match,";
		if ($self->caches_okay($name)) {
			print $fh "but actual file had the right sha\n";
			return 1;
		} else {
			print $fh "and actual file was wrong, deleted\n";
			return 0;
		}
	}
}

sub do_cache
{
	my $self = shift;

	eval {
	$self->make_link;
	print {$self->{repo}->{log}} "SHA256 ($self->{name}) = ",
	    $self->{sha}->stringize, "\n";
	};
	# also enter ourselves into the internal repository
	$self->cached->{$self->{name}} = $self->{sha};
}

# this is where we actually enter new files in the cache, when they do match.
sub caches_okay
{
	my ($self, $name) = @_;
	$self->run_as(
	    sub {
		if (-f -r $name) {
			if (OpenBSD::sha->new($name)->equals($self->{sha})) {
				$self->{okay} = 1;
				$self->do_cache;
				return 1;
			} else {
				unlink($name);
			}
		}
		return 0;
	    });
}

sub checksum_and_cache
{
	my ($self, $name) = @_;
	# XXX if we matched once, then we match "forever"
	return 1 if $self->{okay};
	if (!defined $self->{sha}) {
		return 0;
	}
	if (defined $self->cached->{$self->{name}}) {
		return $self->checkcached($name);
	}
	if ($self->caches_okay($name)) {
		return 1;
	}
	return $self->find_copy($name);
}

sub cache
{
	my $self = shift;
	# XXX if we matched once, then we match "forever"
	return 1 if $self->{okay};
	$self->{okay} = 1;
	# already done
	if (defined $self->cached->{$self->{name}}) {
		if ($self->cached->{$self->{name}}->equals($self->{sha})) {
			return;
		}
	}
	$self->do_cache;
}

sub checksum
{
	my ($self, $name) = @_;
	# XXX if we matched once, then we match "forever"
	return 1 if $self->{okay};
	print "checksum for $name: ";
	if (!defined $self->{sha}) {
		print "NONE\n";
		return 0;
	}
	if (defined $self->cached->{$self->{name}}) {
		if ($self->cached->{$self->{name}}->equals($self->{sha})) {
			print "OK (cached)\n";
			$self->{okay} = 1;
			return 1;
		}
	}
	if ($self->caches_okay($name)) {
		print "OK\n";
		return 1;
	}
	print "BAD\n";
	return 0;
}

sub cached_checksum
{
	my ($self, $fh, $name) = @_;
	# XXX if we matched once, then we match "forever"
	return 1 if $self->{okay};
	print $fh "checksum for $name: ";
	if (!defined $self->{sha}) {
		print $fh "NONE\n";
		return 0;
	}
	if (defined $self->cached->{$self->{name}}) {
		if ($self->cached->{$self->{name}}->equals($self->{sha})) {
			print $fh "OK (cached)\n";
			$self->{okay} = 1;
			return 1;
		}
	}
	print $fh "UNKNOWN (uncached)\n";
	return 0;
}

sub unlock_conditions
{
	my ($self, $engine) = @_;
	return $self->check;
}

sub requeue
{
	my ($v, $engine) = @_;
	$engine->requeue_dist($v);
}

sub forget
{
	my $self = shift;
	delete $self->{size};
	delete $self->{sha};
	delete $self->{okay};
}

1;
