# $OpenBSD: Makefile,v 1.8 2020/07/03 21:12:41 sthen Exp $

COMMENT =		wrapper around terminal coloring, styling, and positioning

MODPY_EGG_VERSION =	1.6
DISTNAME =		blessings-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		4

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR}

.include <bsd.port.mk>
