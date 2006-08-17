#!/bin/sh
#
# $OpenBSD: soffice.sh,v 1.1.1.1 2006/08/17 14:56:21 robert Exp $
#

case "$0"
in
	*swriter)
		%%LOCALBASE%%/openoffice/program/soffice -writer
		;;
	*scalc)
		%%LOCALBASE%%/openoffice/program/soffice -calc
		;;
	*sdraw)
		%%LOCALBASE%%/openoffice/program/soffice -draw
		;;
	*simpress)
		%%LOCALBASE%%/openoffice/program/soffice -impress
		;;
	*)
		%%LOCALBASE%%/openoffice/program/soffice
esac
