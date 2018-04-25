# $OpenBSD: FS2.pm,v 1.1 2018/04/25 19:07:07 espie Exp $
# Copyright (c) 2018 Marc Espie <espie@openbsd.org>
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

package OpenBSD::FS::File;

use OpenBSD::IdCache;

sub new
{
	my ($class, $filename, $owner, $group) = @_;
	bless {path =>$filename, owner => $owner, group => $group}, $class
}

sub path
{
	shift->{path};
}

sub owner
{
	shift->{owner};
}

sub group
{
	shift->{group};
}

sub may_queue
{
}

my $uid_lookup = OpenBSD::UnameCache->new;
my $gid_lookup = OpenBSD::GnameCache->new;

sub create
{
	my ($class, $path, $fs) = @_;

	my ($uid, $gid) = (lstat $fs->destdir($path))[4,5];
	$path =~ s,^/etc/X11/app-defaults\b,/usr/local/lib/X11/app-defaults,;
	return $class->new($path,
	    $uid_lookup->lookup($uid), $gid_lookup->lookup($gid));
}

sub classes
{
	return (qw(OpenBSD::FS::File::Directory OpenBSD::FS::File::Rc
		OpenBSD::FS::File::Subinfo OpenBSD::FS::File::Info
		OpenBSD::FS::File::Dirinfo OpenBSD::FS::File::Manpage
		OpenBSD::FS::File::PreLibrary OpenBSD::FS::File::PreBinary
		OpenBSD::FS::File));
}

sub recognize
{
	return 1;
}

package OpenBSD::FS::File::Directory;
our @ISA = qw(OpenBSD::FS::File);
sub recognize
{
	my ($class, $filename, $fs) = @_;
	return -d $fs->destdir($filename) && !-l $fs->destdir($filename);
}

package OpenBSD::FS::File::Rc;
our @ISA = qw(OpenBSD::FS::File);

sub recognize
{
	my ($class, $filename, $fs) = @_;
	return $filename =~ m,/rc\.d/,;
}

package OpenBSD::FS::File::Pre;
our @ISA = qw(OpenBSD::FS::File);

sub may_queue
{
	my ($self, $runner) = @_;
	$runner->queue($self);
}

sub falseclass
{
	return "OpenBSD::FS::File";
}

sub reclassify
{
	my ($self, $check) = @_;
	if ($self->match($check)) {
		bless $self, $self->trueclass;
	} else {
		bless $self, $self->falseclass;
	}
}

package OpenBSD::FS::File::PreBinary;
our @ISA = qw(OpenBSD::FS::File::Pre);
sub trueclass
{
	return "OpenBSD::FS::File::Binary";
}

sub match
{
	my ($self, $check) = @_;
	if ($check =~ m/^(setuid |setgid |)ELF (32|64)\-bit (MSB|LSB) (executable|shared object)\,.+ for OpenBSD\,/) {
		return 1;
	} else {
		return 0;
	}
}

sub recognize
{
	my ($class, $filename, $fs) = @_;
	$filename = $fs->resolve_link($filename);
	return 0 if -l $filename or ! -x $filename;
	return 1;
}

package OpenBSD::FS::File::Binary;
our @ISA = qw(OpenBSD::FS::File);

package OpenBSD::FS::File::Info;
our @ISA = qw(OpenBSD::FS::File);

sub recognize
{
	my ($class, $filename, $fs) = @_;
	return 0 unless $filename =~ m/\.info$/ or $filename =~ m/info\/[^\/]+$/;
	$filename = $fs->resolve_link($filename);
	open my $fh, '<', $filename or return 0;
	my $tag = <$fh>;
	return 0 unless defined $tag;
	$tag .= <$fh>;
	close $fh;
	if ($tag =~ /^This\sis\s.*,\sproduced\sby\s[Mm]akeinfo(?:\sversion\s|\-)?.*[\d\s]from/s ||
	    $tag =~ /^Dies\sist\s.*,\shergestellt\svon\s[Mm]akeinfo(?:\sVersion\s|\-)?.*[\d\s]aus/s) {
		return 1;
	} else {
		return 0;
	}
}


package OpenBSD::FS::File::Subinfo;
our @ISA = qw(OpenBSD::FS::File::Info);
sub recognize
{
	my ($class, $filename, $fs) = @_;
	if ($filename =~ m/^(.*\.info)\-\d+$/ or
	    $filename =~ m/^(.*info\/[^\/]+)\-\d+$/) {
		return $class->SUPER::recognize($1, $fs);
	}
	if ($filename =~ m/^(.*)\.\d+in$/) {
		return $class->SUPER::recognize("$1.info");
	}
	return 0;
}

package OpenBSD::FS::File::Dirinfo;
our @ISA = qw(OpenBSD::FS::File::Subinfo);

sub recognize
{
	my ($class, $filename, $fs) = @_;
	return 0 unless $filename =~ m/\/dir$/;
	$filename = $fs->resolve_link($filename);
	open my $fh, '<', $filename or return 0;
	my $tag = <$fh>;
	chomp $tag;
	$tag.=" ".<$fh>;
	chomp $tag;
	$tag.=" ".<$fh>;
	close $fh;
	if ($tag =~ /^(?:\-\*\- Text \-\*\-\s+)?This is the file .*, which contains the topmost node of the Info hierarchy/) {
		return 1;
	} else {
		return 0;
	}
}


package OpenBSD::FS::File::Manpage;
our @ISA = qw(OpenBSD::FS::File);
sub recognize
{
	my ($class, $re, $fs) = @_;
	if ($re =~ m,/man/(?:[^/]*?/)?man(.*?)/[^/]+\.\1[[:alpha:]]?(?:\.gz|\.Z)?$,) {
		return 1;
	}
	if ($re =~ m,/man/(?:[^/]*?/)?man3p/[^/]+\.3(?:\.gz|\.Z)?$,) {
		return 1;
	}
	if ($re =~ m,/man/(?:[^/]*/)?cat.*?/[^/]+\.0(?:\.gz|\.Z)?$,) {
		return 1;
	}
	if ($re =~ m,/man/(?:[^/]*/)?(?:man|cat).*?/[^/]+\.tbl(?:\.gz|\.Z)?$,) {
		return 1;
	}
	return 0;
}


package OpenBSD::FS::PreSharedObject;
our @ISA = qw(OpenBSD::FS::File::Pre);
sub recognize
{
	return 1;
}

sub match
{
	my ($self, $check) = @_;
	if (($check =~m/^ELF (32|64)-bit (MSB|LSB) shared object\,/ &&
	    $check !~m/\(uses shared libs\)/) ||
	    $check =~m/OpenBSD\/.* demand paged shared library/) {
	    	return 1;
	} else {
		return 0;
	}
}

package OpenBSD::FS::SharedObject;
our @ISA = qw(OpenBSD::FS::File);

package OpenBSD::FS::File::PreLibrary;
our @ISA = qw(OpenBSD::FS::PreSharedObject);
sub recognize
{
	my ($class, $filename, $fs) = @_;

	return 0 unless $filename =~ m/\/lib[^\/]*\.so\.\d+\.\d+$/;
	return $class->SUPER::recognize($filename, $fs);
}

sub trueclass
{
	return "OpenBSD::FS::File::Library";
}

package OpenBSD::FS::File::Library;
our @ISA = qw(OpenBSD::FS::SharedObject);

package OpenBSD::FS::File::PrePlugin;
our @ISA = qw(OpenBSD::FS::PreSharedObject);
sub recognize
{
	my ($class, $filename, $fs) = @_;

	return 0 unless $filename =~ m/\.so$/;
	return $class->SUPER::recognize($filename, $fs);
}

sub trueclass
{
	return "OpenBSD::FS::File::Plugin";	
}

package OpenBSD::FS::File::Plugin;
our @ISA = qw(OpenBSD::FS::SharedObject);

package FileRunner;
sub new
{
	my ($class, $fs) = @_;
	bless { fs => $fs, queue => []}, $class;
}

sub queue
{
	my ($self, $e) = @_;
	push @{$self->{queue}}, $e;
	if (@{$self->{queue}} > 1000) {
		$self->run;
	}
}

sub run
{
	my $self = shift;
	return if @{$self->{queue}} == 0;
	my $fs = $self->{fs};
	my @args = map {$fs->resolve_link($_->path)} @{$self->{queue}};
	open my $pipe, "-|", '/usr/bin/file', '--', @args;
	while (<$pipe>) {
		chomp;
		last if @{$self->{queue}} == 0;
		my $file = shift @{$self->{queue}};
		my $arg = shift @args;
		if (m/^\Q$arg\E\:\s+(.*)$/) {
			$file->reclassify($1);
		} else {
			print "Mismatch between $_ and $arg\n";
		}
	}
}

package OpenBSD::FS2;

use OpenBSD::Mtree;
use File::Find;
use File::Spec;
use File::Basename;
use OpenBSD::IdCache;
use Config;
# existing files are classified according to the following routine

sub new
{
	my ($class, $destdir, $ignored) = @_;
	bless {destdir => $destdir, ignored => $ignored}, $class;
}

sub reclassify
{
	my ($self, $h) = @_;
	my $filerunner = FileRunner->new($self);
	for my $o (values %$h) {
		$o->may_queue($filerunner);
	}
	$filerunner->run;
}

sub destdir
{
	my $self = shift;
	if (@_ == 0) {
		return $self->{destdir};
	} else {
		return $self->{destdir}."/".shift;
	}
}

# we are given a filename which lives actually under destdir.
# but if it's a symlink, we WILL follow through;
sub resolve_link
{
	my ($self, $filename, $level) = @_;
	$level //= 0;
	my $solved = $self->destdir($filename);
	if (-l $solved) {
		my $l = readlink($solved);
		if ($level++ > 14) {
			print STDERR "Symlink too deep: $solved\n";
			return $solved;
		}
		if ($l =~ m|^/|) {
			return $self->resolve_link($l, $level);
		} else {
			return $self->resolve_link(File::Spec->catfile(dirname($filename),$l), $level);
		}
	} else {
		return $solved;
	}
}

sub mtree
{
	use OpenBSD::Mtree;

	my $self = shift;

	if (!defined $self->{mtree}) {
		my $mtree = $self->{mtree} = {};
#		OpenBSD::Mtree::parse($mtree, '/usr/local', '/etc/mtree/BSD.local.dist');
		OpenBSD::Mtree::parse($mtree, '/', '/etc/mtree/4.4BSD.dist');
		OpenBSD::Mtree::parse($mtree, '/', '/etc/mtree/BSD.x11.dist');
		$mtree->{'/usr/local/lib/X11'} = 1;
		$mtree->{'/usr/local/include/X11'} = 1;
		$mtree->{'/usr/local/lib/X11/app-defaults'} = 1;
		# zap /usr/libdata/xxx from perl install
		$mtree->{$Config{'installarchlib'}} = 1;
		$mtree->{dirname($Config{'installarchlib'})} = 1;
	}
	return $self->{mtree};
}

sub undest
{
	my ($self, $filename) = @_;
	$filename =~ s/^\Q$self->{destdir}\E//;
	$filename='/' if $filename eq '';
	return $filename;
}

sub create
{
	my ($self, $filename) = @_;
	for my $class (OpenBSD::FS::File->classes) {
		if ($class->recognize($filename, $self)) {
			return $class->create($filename, $self);
		}
	}
}

# check that $fullname is not the only entry in its directory
sub has_other_entry
{
	my ($self, $dir, $file) = @_;
	use Symbol;

	my $fh = gensym;
	opendir($fh, $self->destdir($dir)) or return 0;
	while (my $e = readdir($fh)) {
		next if $e eq '.' or $e eq '..';
	    	next if $e eq $file;
		return 1;
	}
	return 0;
}

## zap directories going up if there is nothing but that filename.
## used to zap .perllocal, dir, and other stuff.
sub zap_dirs
{
	my ($self, $h, $fullname) = @_;
	my $d = dirname($fullname);
	return if $d eq '/';
	return if $self->has_other_entry($d, basename($fullname));
	delete $h->{$d};
	$self->zap_dirs($h, $d);
}

sub is_perl_path
{
	my ($self, $path) = @_;

	my $installsitearch = $Config{'installsitearch'};
	my $archname = $Config{'archname'};
	my $installprivlib = $Config{'installprivlib'};
	my $installarchlib = $Config{'installarchlib'};

	if ($path =~ m,\Q$installsitearch\E/auto/.*/\.packlist$, or
	    $path =~ m,\Q$installarchlib/perllocal.pod\E$, or
	    $path =~ m,\Q$installsitearch/perllocal.pod\E$, or
	    $path =~ m,\Q$installprivlib/$archname/perllocal.pod\E$,) {
	    	return 1;
	} else {
		return 0;
	}
}

sub scan
{
	my $self = shift;

	my $files = {};
	find(
		sub {
			return if $self->{ignored}{$File::Find::name};
			my $path = $self->undest($File::Find::name);
			return if $self->mtree->{$path};
			return if $path =~ m/pear\/lib\/\.(?:filemap|lock)$/;
			if ($self->is_perl_path($path)) {
				$self->zap_dirs($files, $path);
				return;
			}
			my $file = $self->create($path);
			if ($file->isa("OpenBSD::FS::File::Subinfo")) {
				$self->zap_dirs($files, $path);
				return;
			}
			$files->{$path} = $file;
		}, $self->destdir);
	$self->zap_dirs($files, '/etc/X11/app-defaults');
	$self->reclassify($files);
	return $files;
}

# build a hash of files needing registration
sub fill
{
	my ($class, $destdir, $ignored) = @_;
	my $self = $class->new($destdir, $ignored);

	my $files = $self->scan;

	return $files;
}

1;
