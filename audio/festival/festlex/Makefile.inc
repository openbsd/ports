# $OpenBSD: Makefile.inc,v 1.6 2013/11/03 14:09:23 sthen Exp $

V?=		1.95
PKGNAME?=	${DISTNAME}-20040804
CATEGORIES?=	audio
MASTER_SITES?=	http://www.cstr.ed.ac.uk/downloads/festival/${V}/ \
		http://festvox.org/packed/festival/${V}/
DIST_SUBDIR?=	festival/${PKGNAME}

# BSD-like:
# festlex_CMU
# festlex_POSLEX
# Non-commercial use:
# festlex_OALD
PERMIT_DISTFILES_FTP?=	Yes
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes

BUILD_DEPENDS?=	audio/festival/core# useless on arch without festival/core

NO_BUILD?=	Yes
NO_TEST?=	Yes

RUN_DEPENDS?=	audio/festival/core

WRKDIST?=	${WRKDIR}/festival
LEX_PRE?=	${PREFIX}/lib/festival
