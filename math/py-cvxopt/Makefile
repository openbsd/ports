COMMENT =		convex optimization package

MODPY_EGG_VERSION =	1.3.0
REVISION =		2
DISTNAME =		cvxopt-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		math

HOMEPAGE =		https://cvxopt.org/

MAINTAINER =		Paul Irofti <paul@irofti.net>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += amd blas cholmod colamd lapack m pthread suitesparseconfig umfpack

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

LIB_DEPENDS =		math/lapack \
			math/blas \
			math/suitesparse

.include <bsd.port.mk>
