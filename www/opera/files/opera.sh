#!/bin/sh
#
# $OpenBSD: opera.sh,v 1.7 2007/05/21 20:15:11 sturm Exp $

PLUGIN_PATH=@PREFIX@/lib/opera/plugins
PLUGIN_PATH=${PLUGIN_PATH}:@LOCALBASE@/lib/ns-plugins
PLUGIN_PATH=${PLUGIN_PATH}:${HOME}/.netscape/plugins
PLUGIN_PATH=${PLUGIN_PATH}:@LOCALBASE@/netscape/plugins
LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/local/libexec
PATH=/bin:/usr/bin

export OPERA_DIR=@PREFIX@/share/opera
export OPERA_NUM_XSHM=0
export OPERA_PLUGIN_PATH=${OPERA_PLUGIN_PATH-${PLUGIN_PATH}}
export LD_LIBRARY_PATH PATH

exec @PREFIX@/libexec/opera "$@"
