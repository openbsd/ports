#!/bin/sh
# $OpenBSD: mk_openbsd_plists.sh,v 1.4 2012/01/10 18:04:31 edd Exp $
#
# This is how the texlive port packing lists were generated.
# Please be aware that a *full* texmf/texmf-dist and texlive.tlpdb from the
# texlive svn are required.
#
# texlive.tlpdb does not come in the dist tarball, so you need to get
# it from svn from the release date. Eg:
# svn co -r {20110705} svn://tug.org/texlive/trunk/Master/tlpkg
# You can then copy tlpkg/texlive.tlpdb to ${TARBALL_ROOT}/tlpkg/texlive.tlpdb

if [ "$1" = "" ]; then
	TMF="/usr/local/share";
else
	TMF=$1
fi

if [ -d "sets" ]; then
    echo "sets dir exists"
	exit 1
fi

mkdir sets

echo "\nCalculating PLIST of texlive_texmf-minimal (tetex)..."
./rblatter -d -v -n -t ${TMF} -p share/ -o sets/tetex +scheme-tetex,run
cat sets/tetex/PLIST | sort > sets/tetex/PLIST_final

echo "\nCalculating PLIST of texlive_texmf-full..."
./rblatter -d -v -n -t ${TMF} -p share/ -o sets/full \
	+scheme-full,run:-scheme-tetex,doc,src,run
cat sets/full/PLIST | sort > sets/full/PLIST_final

echo "\nCalculating PLIST of texlive_texmf-docs..."
./rblatter -d -v -n -t ${TMF} -p share/ -o sets/docs +scheme-full,doc
cat sets/docs/PLIST | sort > sets/docs/PLIST_final

echo "\ndone - PLISTS in sets/"
echo "now inspect:"
echo "  - move conTeXt stuff into it's own packing list"
echo "  - share/texmf/scripts/texlive/* probably un-needed"
echo "  - *.exe obviously a waste of space"
echo "  - search for 'win32' and 'w32' and 'windows'"
echo "  - comment out manual pages and include in _base"
echo "  - bibarts is a DOS program"
echo "  - not all texworks related stuff is needed"
echo "  - move the manuals in the right place"
echo "  - etc..."
