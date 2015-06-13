# $OpenBSD: Makefile,v 1.6 2015/06/13 23:36:13 mikeb Exp $

COMMENT =		Internet Citizens Band Server

GH_ACCOUNT =		mbelop
GH_PROJECT =		icbd
GH_TAGNAME =		1.6
DISTNAME =		icbd-${GH_TAGNAME}

CATEGORIES =		net

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c event

FAKE_FLAGS =		PREFIX=${TRUEPREFIX}

NO_TEST =		Yes

.include <bsd.port.mk>
