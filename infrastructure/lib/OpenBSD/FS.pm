# $OpenBSD: FS.pm,v 1.3 2014/07/19 07:04:42 ajacoutot Exp $
# Copyright (c) 2008 Marc Espie <espie@openbsd.org>
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

sub new
{
	my ($class, $filename, $type, $owner, $group) = @_;
	bless {path =>$filename, type => $type, owner => $owner, 
	    group => $group}, $class
}

sub type
{
	shift->{type};
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

package OpenBSD::FS;

my $destdir;
use OpenBSD::Mtree;
use File::Find;
use File::Spec;
use File::Basename;
use OpenBSD::IdCache;
use Config;
# existing files are classified according to the following routine

sub get_type
{
	my $filename = shift;
	if (-d $filename && !-l $filename) {
		return "directory";
	} elsif (is_subinfo($filename)) {
		return "subinfo";
	} elsif (is_info($filename)) {
		return "info";
	} elsif (is_dir($filename)) {
		return "dir";
	} elsif (is_manpage($filename)) {
		return "manpage";
	} elsif (is_library($filename)) {
		return "library";
	} elsif (is_plugin($filename)) {
		return "plugin";
	} elsif (is_binary($filename)) {
		return "binary";
	} else {
		return "file";
	}
}

# symlinks are usually given in a DESTDIR setting, any operation
# beyond filename checking gets through resolve_link

sub resolve_link
{
	my $filename = shift;
	my $level = shift || 0;
	if (-l $filename) {
		my $l = readlink($filename); 
		if ($level++ > 14) {
			print STDERR "Symlink too deep: $filename\n";
			return $filename;
		}
		if ($l =~ m|^/|) {
			return $destdir.resolve_link($l, $level);
		} else {
			return resolve_link(File::Spec->catfile(dirname($filename),$l), $level);
		}
	} else {
		return $filename;
	}
}

sub is_shared_object
{
	my $filename = shift;
	$filename = resolve_link($filename);
	my $check=`/usr/bin/file \Q$filename\E`;
	chomp $check;
	if (($check =~m/\: ELF (32|64)-bit (MSB|LSB) shared object\,/ &&
	    $check !~m/^.*(uses shared libs)/) ||
	    $check =~m/OpenBSD\/.* demand paged shared library/) {
	    	return 1;
	} else {
		return 0;
	}
}

sub is_library
{
	my $filename = shift;

	return 0 unless $filename =~ m/\/lib[^\/]*\.so\.\d+\.\d+$/;
	return is_shared_object($filename);
}

sub is_binary
{
	my $filename = shift;
	return 0 if -l $filename or ! -x $filename;
	my $check=`/usr/bin/file \Q$filename\E`;
	chomp $check;
	if ($check =~m/\: (setuid |setgid |)ELF (32|64)-bit (MSB|LSB) (executable|shared object)\,.+ for OpenBSD\,/) {
	    	return 1;
	} else {
		return 0;
	}
}

sub is_plugin
{
	my $filename = shift;

	return 0 unless $filename =~ m/\.so$/;
	return is_shared_object($filename);
}

sub is_info
{
	my $filename = shift;
	return 0 unless $filename =~ m/\.info$/ or $filename =~ m/info\/[^\/]+$/;
	$filename = resolve_link($filename);
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

sub is_manpage
{
	local $_ = shift;
	if (m,/man/(?:[^/]*?/)?man(.*?)/[^/]+\.\1[[:alpha:]]?(?:\.gz|\.Z)?$,) {
		return 1;
	}
	if (m,/man/(?:[^/]*?/)?man3p/[^/]+\.3(?:\.gz|\.Z)?$,) {
		return 1;
	}
	if (m,/man/(?:[^/]*/)?cat.*?/[^/]+\.0(?:\.gz|\.Z)?$,) {
		return 1;
	}
	if (m,/man/(?:[^/]*/)?(?:man|cat).*?/[^/]+\.tbl(?:\.gz|\.Z)?$,) {
		return 1;
	}
	return 0;
}

sub is_dir
{
	my $filename = shift;
	return 0 unless $filename =~ m/\/dir$/;
	$filename = resolve_link($filename);
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

sub is_subinfo
{
	my $filename = shift;
	if ($filename =~ m/^(.*\.info)\-\d+$/ or
	    $filename =~ m/^(.*info\/[^\/]+)\-\d+$/) {
		return is_info($1);
	}
	if ($filename =~ m/^(.*)\.\d+in$/) {
		return is_info("$1.info");
	}
	return 0;
}

sub undest
{
	my $filename = shift;
	if ($filename =~ m/^\Q$destdir\E/) {
		$filename = $';
	}
	$filename='/' if $filename eq '';
	return $filename;
}

# check that $fullname is not the only entry in its directory
sub has_other_entry
{
	my $fullname = shift;
	use Symbol;

	my $dir = gensym;
	opendir($dir, dirname($fullname)) or return 0;
	while (my $e = readdir($dir)) {
		next if $e eq '.' or $e eq '..';
	    	next if $e eq basename($fullname);
		return 1;
	}
	return 0;
}

# zap directories going up if there is nothing but that filename.
# used to zap .perllocal, dir, and other stuff.
sub zap_dirs
{
	my ($dirs, $fullname) = @_;
	return if has_other_entry($fullname);
	my $d = dirname($fullname);
	return if $d eq $destdir;
	delete $dirs->{undest($d)};
	zap_dirs($dirs, $d);
}

# find all objects that need registration, mark them according to type.
sub scan_destdir
{
	my %files;
	my %okay_files=map { $_=>1 } split(/\s+/, $ENV{'OKAY_FILES'});

	my $installsitearch = $Config{'installsitearch'};
	my $archname = $Config{'archname'};
	my $installprivlib = $Config{'installprivlib'};
	my $installarchlib = $Config{'installarchlib'};
	my $uid_lookup = OpenBSD::UnameCache->new;
	my $gid_lookup = OpenBSD::GnameCache->new;

	find(
		sub {
			return if defined $okay_files{$File::Find::name};
			my $type = get_type($File::Find::name);
			if ($type eq "dir" or
			    $type eq 'subinfo' or
			    $File::Find::name =~ m,\Q$installsitearch\E/auto/.*/\.packlist$, or
			    $File::Find::name =~ m,\Q$installarchlib/perllocal.pod\E$, or
			    $File::Find::name =~ m,\Q$installsitearch/perllocal.pod\E$, or
			    $File::Find::name =~ m,\Q$installprivlib/$archname/perllocal.pod\E$,) {
			    	zap_dirs(\%files, $File::Find::name);
				return;
			}
			return if $File::Find::name =~ m/pear\/lib\/\.(?:filemap|lock)$/;
			my $path = undest($File::Find::name);
			my ($uid, $gid) = (lstat $_)[4,5];
			$path =~ s,^/etc/X11/app-defaults\b,/usr/local/lib/X11/app-defaults,;
			$files{$path} = OpenBSD::FS::File->new($path, $type, 
			    $uid_lookup->lookup($uid), 
			    $gid_lookup->lookup($gid));
		}, $destdir);
	zap_dirs(\%files, $destdir.'/etc/X11/app-defaults');
	return \%files;
}

# build a hash of files needing registration
sub get_files
{
	$destdir = shift;
	my $files = scan_destdir();
	my $mtree = {};
	OpenBSD::Mtree::parse($mtree, '/', '/etc/mtree/4.4BSD.dist');
	OpenBSD::Mtree::parse($mtree, '/', '/etc/mtree/BSD.x11.dist');
	$mtree->{'/usr/local/lib/X11'} = 1;
	$mtree->{'/usr/local/include/X11'} = 1;
	$mtree->{'/usr/local/lib/X11/app-defaults'} = 1;
	# zap /usr/libdata/xxx from perl install
	$mtree->{$Config{'installarchlib'}} = 1;
	$mtree->{dirname($Config{'installarchlib'})} = 1;

	# make sure main mtree is removed 
	for my $d (keys %$mtree) {
		delete $files->{$d}
	}
	return $files;
}



1;
