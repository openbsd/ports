# $OpenBSD: Makefile,v 1.4 2019/05/13 18:06:43 danj Exp $

COMMENT =		cffi-based cairo bindings for Python

MODPY_EGG_VERSION =	0.8.0
DISTNAME =		cairocffi-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		1

HOMEPAGE =		https://github.com/Kozea/cairocffi

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-cffi${MODPY_FLAVOR}
BUILD_DEPENDS =		${RUN_DEPENDS}
TEST_DEPENDS =		${RUN_DEPENDS}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	lib/cairocffi

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
