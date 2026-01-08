COMMENT =		modeling language for convex optimization problems

MODPY_DISTV =		1.7.5
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

RUN_DEPENDS =		math/py-numpy \
			math/py-scipy \
			math/py-osqp \
			math/py-ecos \
			math/py-scs

TEST_DEPENDS =		devel/py-hypothesis

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mrust}
RUN_DEPENDS +=		math/py-clarabel
.endif

.include <bsd.port.mk>
