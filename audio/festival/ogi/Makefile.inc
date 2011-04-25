# $OpenBSD: Makefile.inc,v 1.5 2011/04/25 15:01:28 jolan Exp $

MASTER_SITES?=	${MASTER_SITE_BACKUP}	
DIST_SUBDIR?=	festival
CATEGORIES?=	audio

HOMEPAGE?=	http://www.cslu.ogi.edu/tts/

# Non-commercial use
PERMIT_DISTFILES_CDROM?=No
PERMIT_DISTFILES_FTP?=	Yes
PERMIT_PACKAGE_CDROM?=	No
PERMIT_PACKAGE_FTP?=	Yes

NO_BUILD?=	Yes
NO_REGRESS?=	Yes

OGI_US_DEPS?=	audio/festival/festlex/festlex_POSLEX \
		audio/festival/ogi/OGIlexicon

WRKDIST?=	${WRKDIR}/festival
OGI_WRK?=	${WRKDIST}/lib/voices/${LANG}/${VO}_diphone
OGI_PRE?=	${PREFIX}/lib/festival/voices/${LANG}/${VO}_diphone
