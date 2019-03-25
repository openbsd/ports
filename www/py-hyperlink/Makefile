# $OpenBSD: Makefile,v 1.3 2019/03/25 14:29:52 kn Exp $

COMMENT =		pure-Python implementation of immutable URLs

MODPY_EGG_VERSION =	18.0.0

DISTNAME =		hyperlink-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	lib/hyperlink/test

TEST_DEPENDS =		net/py-idna${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
