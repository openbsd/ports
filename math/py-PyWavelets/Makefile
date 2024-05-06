COMMENT =		wavelet transform module

MODPY_EGG_VERSION =	1.1.1
DISTNAME =		PyWavelets-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		math
REVISION =		7

WANTLIB =  pthread
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
MODPY_PYBUILD =	setuptools

.include <bsd.port.mk>
