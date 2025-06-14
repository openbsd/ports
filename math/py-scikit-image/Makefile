COMMENT =		image processing routines for SciPy

# Newer versions need an update of pythran, but scipy is
# a blocker due to lack of gcc 9+
MODPY_DISTV =		0.24.0
DISTNAME =		scikit_image-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME:S/_/-/}

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
MODPY_TEST_DIR =	${WRKINST}/${MODPY_SITEPKG}

BUILD_DEPENDS =		lang/cython \
			lang/pythran \
			devel/py-lazy-loader \
			devel/py-setuptools \
			devel/py-wheel \
			math/py-numpy

RUN_DEPENDS =		math/py-numpy \
			math/py-scipy \
			math/py-networkx \
			graphics/py-Pillow \
			graphics/py-imageio \
			graphics/py-tifffile \
			sysutils/py-packaging \
			devel/py-lazy-loader

TEST_DEPENDS =		deve/py-test-cov \
			devel/py-test-localserver

.include <bsd.port.mk>
