#!/bin/sh
# $Id: mk_openbsd_plists.sh,v 1.1.1.1 2010/08/20 12:04:30 edd Exp $
#
# This is how the texlive 2009 port packing lists were generated.
# Please be aware that a *full* texmf/texmf-dist and tlpdb from the
# texlive svn is required.

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

echo "minimal..."
./rblatter -v -n -t ${TMF} -p share/ -o sets/tetex +scheme-tetex,run

echo "full..."
./rblatter -v -n -t ${TMF} -p share/ -o sets/full \
    +scheme-full,run:-scheme-tetex,doc,src,run

echo "docs..."
./rblatter -v -n -t ${TMF} -p share/ -o sets/docs +scheme-full,doc

echo "done"
