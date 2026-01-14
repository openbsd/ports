COMMENT =		image processing routines for SciPy

MODPY_DISTV =		0.26.0
DISTNAME =		scikit_image-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME:S/_/-/}

CATEGORIES =		math

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=		${COMPILER_LIBCXX} m

# c++0x
COMPILER =		base-clang ports-gcc

MODULES =		lang/python
MODPY_PYBUILD =		mesonpy
MODPY_PI =		Yes

# s/python/python3/ needed during build
MODPY_ADJ_FILES =	src/skimage/_build_utils/*.py

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

TEST_DEPENDS =		astro/py-astropy \
			devel/py-test-cov \
			devel/py-test-doctestplus \
			devel/py-test-localserver \
			devel/py-test-pretty \
			graphics/py-matplotlib \
			math/py-PyWavelets \
			math/py-scikit-learn \
			textproc/py-numpydoc

.include <bsd.port.mk>
