# $OpenBSD: Makefile,v 1.2 2014/10/28 11:26:36 sthen Exp $

COMMENT =		Internet Citizens Band Server

V =			1.1
GH_ACCOUNT =		mbelop
GH_PROJECT =		icbd
GH_TAGNAME =		version_${V:S/./_/}
DISTNAME =		icbd-$V

CATEGORIES =		net

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c event

FAKE_FLAGS =		PREFIX=${TRUEPREFIX}

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/icbd-${GH_TAGNAME}

.include <bsd.port.mk>
