# $OpenBSD: Makefile,v 1.5 2016/10/04 18:48:58 danj Exp $

# using bundled c-ares which is patched for TTL support
COMMENT =		python interface for c-ares

MODPY_EGG_VERSION =	2.1.1
DISTNAME =		pycares-${MODPY_EGG_VERSION}
PKGNAME =		py-cares-${MODPY_EGG_VERSION}
CATEGORIES =		net

MAINTAINER =		Daniel Jakots <obsd@chown.me>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

USE_GMAKE =		Yes

FLAVORS =		python3
FLAVOR ?=

do-test: fake
	cd ${WRKSRC} && env PYTHONPATH=${WRKINST}/${MODPY_SITEPKG} \
		${MODPY_BIN} tests/tests.py

.include <bsd.port.mk>
