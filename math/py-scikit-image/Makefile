COMMENT =		image processing routines for SciPy

MODPY_DISTV =		0.23.2
DISTNAME =		scikit_image-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME:S/_/-/}
REVISION =		0

CATEGORIES =		math

MAINTAINER =		Paul Irofti <paul@irofti.net>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=		${COMPILER_LIBCXX} m

# c++0x
COMPILER =		base-clang ports-gcc

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		mesonpy
MODPY_ADJ_FILES =	skimage/_build_utils/*.py

BUILD_DEPENDS =		lang/cython \
			lang/pythran \
			devel/py-setuptools \
			devel/py-wheel \
			math/py-numpy

RUN_DEPENDS =		math/py-numpy \
			math/py-scipy \
			graphics/py-matplotlib \
			math/py-networkx \
			graphics/py-Pillow \
			graphics/py-imageio \
			graphics/py-tifffile \
			sysutils/py-packaging

# needs a bunch of new dependencies
NO_TEST =		Yes

.include <bsd.port.mk>
