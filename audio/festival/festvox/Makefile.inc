# $OpenBSD: Makefile.inc,v 1.3 2006/02/03 19:42:44 steven Exp $

V?=		1.95
PKGNAME?=	${DISTNAME}-20040804
CATEGORIES=	audio
MASTER_SITES?=	http://www.cstr.ed.ac.uk/downloads/festival/${V}/ \
		http://festvox.org/packed/festival/${V}/
DIST_SUBDIR?=	festival/${PKGNAME}

# BSD-like:
# festvox_kallpc16k
# festvox_kedlpc16k
# Non-commercial use:
# festvox_don
# festvox_ellpc11k
# festvox_rablpc16k
PERMIT_DISTFILES_CDROM?=Yes
PERMIT_DISTFILES_FTP?=	Yes
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes

NO_BUILD?=	Yes
NO_REGRESS?=	Yes

VOX_UK_DEPS?=	::audio/festival/festlex/festlex_OALD \
		::audio/festival/festlex/festlex_POSLEX
VOX_US_DEPS?=	::audio/festival/festlex/festlex_CMU \
		::audio/festival/festlex/festlex_POSLEX

WRKDIST?=	${WRKDIR}/festival
VOX_PRE?=	${PREFIX}/lib/festival/voices
VOX_WRK?=	${WRKDIST}/lib/voices
