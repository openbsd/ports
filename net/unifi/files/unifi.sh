#!/bin/sh
# $OpenBSD: unifi.sh,v 1.1 2014/11/29 00:26:58 sthen Exp $

# Optionally symlink to things like unifi-discover
cmd=${0##*unifi-}
[ "$cmd" = "$0" ] && cmd=
 
daemon="${TRUEPREFIX}/share/unifi/lib/ace.jar"
java="$(${LOCALBASE}/bin/javaPathHelper -c unifi)"
 
${java} -jar ${daemon} $cmd "$@" 
