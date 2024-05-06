COMMENT =		image processing routines for SciPy

MODPY_EGG_VERSION =	0.19.3
DISTNAME =		scikit-image-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		math
REVISION =		1

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
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		math/py-numpy${MODPY_FLAVOR} \
			math/py-scipy${MODPY_FLAVOR} \
			graphics/py-matplotlib${MODPY_FLAVOR} \
			math/py-networkx${MODPY_FLAVOR} \
			graphics/py-Pillow${MODPY_FLAVOR} \
			graphics/py-imageio${MODPY_FLAVOR} \
			graphics/py-tifffile${MODPY_FLAVOR} \
			math/py-PyWavelets${MODPY_FLAVOR}

BUILD_DEPENDS =		lang/cython${MODPY_FLAVOR} \
			lang/pythran${MODPY_FLAVOR} \
			devel/py-wheel${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR}

# needs a bunch of new dependencies
NO_TEST =		Yes

.include <bsd.port.mk>
