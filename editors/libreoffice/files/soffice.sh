#!/bin/sh
#
# $OpenBSD: soffice.sh,v 1.1 2011/06/20 13:29:35 robert Exp $
#

# This is needed for LibreOffice to be able to open files with
# special character(s) in their name
if [ ! "${LC_CTYPE}" ]; then
	export LC_CTYPE="en_US.ISO8859-15"
fi

case "$0"
in
	*lowriter|*swriter|*oowriter)
		exec ${LOCALBASE}/lib/libreoffice/program/soffice --writer "$@"
		;;
	*localc|*scalc|*oocalc)
		exec ${LOCALBASE}/lib/libreoffice/program/soffice --calc "$@"
		;;
	*lodraw|*sdraw|*oodraw)
		exec ${LOCALBASE}/lib/libreoffice/program/soffice --draw "$@"
		;;
	*loimpress|*simpress|*ooimpress)
		exec ${LOCALBASE}/lib/libreoffice/program/soffice --impress "$@"
		;;
	*lobase|*sbase|*oobase)
		exec ${LOCALBASE}/lib/libreoffice/program/soffice --base "$@"
		;;
	*lomath|*smath|*oomath)
		exec ${LOCALBASE}/lib/libreoffice/program/soffice --math "$@"
		;;
	*unopkg)
		exec ${LOCALBASE}/lib/libreoffice/program/unopkg "$@"
		;;
	*)
		exec ${LOCALBASE}/lib/libreoffice/program/soffice "$@"
esac
