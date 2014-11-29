#!/bin/sh
# $OpenBSD: unifi.sh,v 1.2 2014/11/29 01:07:32 sthen Exp $

# Optionally symlink to things like unifi-discover
cmd=${0##*unifi-}
[ "$cmd" = "$0" ] && cmd=
name=${0##*/}
 
daemon="${TRUEPREFIX}/share/unifi/lib/ace.jar"
java="$(${LOCALBASE}/bin/javaPathHelper -c unifi)"
 
# with some filehandle trickery to do substition on stderr
# 3>&1 - fh3 -> fh1 (stdout)
# 1>&2 - fh1 -> fh2 (stderr)
# 2>&3 - fh2 -> fh3 (stdout)
# 3>&- - fh3 -> close
(${java} -jar ${daemon} $cmd "$@" 3>&1 1>&2 2>&3 |
	sed -e "s,java -jar lib/ace.jar,$name,") 3>&1 1>&2 2>&3 3>&-
