#!/bin/sh
#
# $OpenBSD: tetex_setup.sh,v 1.3 2005/02/21 21:36:07 sturm Exp $
#
# This file is NOT part of teTeX itself, but only of the OpenBSD port of
# teTeX. For questions please contact the port's MAINTAINER.
#

. %%SYSCONFDIR%%/tetex.cfg

TEXCONFIG=%%PREFIX%%/bin/texconfig-sys

if [ "X${MODE}" != "X" ]; then
	$TEXCONFIG mode $MODE
	$TEXCONFIG dvips mode $MODE
fi

if [ "X${PS_DVIPDFM}" != "X" ]; then
	$TEXCONFIG dvipdfm paper $PS_DVIPDFM
fi
if [ "X${PS_DVIPS}" != "X" ]; then
	$TEXCONFIG dvips paper $PS_DVIPS
fi
if [ "X${PS_PDFTEX}" != "X" ]; then
	$TEXCONFIG pdftex paper $PS_PDFTEX
fi
if [ "X${PS_XDVI}" != "X" ]; then
	$TEXCONFIG xdvi paper $PS_XDVI
fi

if [ "X${DVIPS_PRINTCMD}" != "X" ]; then
	$TEXCONFIG dvips printcmd $DVIPS_PRINTCMD
fi
