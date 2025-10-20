USE_NOBTCFI-aarch64 =	Yes# fortran

COMMENT =		Python interface to SCS

MODPY_DISTV =		3.2.7
DISTNAME =		scs-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		math

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += blas lapack

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		mesonpy

BUILD_DEPENDS =		math/py-numpy

RUN_DEPENDS =		math/py-numpy \
			math/py-scipy

LIB_DEPENDS =		math/lapack

TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH}

.include <bsd.port.mk>
