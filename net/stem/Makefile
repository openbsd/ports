# $OpenBSD: Makefile,v 1.2 2015/09/10 17:05:15 pascal Exp $

COMMENT =		Tor controller library

MODPY_EGG_VERSION =	1.4.1
DISTNAME =		stem-${MODPY_EGG_VERSION}b
PKGNAME =		stem-${MODPY_EGG_VERSION}
WRKDIST =		${WRKDIR}/stem-${MODPY_EGG_VERSION}

CATEGORIES =		net

HOMEPAGE =		https://stem.torproject.org

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

EXTRACT_SUFX =		.tar.bz2

MODULES =		lang/python
MODPY_PI =		Yes

NO_TEST =		Yes

.include <bsd.port.mk>
