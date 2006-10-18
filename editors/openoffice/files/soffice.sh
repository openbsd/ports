#!/bin/sh
#
# $OpenBSD: soffice.sh,v 1.2 2006/10/18 17:05:57 ian Exp $
#

case "$0"
in
	*swriter)
		%%LOCALBASE%%/openoffice/program/soffice -writer $*
		;;
	*scalc)
		%%LOCALBASE%%/openoffice/program/soffice -calc $*
		;;
	*sdraw)
		%%LOCALBASE%%/openoffice/program/soffice -draw $*
		;;
	*simpress)
		%%LOCALBASE%%/openoffice/program/soffice -impress $*
		;;
	*)
		%%LOCALBASE%%/openoffice/program/soffice $*
esac
