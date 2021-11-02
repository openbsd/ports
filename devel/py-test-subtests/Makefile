# $OpenBSD: Makefile,v 1.3 2021/11/02 00:01:02 sthen Exp $

COMMENT =	unittest subTest() support and subtests fixture

MODPY_EGG_VERSION =	0.3.2

DISTNAME =	pytest-subtests-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	devel

HOMEPAGE =	https://github.com/pytest-dev/pytest-subtests

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVOR =		python3
FLAVORS =		python3

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR}

RUN_DEPENDS =		devel/py-test${MODPY_FLAVOR}
MODPY_PYTEST =		Yes

.include <bsd.port.mk>
