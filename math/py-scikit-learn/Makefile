COMMENT =	set of python modules for machine learning and data mining

# 1.4.2+ requires numpy 2.x
MODPY_DISTV =	1.4.1.post1
DISTNAME =		scikit-learn-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		0

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
MODPY_PYBUILD =		setuptools

MODPY_PYTEST_ARGS =	-v
MODPY_TEST_DIR = ${WRKSRC}/build/lib.openbsd-${OSREV}-${ARCH}-cpython-${MODPY_MAJORMINOR}

BUILD_DEPENDS =		lang/cython \
			math/py-numpy \
			math/py-scipy

RUN_DEPENDS =		math/py-numpy>=1.19.5 \
			math/py-scipy>=1.6.0 \
			sysutils/py-joblib>=1.2.0 \
			sysutils/py-threadpoolctl>=2.0.0

TEST_DEPENDS =		math/py-pandas

.include <bsd.port.mk>
