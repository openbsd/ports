#!/bin/sh

if [ "$cmd" = "" -o "$cmd" = "info" ]; then
	defines="$defines -Dlog4j.configuration=/dev/null"
fi

daemon="${TRUEPREFIX}/share/mfi/lib/ace.jar"
java="$(${LOCALBASE}/bin/javaPathHelper -c mfi)"

# with some filehandle trickery to do substition on stderr
# 3>&1 - fh3 -> fh1 (stdout)
# 1>&2 - fh1 -> fh2 (stderr)
# 2>&3 - fh2 -> fh3 (stdout)
# 3>&- - fh3 -> close
(${java} ${defines} -jar ${daemon} $cmd "$@" 3>&1 1>&2 2>&3 |
	sed -e "s,java -jar lib/ace.jar,$name,") 3>&1 1>&2 2>&3 3>&-
