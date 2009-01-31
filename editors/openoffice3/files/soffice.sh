#!/bin/sh
#
# $OpenBSD: soffice.sh,v 1.2 2009/01/31 01:06:20 robert Exp $
#

# Since the openoffice-java package may not exist
# suppress any javaPathHelper errors.
JAVA_HOME=$(javaPathHelper -h openoffice-java 2> /dev/null)

if [ -n "${JAVA_HOME}" ]; then
	export JAVA_HOME
fi

# This is needed for OpenOffice.org to be able to open files with
# special character(s) in their name
if [ ! "${LC_CTYPE}" ]; then
	export LC_CTYPE="en_US.ISO8859-15"
fi

case "$0"
in
	*swriter)
		exec %%LOCALBASE%%/openoffice.org3/program/soffice -writer "$@"
		;;
	*scalc)
		exec %%LOCALBASE%%/openoffice.org3/program/soffice -calc "$@"
		;;
	*sdraw)
		exec %%LOCALBASE%%/openoffice.org3/program/soffice -draw "$@"
		;;
	*simpress)
		exec %%LOCALBASE%%/openoffice.org3/program/soffice -impress "$@"
		;;
	*sbase)
		exec %%LOCALBASE%%/openoffice.org3/program/soffice -base "$@"
		;;
	*smath)
		exec %%LOCALBASE%%/openoffice.org3/program/soffice -math "$@"
		;;
	*spadmin)
		exec %%LOCALBASE%%/openoffice.org3/program/spadmin "$@"
		;;
	*setofficelang)
		exec %%LOCALBASE%%/openoffice.org/basis3.0/program/setofficelang "$@"
		;;
	*)
		exec %%LOCALBASE%%/openoffice.org3/program/soffice "$@"
esac
