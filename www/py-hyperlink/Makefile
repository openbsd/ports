# $OpenBSD: Makefile,v 1.5 2019/07/12 20:51:01 sthen Exp $

COMMENT =		pure-Python implementation of immutable URLs

MODPY_EGG_VERSION =	18.0.0

DISTNAME =		hyperlink-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		www

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	lib/hyperlink/test

TEST_DEPENDS =		net/py-idna${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
