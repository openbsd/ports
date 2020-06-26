# $OpenBSD: Makefile,v 1.1.1.1 2020/06/26 09:58:03 pirofti Exp $

COMMENT =		wavelet transform module

MODPY_EGG_VERSION =	1.1.1
DISTNAME =		PyWavelets-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		math

MAINTAINER =		Paul Irofti <paul@irofti.net>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		math/py-numpy${MODPY_FLAVOR}

BUILD_DEPENDS =         lang/cython${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

.include <bsd.port.mk>
