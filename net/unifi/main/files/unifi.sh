#!/bin/ksh
# $OpenBSD: unifi.sh,v 1.2 2021/12/13 22:15:00 sthen Exp $

# Optionally symlink to things like unifi-discover
cmd=${0##*unifi-}
[ "$cmd" = "$0" ] && cmd=
name=${0##*/}

if [ "$cmd" = "" -o "$cmd" = "discover" -o "$cmd" = "info" ]; then
	defines="$defines -Dlog4j.configuration=/dev/null"
fi

daemon="${TRUEPREFIX}/share/unifi/lib/ace.jar"
java="$(${LOCALBASE}/bin/javaPathHelper -c unifi)"

# with some filehandle trickery to do substition on stderr
# 3>&1 - fh3 -> fh1 (stdout)
# 1>&2 - fh1 -> fh2 (stderr)
# 2>&3 - fh2 -> fh3 (stdout)
# 3>&- - fh3 -> close
(${java} ${defines} -jar ${daemon} $cmd "$@" 3>&1 1>&2 2>&3 |
	sed -e "s,java -jar lib/ace.jar,$name,") 3>&1 1>&2 2>&3 3>&-
