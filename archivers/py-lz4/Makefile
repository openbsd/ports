# $OpenBSD: Makefile,v 1.6 2021/11/27 08:51:23 sthen Exp $

COMMENT =		lz4 bindings for Python

MODPY_EGG_VERSION =	3.1.10

DISTNAME =		lz4-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		archivers

HOMEPAGE =		https://github.com/python-lz4/python-lz4

# BSD 3-clause
PERMIT_PACKAGE =	Yes

WANTLIB +=		lz4 pthread

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS =		devel/py-pkgconfig${MODPY_FLAVOR} \
			devel/py-setuptools_scm${MODPY_FLAVOR}
LIB_DEPENDS =		archivers/lz4
TEST_DEPENDS =		sysutils/py-psutil${MODPY_FLAVOR}

.include <bsd.port.mk>
