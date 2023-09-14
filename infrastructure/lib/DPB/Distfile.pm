# ex:ts=8 sw=4:
# $OpenBSD: Distfile.pm,v 1.29 2023/09/14 15:17:38 espie Exp $
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

use OpenBSD::md5;
use DPB::User;
package DPB::Distfile;
our @ISA = (qw(DPB::UserProxy));

# same distfile may exist in several ports.
# so we keep a hash based on full storage path.

sub normalize($class, $file)
{
	# XXX collapse name/../ aka "semarie rule"
	while ($file =~ s/[^\/]+\/\.\.\///) {
	}
	# remove duplicate slashes as well
	while ($file =~ s/\/\/+/\//g) {
	}
	return $file;
}

my $cache = {};

sub create($class, $file, $short, $site, $distinfo, $, $v, $repo)
{
	bless {
		name => $file,
		short => $short,
		path => $v,
		repo => $repo,
		sz => 0
	}, $class;
}

# complete object with sha/size info, error out if not same info
sub complete($self, $file, $short, $site, $distinfo, $fname, $v, $repo)
{
	my $sz = $distinfo->{size}{$file};
	my $sha = $distinfo->{sha}{$file};
	my $error = 0;
	if (!defined $sz && !defined $sha) {
		if (defined $distinfo->{error}) {
			$v->break("Missing info for $file because $fname couldn't be read: $distinfo->{error}");
		} else {
			$v->break("Missing info for $file in $fname");
		}
		return;
	}
	if (!defined $sz) {
		$v->break("Missing size for $file in $fname");
		return;
	}
	if (!defined $sha) {
		$v->break("Missing sha for $file in $fname");
		return;
	}
	# XXX todo reset object correctly so that sz is always defined
	if ($self->{sz} != 0) {
		if ($self->{sz} != $sz) {
			$v->break("Inconsistent info for $file in $fname: $self->{sz} vs $sz(".$v->fullpkgpath." vs ".$self->{path}->fullpkgpath.")");
			$error = 1;
		}
		if (!$self->{sha}->equals($sha)) {
			$v->break("Inconsistent info for $file  in $fname". 
			    $self->{sha}->stringize. " vs ". $sha->stringize.
			    "(".$v->fullpkgpath." vs ".
			    $self->{path}->fullpkgpath.")");
			$error = 1;
		}
	}
	if ($error) {
		return;
	} else {
		$repo->known_file($sha, $file);
		$self->{sz} = $sz;
		$self->{sha} = $sha;
		$self->{site} = $site;
		return $self;
	}
}

sub new($class, $file, $url, $dir = undef, @r)
{
	my $full = (defined $dir) ? join('/', $dir->string, $file) : $file;

	$full = DPB::Distfile->normalize($full);
		
	if (!defined $url) {
		$url = $file;
	}
	my $c = $cache->{$full} //= $class->create($full, $url, @r);
	$c->complete($full, $url, @r);
	return $c;
}

sub user($self)
{
	return $self->{repo}->user;
}

sub distdir($self, @rest)
{
	return join('/', $self->{repo}->distdir, @rest);
}

sub path($self)
{
	return $self->{path};
}

sub logger($self)
{
	return $self->{repo}{logger};
}

sub debug_dump($self)
{
	my $msg = $self->logname;
	if ($self->{okay}) {
		$msg .= "(okay)";
	}
}

sub cached($self)
{
	return $self->{repo}{sha};
}

sub logname($self)
{
	return $self->{path}->fullpkgpath.":".$self->{name};
}

sub lockname($self)
{
	return $self->{name}.".dist";
}

sub simple_lockname	# forwarder
{
	&lockname;
}

sub log_as_built($, $)
{
	# only applies to packages
}

# should be used for rebuild_info and logging only

sub fullpkgpath($self)
{
	return $self->{path}->fullpkgpath;
}

sub print_parent($self, $fh)
{
	$self->{path}->print_parent($fh);
}

sub write_parent($self, $lock)
{
	$self->{path}->write_parent($lock);
}
sub pkgpath_and_flavors($self)
{
	return $self->{path}->pkgpath_and_flavors;
}

sub tempfilename($self)
{
	return $self->filename.".part";
}

sub filename($self)
{
	return $self->distdir($self->{name});
}

# this is the entry point from the Engine, this is run as soon as the path
# has been scanned. For performance reasons, we cannot run a sha at that point.
sub check($self, $)
{
	# XXX in fetch_only mode, we won't build anything, so this is
	# the only place we can check the file is okay
	if ($self->{repo}{fetch_only}) {
		return $self->checksum_and_cache($self->filename);
	} else {
		return $self->checkcache_or_size($self->filename);
	}
}

sub make_link($self)
{
	my $sha = $self->{sha}->stringize;
	if ($sha =~ m/^(..)/) {
		my $result = $self->distdir('by_cipher', 'sha256', $1, $sha);
		$self->make_path($result);
		my $dest = $self->{name};
		$dest =~ s/^.*\///;
		$self->link($self->filename, "$result/$dest");
	}
}

sub find_copy($self, $name)
{
	return 0 if !defined $self->{sha};
	# sha256 must match AND size as well
	my $alternate = $self->{repo}{reverse}{$self->{sha}->stringize};
	if (defined $alternate) {
		my $full = $self->distdir($alternate);
		if ($self->stat($full) && 
		    ($self->stat($full))[7] == $self->{sz}) {
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

sub checkcache_or_size($self, $name)
{
	# XXX if we matched once, then we match "forever"
	return 1 if $self->{okay};
	if (defined $self->cached->{$self->{name}}) {
		return $self->checkcached($name);
	}
	return $self->checksize($name);
}

sub checksize($self, $name)
{
	# XXX if we matched once, then we match "forever"
	return 1 if $self->{okay};
	if (!defined $self->{sz}) {
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

sub checkcached($self, $name)
{
	if (!defined $self->{sha}) {
		my $fh = $self->logger->append('dist/'.$self->{name});
		print $fh "incomplete distinfo: no sha\n";
		return 0;
	}
	if (!defined $self->{sz}) {
		my $fh = $self->logger->append('dist/'.$self->{name});
		print $fh "incomplete distinfo: no size\n";
		return 0;
	}
	if (!$self->stat($name) || ($self->stat($name))[7] != $self->{sz}) {
		delete $self->cached->{$self->{name}};
		delete $self->{repo}{reverse}{$self->{sha}->stringize};
		$self->run_as(
		    sub() {
			unlink($name);
		    });
		my $fh = $self->logger->append('dist/'.$self->{name});
		print $fh "size does not match, actual file deleted\n";
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

sub do_cache($self)
{
	eval {
	    $self->make_link;
	    print {$self->{repo}->{log}} "SHA256 ($self->{name}) = ",
		$self->{sha}->stringize, "\n";
	};
	# also enter ourselves into the internal repository
	$self->cached->{$self->{name}} = $self->{sha};
}

# this is where we actually enter new files in the cache, when they do match.
sub caches_okay($self, $name)
{
	$self->run_as(
	    sub() {
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

sub checksum_and_cache($self, $name)
{
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

sub cache($self)
{
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

sub checksum($self, $name)
{
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

sub cached_checksum($self, $fh, $name)
{
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

sub unlock_conditions($self, $engine)
{
	return $self->check($engine);
}

sub requeue($v, $engine)
{
	$engine->requeue_dist($v);
}

sub forget($self)
{
	delete $self->{sz};
	delete $self->{sha};
	delete $self->{okay};
}

1;
