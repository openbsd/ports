# $OpenBSD: Makefile,v 1.7 2015/07/15 16:22:45 ajacoutot Exp $

COMMENT =		Internet Citizens Band Server

GH_ACCOUNT =		mbelop
GH_PROJECT =		icbd
GH_TAGNAME =		1.6
DISTNAME =		icbd-${GH_TAGNAME}
REVISION =		0

CATEGORIES =		net

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c event

FAKE_FLAGS =		PREFIX=${TRUEPREFIX}

NO_TEST =		Yes

.include <bsd.port.mk>
