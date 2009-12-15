#! /usr/bin/perl

# ex:ts=8 sw=4:
# $OpenBSD: Quirks.pm,v 1.9 2009/12/15 11:40:48 espie Exp $
#
# Copyright (c) 2009 Marc Espie <espie@openbsd.org>
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
use OpenBSD::PackageName;

package OpenBSD::Quirks;

sub new
{
	my ($class, $version) = @_;
	if ($version == 1) {
		return OpenBSD::Quirks1->new;
	} else {
		return undef;
	}
}

package OpenBSD::Quirks1;
use Config;
sub new
{
	my $class = shift;

	bless {}, $class;
}


# ->tweak_list(\@l, $state):
#	allows Quirks to do anything to the list of packages to install,
#	if something is needed. Usually, it won't do anything
sub tweak_list
{
}

# packages to remove
# stem => existing file   hash table
#	if file exists, then it's now in base and we can remove it.

my $p5a = $Config{archlib};
my $p5 = "/usr/libdata/perl5";
my $base_exceptions = {
# very old
	'pkgconfig' => "/usr/bin/pkg-config",
	'expat' => "/usr/lib/libexpat.a",
	'cwm' => "/usr/X11R6/bin/cwm",
	'mergemaster' => "/usr/sbin/sysmerge", 
# 4.5 stuff
	'p5-version' => "$p5/version.pm",
	'p5-Archive-Tar' => "$p5/Archive/Tar.pm",
	'p5-Compress-Zlib' => "$p5a/Compress/Zlib.pm",
	'p5-Compress-Raw-Zlib' => "$p5a/Compress/Raw/Zlib.pm",
	'p5-IO-Compress-Base' => "$p5a/IO/Compress/Base.pm",
	'p5-IO-Compress-Zlib' => "$p5a/IO/Compress/Zlib.pm",
	'p5-IO-Zlib' => "$p5/IO/Zlib.pm",
	'p5-ExtUtils-CBuilder' => "$p5/ExtUtils/CBuilder.pm",
	'p5-ExtUtils-ParseXS' => "$p5/ExtUtils/ParseXS.pm",
	'p5-Locale-Maketext-Simple' => "$p5/Locale/Maketext/Simple.pm",
	'p5-Module-Build' =>  "$p5/Module/Build.pm",
	'p5-Module-CoreList' => "$p5/Module/CoreList.pm",
	'p5-Module-Load' => "$p5/Module/Load.pm",
	'p5-Module-Loaded' => "$p5/Module/Loaded.pm",
	'p5-Module-Pluggable' => "$p5/Module/Pluggable.pm",
	'p5-Time-Piece' => "$p5a/Time/Piece.pm",
	'p5-Digest-SHA' => "$p5a/Digest/SHA.pm",
	'p5-Pod-Escapes' => "$p5/Escapes.pm",
	'p5-Pod-Simple' => "$p5/Pod/Simple.pm",
	'xcompmgr' => "/usr/X11R6/bin/xcompmgr",
# 4.6 stuff
	'tmux' => "/usr/bin/tmux",
# 4.7 stuff
	'p5-Parse-CPAN-Meta' => "$p5/Parse/CPAN/Meta.pm",
};

my $stem_extensions = {
# 4.4
	'teTeX_base-fmt' => 'texlive_base',
	'teTeX_base' => 'texlive_base',
	'teTeX_texmf' => ['texlive_texmf-full', 'texlive_texmf-minimal'],
	'teTeX_texmf-doc' => 'texlive_docs',
# 4.6snap
	'thunar-vcs-plugin' => 'thunar-vcs',
	'fam' => 'libgamin',
	'gstreamer-bz2' => 'gstreamer-plugins-bad',
	'gstreamer-faac' => 'gstreamer-plugins-bad',
	'gstreamer-faad' => 'gstreamer-plugins-bad',
	'gstreamer-gsm' => 'gstreamer-plugins-bad',
	'gstreamer-ladspa' => 'gstreamer-plugins-bad',
	'gstreamer-meta' => 'gstreamer-plugins-bad',
	'gstreamer-musepack' => 'gstreamer-plugins-bad',
	'gstreamer-sdl' => 'gstreamer-plugins-bad',
	'gstreamer-sndfile' => 'gstreamer-plugins-bad',
	'gstreamer-swf' => 'gstreamer-plugins-bad',
	'gstreamer-tremor' => 'gstreamer-plugins-bad',
	'gstreamer-x264' => 'gstreamer-plugins-bad',
	'gstreamer-xvid' => 'gstreamer-plugins-bad',
	'gstreamer-ogg' => 'gstreamer-plugins-base',
	'gstreamer-theora' => 'gstreamer-plugins-base',
	'gstreamer-vorbis' => 'gstreamer-plugins-base',
	'gstreamer-pango' => 'gstreamer-plugins-base',
	'gstreamer-jpeg' => 'gstreamer-plugins-good',
	'gstreamer-png' => 'gstreamer-plugins-good',
	'gstreamer-cairo' => 'gstreamer-plugins-good',
	'gstreamer-confelements' => 'gstreamer-plugins-good',
	'gstreamer-flac' => 'gstreamer-plugins-good',
	'gstreamer-shout' => 'gstreamer-plugins-good',
	'gstreamer-speex' => 'gstreamer-plugins-good',
	'gstreamer-taglib' => 'gstreamer-plugins-good',
	'gstreamer-wavpack' => 'gstreamer-plugins-good',
	'gstreamer-a52' => 'gstreamer-plugins-ugly',
	'gstreamer-mad' => 'gstreamer-plugins-ugly',
	'gstreamer-mpeg2' => 'gstreamer-plugins-ugly',
	'gstreamer-dvdread' => 'gstreamer-plugins-ugly',
};

# ->is_base_system($handle, $state):
#	checks whether an existing handle is now part of the base system
#	and thus no longer needed.

sub is_base_system
{
	my ($self, $handle, $state) = @_;
	my $stem = OpenBSD::PackageName::splitstem($handle->pkgname);
	my $test = $base_exceptions->{$stem};
	if (defined $test) {
		if (-e $test) {
			$state->say("Removing ", $handle->pkgname, 
			    " (part of base system now)");
			return 1;
		} else {
			$state->say("Not removing ", $handle->pkgname,
			 ", ", $test, " not found");
		}
	} else {
		return 0;
	}
}

# ->tweak_search(\@s, $handle, $state):
#	tweaks the normal search for a given handle, in case (for instance)
#	of a stem name change.

sub tweak_search
{
	my ($self, $l, $handle, $state) = @_;

	if (@$l != 1 || !$l->[0]->can("add_stem")) {
		return;
	}
	my $stem = OpenBSD::PackageName::splitstem($handle->pkgname);
	my $extra = $stem_extensions->{$stem};
	if (defined $extra) {
		if (ref $extra) {
			for my $e (@$extra) {
				$l->[0]->add_stem($e);
			}
		} else {
			$l->[0]->add_stem($extra);
		}
	}
}

1;
