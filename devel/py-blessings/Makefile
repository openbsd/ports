# $OpenBSD: Makefile,v 1.9 2021/05/21 19:50:23 kmos Exp $

COMMENT =		wrapper around terminal coloring, styling, and positioning

MODPY_EGG_VERSION =	1.6
DISTNAME =		blessings-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		5

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR}

.include <bsd.port.mk>
