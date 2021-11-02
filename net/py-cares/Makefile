# $OpenBSD: Makefile,v 1.18 2021/11/02 00:01:40 sthen Exp $

# using bundled c-ares which is patched for TTL support
COMMENT =		python interface for c-ares

MODPY_EGG_VERSION =	4.1.2
DISTNAME =		pycares-${MODPY_EGG_VERSION}
PKGNAME =		py-cares-${MODPY_EGG_VERSION}
CATEGORIES =		net
REVISION =		0

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	tests/tests.py

USE_GMAKE =		Yes

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		devel/py-cffi${MODPY_FLAVOR}
BUILD_DEPENDS =		${RUN_DEPENDS}

TESTLIBDIR =		lib.openbsd-${OSREV}-${ARCH}-${MODPY_VERSION}
TEST_ENV +=		PYTHONPATH=${TESTLIBDIR}

.include <bsd.port.mk>
