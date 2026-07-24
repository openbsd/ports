# pointer type issues in src/C/lapack.c (int* vs int_t* aka Py_ssize_t* aka long*)
ONLY_FOR_ARCHS =	${LP64_ARCHS}

COMMENT =		convex optimization package

MODPY_DISTV =		1.3.3
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
MODPY_PYBUILD =		setuptools_scm

LIB_DEPENDS =		math/lapack \
			math/suitesparse

.include <bsd.port.mk>
