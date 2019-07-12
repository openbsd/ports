# $OpenBSD: Makefile,v 1.6 2019/07/12 20:48:46 sthen Exp $

COMMENT =		Tor controller library

MODPY_EGG_VERSION =	1.7.1
V =			${MODPY_EGG_VERSION:S/b//}
DISTNAME =		stem-${MODPY_EGG_VERSION}
PKGNAME =		py-stem-${V}
WRKDIST =		${WRKDIR}/stem-${V}
REVISION =		0

SUBST_VARS +=		V

CATEGORIES =		net

HOMEPAGE =		https://stem.torproject.org

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv3
PERMIT_PACKAGE =	Yes

FLAVORS =		python3
FLAVOR ?=

MODULES =		lang/python
MODPY_PI =		Yes

NO_TEST =		Yes

post-install:
	mv ${PREFIX}/bin/tor-prompt{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
