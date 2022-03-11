COMMENT =		image processing routines for SciPy

MODPY_EGG_VERSION =	0.17.2
REVISION =		2
DISTNAME =		scikit-image-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		math

MAINTAINER =		Paul Irofti <paul@irofti.net>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=		${COMPILER_LIBCXX} m

# c++0x
COMPILER =		base-clang ports-gcc

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

RUN_DEPENDS =		math/py-numpy${MODPY_FLAVOR} \
			math/py-scipy${MODPY_FLAVOR} \
			graphics/py-matplotlib${MODPY_FLAVOR} \
			math/py-networkx${MODPY_FLAVOR} \
			graphics/py-Pillow${MODPY_FLAVOR} \
			graphics/py-imageio${MODPY_FLAVOR} \
			math/py-PyWavelets${MODPY_FLAVOR}

BUILD_DEPENDS =         lang/cython${MODPY_FLAVOR} \
			devel/py-wheel${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR}

.include <bsd.port.mk>
