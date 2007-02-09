#!/bin/sh
#
# $OpenBSD: soffice.sh,v 1.6 2007/02/09 00:50:17 kurt Exp $
#

# Since the openoffice-java package may not exist
# suppress any javaPathHelper errors.
JAVA_HOME=$(javaPathHelper -h openoffice-java 2> /dev/null)

if [ -n "${JAVA_HOME}" ]; then
	export JAVA_HOME
fi

case "$0"
in
	*swriter)
		exec %%LOCALBASE%%/openoffice/program/soffice -writer "$@"
		;;
	*scalc)
		exec %%LOCALBASE%%/openoffice/program/soffice -calc "$@"
		;;
	*sdraw)
		exec %%LOCALBASE%%/openoffice/program/soffice -draw "$@"
		;;
	*simpress)
		exec %%LOCALBASE%%/openoffice/program/soffice -impress "$@"
		;;
	*sbase)
		exec %%LOCALBASE%%/openoffice/program/soffice -base "$@"
		;;
	*smath)
		exec %%LOCALBASE%%/openoffice/program/soffice -math "$@"
		;;
	*spadmin)
		exec %%LOCALBASE%%/openoffice/program/spadmin "$@"
		;;
	*setofficelang)
		exec %%LOCALBASE%%/openoffice/program/setofficelang "S@"
		;;
	*)
		exec %%LOCALBASE%%/openoffice/program/soffice "$@"
esac
