#!/bin/sh
# Simple tcc wrapper script
#
# $TenDRA: tendra/src/tools/tcc/tcc.sh,v 1.1 2003/03/28 06:27:48 asmodai Exp $
# $OpenBSD: tcc.sh,v 1.1.1.1 2003/08/04 23:37:06 avsm Exp $
#
# Modified for OpenBSD to add extra environment variables
# (default.extra, longlong, static/dynamic)

TENDRA_BASEDIR=%%TENDRA%%

if [ -z "${LDSTATIC}" ]; then
	TCC_LD=-Ydynamic
else
	TCC_LD=-Ystatic
fi

exec ${TENDRA_BASEDIR}/bin/tcc \
   -yTENDRA_BASEDIR=${TENDRA_BASEDIR} \
   -Y${TENDRA_BASEDIR}/env/default \
   -Y${TENDRA_BASEDIR}/env/default.extra \
   -Y${TENDRA_BASEDIR}/env/longlong \
   ${TCC_LD} \
   ${@+"$@"}
