# $OpenBSD: Makefile,v 1.2 2018/05/12 19:51:53 jasper Exp $

COMMENT =		Tor controller library

MODPY_EGG_VERSION =	1.6.0
V =			${MODPY_EGG_VERSION:S/b//}
DISTNAME =		stem-${MODPY_EGG_VERSION}
PKGNAME =		py-stem-${V}
REVISION =		0
WRKDIST =		${WRKDIR}/stem-${V}

SUBST_VARS +=		V

CATEGORIES =		net

HOMEPAGE =		https://stem.torproject.org

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

FLAVORS =		python3
FLAVOR ?=

MODULES =		lang/python
MODPY_PI =		Yes

NO_TEST =		Yes

post-install:
	mv ${PREFIX}/bin/tor-prompt{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
