USE_NOBTCFI-aarch64 =	Yes# fortran

BROKEN = needs updating and/or adapting to work with newer numpy.
# if sticking with 2.1.1-2, the version number in setup.py needs patching
# to a valid format; probably simpler to update to a newer 2.x than that
# though.

COMMENT =		Python interface to SCS

MODPY_DISTV =		2.1.1-2
DISTNAME =		scs-${MODPY_DISTV}
V =			${MODPY_DISTV:S/-/./}
PKGNAME =		py-scs-${V}
CATEGORIES =		math
REVISION =		10

MAINTAINER =		Paul Irofti <paul@irofti.net>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += blas cblas lapack pthread

MODULES =		lang/python

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		math/py-numpy \
			math/py-scipy

MODPY_PI =		Yes
MODPY_PYBUILD =	setuptools

TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH}

.include <bsd.port.mk>
