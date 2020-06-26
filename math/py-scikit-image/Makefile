# $OpenBSD: Makefile,v 1.2 2020/06/26 10:01:42 pirofti Exp $

COMMENT =		image processing routines for SciPy

MODPY_EGG_VERSION =	0.16.2
DISTNAME =		scikit-image-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		math

MAINTAINER =		Paul Irofti <paul@irofti.net>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		math/py-numpy${MODPY_FLAVOR} \
			math/py-scipy${MODPY_FLAVOR} \
			graphics/py-matplotlib${MODPY_FLAVOR} \
			math/py-networkx \
			graphics/py-Pillow \
			graphics/py-imageio \
			math/py-PyWavelets

BUILD_DEPENDS =         lang/cython${MODPY_FLAVOR} \
			devel/py-wheel${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

.include <bsd.port.mk>
