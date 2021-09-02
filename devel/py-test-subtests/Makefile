# $OpenBSD: Makefile,v 1.1.1.1 2021/09/02 08:41:50 sthen Exp $

COMMENT =	unittest subTest() support and subtests fixture

MODPY_EGG_VERSION =	0.3.2

DISTNAME =	pytest-subtests-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	https://github.com/pytest-dev/pytest-subtests

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVOR =		python3
FLAVORS =		python3

RUN_DEPENDS =		devel/py-test${MODPY_FLAVOR}
MODPY_PYTEST =		Yes

.include <bsd.port.mk>
