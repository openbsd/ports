#!/bin/sh
# $OpenBSD: mk_openbsd_plists.sh,v 1.2 2010/10/20 13:15:55 edd Exp $
#
# This is how the texlive port packing lists were generated.
# Please be aware that a *full* texmf/texmf-dist and tlpdb from the
# texlive svn are required.

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
cat sets/tetex/PLIST | sed 's/share\/texmf\/doc\/man/share\/man/g' \
	| sort > sets/tetex/PLIST_final

echo "\nCalculating PLIST of texlive_texmf-full..."
./rblatter -d -v -n -t ${TMF} -p share/ -o sets/full \
	+scheme-full,run:-scheme-tetex,doc,src,run
cat sets/full/PLIST | sed 's/share\/texmf\/doc\/man/share\/man/g' \
	| sort > sets/full/PLIST_final

echo "\nCalculating PLIST of texlive_texmf-docs..."
./rblatter -d -v -n -t ${TMF} -p share/ -o sets/docs +scheme-full,doc
cat sets/docs/PLIST | sed 's/share\/texmf\/doc\/man/share\/man/g' \
	| sort > sets/docs/PLIST_final

# XXX need to figure out how to futher split docs
#grep -ie '\.1$' -e '\.pdf$' -e '\.html$' -e '\.dvi$' -e '\.ps$' \
#	sets/docs/PLIST | sed 's/share\/texmf\/doc\/man/share\/man/g' \
#	| sort > sets/docs/PLIST_final
#grep -ive '\.1$' -e '\.pdf$' -e '\.html$' -e '\.dvi$' -e '\.ps$' \
#	sets/docs/PLIST | sed 's/share\/texmf\/doc\/man/share\/man/g' \
#	| sort > sets/docs/PLIST_final-sources

echo "\ndone - PLISTS in sets/"
echo "now inspect:"
echo "  - share/texmf/scripts/texlive/* probably un-needed"
echo "  - *.exe obviously a waste of space"
echo "  - search for 'win32' and 'w32' and 'windows'"
echo "  - comment out manual pages and include in _base"
echo "  - bibarts is a DOS program"
echo "  - Not all texworks related stuff is needed"
echo "  - make sure no tlpkg/ sneaked in"
echo "  - etc..."
