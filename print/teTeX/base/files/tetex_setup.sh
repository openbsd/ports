#!/bin/sh
#
# $OpenBSD: tetex_setup.sh,v 1.1 2003/04/04 21:22:15 sturm Exp $
#
# This file is NOT part of teTeX itself, but only of the OpenBSD port of
# teTeX. For questions please contact the port's MAINTAINER.
#

. %%SYSCONFDIR%%/tetex.cfg

TEXCONFIG=%%PREFIX%%/bin/texconfig

if [ "X${MODE}" != "X" ]; then
	$TEXCONFIG mode $MODE
	$TEXCONFIG dvips mode $MODE
fi

if [ "X${PAPERSIZE}" != "X" ]; then
	$TEXCONFIG xdvi $PAPERSIZE
	$TEXCONFIG dvips paper $PAPERSIZE
	$TEXCONFIG dvipdfm paper $PAPERSIZE
	$TEXCONFIG pdftex paper $PAPERSIZE
fi

if [ "X${DVIPS_PRINTCMD}" != "X" ]; then
	$TEXCONFIG dvips printcmd $DVIPS_PRINTCMD
fi
