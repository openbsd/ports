#!/bin/sh
#
# $OpenBSD: soffice.sh,v 1.3 2006/10/18 18:17:12 ian Exp $
#

case "$0"
in
	*swriter)
		exec %%LOCALBASE%%/openoffice/program/soffice -writer $*
		;;
	*scalc)
		exec %%LOCALBASE%%/openoffice/program/soffice -calc $*
		;;
	*sdraw)
		exec %%LOCALBASE%%/openoffice/program/soffice -draw $*
		;;
	*simpress)
		exec %%LOCALBASE%%/openoffice/program/soffice -impress $*
		;;
	*)
		exec %%LOCALBASE%%/openoffice/program/soffice $*
esac
