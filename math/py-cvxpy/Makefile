COMMENT =		modeling language for convex optimization problems

MODPY_DISTV =		1.6.2
DISTNAME =		cvxpy-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		math

# Apache v2
PERMIT_PACKAGE =	Yes

# C++11
COMPILER =		base-clang ports-gcc

WANTLIB += ${COMPILER_LIBCXX} m pthread

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

BUILD_DEPENDS =		devel/py-pybind11 \
			devel/py-wheel \
			math/py-numpy \
			math/py-scipy

# XXX: needs port for clarabel
RUN_DEPENDS =		math/py-numpy \
			math/py-scipy \
			math/py-osqp \
			math/py-ecos \
			math/py-scs

TEST_DEPENDS =		devel/py-hypothesis

.include <bsd.port.mk>
