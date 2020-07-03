# $OpenBSD: Makefile,v 1.4 2020/07/03 21:12:56 sthen Exp $

COMMENT =		wavelet transform module

MODPY_EGG_VERSION =	1.1.1
DISTNAME =		PyWavelets-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		math
REVISION =		1

MAINTAINER =		Paul Irofti <paul@irofti.net>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		math/py-numpy${MODPY_FLAVOR}

BUILD_DEPENDS =		lang/cython${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

.include <bsd.port.mk>
