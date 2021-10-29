# $OpenBSD: Makefile,v 1.10 2021/10/29 15:38:42 sthen Exp $

COMMENT =		wrapper around terminal coloring, styling, and positioning

MODPY_EGG_VERSION =	1.6
DISTNAME =		blessings-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		6

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR =	python3

TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR}

.include <bsd.port.mk>
