# $OpenBSD: Makefile,v 1.10 2019/07/12 20:48:45 sthen Exp $

# using bundled c-ares which is patched for TTL support
COMMENT =		python interface for c-ares

MODPY_EGG_VERSION =	2.4.0
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

USE_GMAKE =		Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		devel/py-cffi${MODPY_FLAVOR}
BUILD_DEPENDS =		${RUN_DEPENDS}

do-test: fake
	cd ${WRKSRC} && env PYTHONPATH=${WRKINST}/${MODPY_SITEPKG} \
		${MODPY_BIN} tests/tests.py

.include <bsd.port.mk>
