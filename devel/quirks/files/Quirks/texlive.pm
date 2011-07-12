# ex:ts=8 sw=4:
# $OpenBSD: texlive.pm,v 1.1 2011/07/12 21:25:39 espie Exp $
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

package OpenBSD::PackingElement;
sub texlive_nullify
{
}


package OpenBSD::PackingElement::Unexec;
sub texlive_nullify
{
	my ($self, $rchange) = @_;
	$self->{name} = "quirk: ".$self->{name};
	$$rchange = 1;
	bless $self, "OpenBSD::PackingElement::Comment";
}

package OpenBSD::PackingElement::Sample;
sub texlive_nullify
{
	my ($self, $rchange) = @_;
	return unless $self->{name} eq 'share/texmf/web2c/updmap.cfg';
	OpenBSD::PackingElement::Unexec::texlive_nullify($self, $rchange);
}

package OpenBSD::Quirks::texlive;

sub quick_add
{
	my ($plist, $fullname) = @_;

	return unless -f $fullname;
	my $fname = $fullname;
	$fname =~ s,^/usr/local/,,;
	my $o = OpenBSD::PackingElement::File->new($fname);
	if (-l $fullname) {
		$o->{symlink} = readlink($fullname);
	}
	# avoid checksumming them
	$o->{nochecksum} = 1;
	$o->add_object($plist);
}

sub unfuck
{
	my ($handle, $state) = @_;
	my $pkgname = $handle->pkgname;
	my $plist = OpenBSD::PackingList->from_installation($pkgname);
	my $changed = 0;

	# texlive_base has junk which we need to clear
	if ($pkgname =~ m/^texlive_base-2009/) {
		# we need to alter its packing-list
		require File::Find;
		File::Find::find(
		    sub {
			return unless -f $_;
			return unless m/\.(base|fmt|map|mem)$/;
			# quick and dirty pseudo-reg of all dup files
			quick_add($plist, $File::Find::name);
		    }, 
		    '/usr/local/share/texmf-var');
		quick_add($plist, '/usr/local/share/texmf/web2c/fmtutil.cnf');
		$changed = 1;
	}

	if ($pkgname =~ m/^texlive_base-2009/ ||
	    $pkgname eq "texlive_texmf-minimal-2010p0" ||
	    $pkgname eq "texlive_texmf-minimal-2010") {

		quick_add($plist, '/usr/local/share/texmf/web2c/updmap.cfg');

		# add links that were outside the plist
                foreach my $link (qw(lamed dvilualatex dviluatex
		    lualatex metafun mfplain
                    amstex cslatex csplain eplain etex jadetex latex
                    mex mllatex mltex pdfcslatex pdfcsplain pdfetex
                    pdfjadetex pdflatex pdfmex pdfxmltex physe
                    phyzzx texsis utf8mex xmltex platex xelatex)) {
			quick_add($plist, '/usr/local/bin/'.$link);
		}
		$changed = 1;
	}

	# nullify some scripts which can't run upgrading 2009 and some 2010
	if($pkgname =~ m/^texlive_.*2009/ ||
	    $pkgname eq "texlive_base-2010p1" ||
	    $pkgname eq "texlive_base-2010p0" ||
	    $pkgname eq "texlive_base-2010" ||
	    $pkgname eq "texlive_texmf-full-2010" ||
	    $pkgname eq "texlive_texmf-docs-2010" ||
	    $pkgname eq "texlive_texmf-minimal-2010p0" ||
	    $pkgname eq "texlive_texmf-minimal-2010") {

		# we need to alter its packing-list
		$plist->texlive_nullify(\$changed);
	}
	if ($changed) {
		$plist->to_installation;
	}
}

1;
