# $OpenBSD: Makefile,v 1.6 2017/11/09 16:37:42 pascal Exp $

COMMENT =		Tor controller library

MODPY_EGG_VERSION =	1.6.0
V =			${MODPY_EGG_VERSION:S/b//}
DISTNAME =		stem-${MODPY_EGG_VERSION}
PKGNAME =		stem-${V}
WRKDIST =		${WRKDIR}/stem-${V}

SUBST_VARS +=		V

CATEGORIES =		net

HOMEPAGE =		https://stem.torproject.org

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

NO_TEST =		Yes

.include <bsd.port.mk>
