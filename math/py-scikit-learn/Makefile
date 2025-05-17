COMMENT =	set of python modules for machine learning and data mining

MODPY_DISTV =		1.5.2
DISTNAME =		scikit_learn-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME:S/_/-/}

CATEGORIES =		math

HOMEPAGE =		https://scikit-learn.org

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD-3
PERMIT_PACKAGE =	Yes

# C++11
COMPILER =		base-clang ports-gcc

WANTLIB += ${COMPILER_LIBCXX} m

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		mesonpy

MODPY_PYTEST_ARGS =	-v
MODPY_TEST_DIR = ${WRKSRC}/build/lib.openbsd-${OSREV}-${ARCH}-cpython-${MODPY_MAJORMINOR}

BUILD_DEPENDS =		lang/cython \
			math/py-numpy \
			math/py-scipy

RUN_DEPENDS =		math/py-numpy>=1.19.5 \
			math/py-scipy>=1.6.0 \
			sysutils/py-joblib>=1.2.0 \
			sysutils/py-threadpoolctl>=3.1.0

TEST_DEPENDS =		math/py-pandas

.include <bsd.port.mk>
