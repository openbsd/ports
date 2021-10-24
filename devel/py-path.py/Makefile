# $OpenBSD: Makefile,v 1.18 2021/10/24 09:28:48 sthen Exp $

COMMENT =		os.path wrapper for Python

MODPY_EGG_VERSION =	10.3.1
DISTNAME =		path.py-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		4

CATEGORIES =		devel

HOMEPAGE =		https://github.com/jaraco/path.py

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	--ignore=lib

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-appdirs${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
