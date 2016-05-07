# $OpenBSD: Makefile,v 1.4 2016/05/07 12:40:58 pascal Exp $

COMMENT =		Tor controller library

MODPY_EGG_VERSION =	1.4.1b
V =			${MODPY_EGG_VERSION:S/b//}
DISTNAME =		stem-${MODPY_EGG_VERSION}
PKGNAME =		stem-${V}
WRKDIST =		${WRKDIR}/stem-${V}
REVISION =		0

SUBST_VARS +=		V

CATEGORIES =		net

HOMEPAGE =		https://stem.torproject.org

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

EXTRACT_SUFX =		.tar.bz2

MODULES =		lang/python
MODPY_PI =		Yes

NO_TEST =		Yes

.include <bsd.port.mk>
