#!/bin/sh
#
# $OpenBSD: opera.sh,v 1.3 2001/09/23 15:16:32 naddy Exp $

PLUGIN_PATH=@PREFIX@/lib/opera/plugins
PLUGIN_PATH=${PLUGIN_PATH}:@LOCALBASE@/lib/ns-plugins
PLUGIN_PATH=${PLUGIN_PATH}:${HOME}/.netscape/plugins
PLUGIN_PATH=${PLUGIN_PATH}:@LOCALBASE@/netscape/plugins

export OPERA_DIR=@PREFIX@/share/opera
export OPERA_PLUGIN_PATH=${OPERA_PLUGIN_PATH-${PLUGIN_PATH}}

exec @PREFIX@/libexec/opera-static "$@"
