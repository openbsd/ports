# $OpenBSD: Makefile.inc,v 1.9 2015/12/03 21:24:29 sthen Exp $

MASTER_SITES?=	https://spacehopper.org/mirrors/festival/
DIST_SUBDIR?=	festival
CATEGORIES?=	audio

HOMEPAGE?=	http://www.cslu.ogi.edu/tts/

# Non-commercial use
PERMIT_DISTFILES_FTP?=	Yes
PERMIT_PACKAGE_CDROM?=	No
PERMIT_PACKAGE_FTP?=	Yes

BUILD_DEPENDS?=	audio/festival/core# useless on arch without festival/core

NO_BUILD?=	Yes
NO_TEST?=	Yes

OGI_US_DEPS?=	audio/festival/festlex/festlex_POSLEX \
		audio/festival/ogi/OGIlexicon

WRKDIST?=	${WRKDIR}/festival
OGI_WRK?=	${WRKDIST}/lib/voices/${LANG}/${VO}_diphone
OGI_PRE?=	${PREFIX}/lib/festival/voices/${LANG}/${VO}_diphone
