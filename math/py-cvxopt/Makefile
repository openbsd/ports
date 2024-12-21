COMMENT =		convex optimization package

MODPY_DISTV =	1.3.0
REVISION =		4
DISTNAME =		cvxopt-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		math

HOMEPAGE =		https://cvxopt.org/

MAINTAINER =		Paul Irofti <paul@irofti.net>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += amd blas cholmod colamd lapack m pthread suitesparseconfig umfpack

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

LIB_DEPENDS =		math/lapack \
			math/suitesparse

.include <bsd.port.mk>
