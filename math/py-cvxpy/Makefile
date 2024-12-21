COMMENT =		modeling language for convex optimization problems

MODPY_DISTV =	1.2.1
DISTNAME =		cvxpy-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		math
REVISION =		3

MAINTAINER =		Paul Irofti <paul@irofti.net>

# Apache v2
PERMIT_PACKAGE =	Yes

# C++11
COMPILER =		base-clang ports-gcc

WANTLIB += ${COMPILER_LIBCXX} m pthread

MODULES =		lang/python

RUN_DEPENDS =		math/py-numpy \
			math/py-scipy \
			math/py-osqp \
			math/py-ecos \
			math/py-scs \
			devel/py-multiprocess

BUILD_DEPENDS =         lang/cython \
			${RUN_DEPENDS}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

.include <bsd.port.mk>
