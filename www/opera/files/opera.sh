#!/bin/sh
#
# $OpenBSD: opera.sh,v 1.6 2006/06/23 15:40:56 bernd Exp $

PLUGIN_PATH=@PREFIX@/lib/opera/plugins
PLUGIN_PATH=${PLUGIN_PATH}:@LOCALBASE@/lib/ns-plugins
PLUGIN_PATH=${PLUGIN_PATH}:${HOME}/.netscape/plugins
PLUGIN_PATH=${PLUGIN_PATH}:@LOCALBASE@/netscape/plugins
LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/local/libexec
PATH=/bin:/usr/bin

export OPERA_DIR=@PREFIX@/share/opera
export OPERA_PLUGIN_PATH=${OPERA_PLUGIN_PATH-${PLUGIN_PATH}}
export LD_LIBRARY_PATH PATH

exec @PREFIX@/libexec/opera "$@"
