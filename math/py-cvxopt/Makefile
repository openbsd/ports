COMMENT =		convex optimization package

MODPY_EGG_VERSION =	1.2.6
DISTNAME =		cvxopt-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		math
REVISION =		1

MAINTAINER =		Paul Irofti <paul@irofti.net>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += amd blas cholmod colamd lapack m pthread suitesparseconfig umfpack

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

LIB_DEPENDS =		math/lapack \
			math/blas \
			math/suitesparse

.include <bsd.port.mk>
