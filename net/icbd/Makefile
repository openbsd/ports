# $OpenBSD: Makefile,v 1.1.1.1 2014/08/19 05:54:37 pascal Exp $

COMMENT =		Internet Citizens Band Server

DISTNAME =		icbd-1.0

CATEGORIES =		net

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c event

MASTER_SITES =		${MASTER_SITES_GITHUB}
GH_ACCOUNT =		mbelop
GH_PROJECT =		icbd
GH_TAGNAME =		version_1_0
DISTFILES =		icbd-1.0{${GH_TAGNAME}}${EXTRACT_SUFX}

FAKE_FLAGS =		PREFIX=${TRUEPREFIX}

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/icbd-${GH_TAGNAME}

.include <bsd.port.mk>
