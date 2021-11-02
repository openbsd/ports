# $OpenBSD: Makefile,v 1.5 2021/11/02 00:00:13 sthen Exp $

COMMENT =		lz4 bindings for Python

MODPY_EGG_VERSION =	3.1.3

DISTNAME =		lz4-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

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
