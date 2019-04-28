# $OpenBSD: Makefile,v 1.6 2019/04/28 20:51:30 sthen Exp $

COMMENT =		wrapper around terminal coloring, styling, and positioning

MODPY_EGG_VERSION =	1.6
DISTNAME =		blessings-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		3

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR}

.include <bsd.port.mk>
