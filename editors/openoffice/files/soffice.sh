#!/bin/sh
#
# $OpenBSD: soffice.sh,v 1.5 2006/11/21 16:47:00 ian Exp $
#

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
