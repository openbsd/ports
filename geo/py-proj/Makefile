COMMENT =		Pyrex generated python interface to PROJ.4 library

MODPY_DISTV =		3.7.2
DISTNAME =		pyproj-${MODPY_DISTV}
PKGNAME =		${DISTNAME:S/py/py-/:S/.post/pl/}

CATEGORIES =		geo

HOMEPAGE =		https://pyproj4.github.io/pyproj/stable/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODPY_WANTLIB} proj pthread

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYTEST =		Yes
MODPY_TEST_LINK_SO =	Yes

MODPY_PYBUILD =		setuptools

BUILD_DEPENDS +=	${RUN_DEPENDS}
# also needs xarray
TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH} \
			math/py-pandas \
			devel/py-mock
RUN_DEPENDS +=		devel/proj>=6.0 \
			lang/cython \
			math/py-numpy
TEST_ENV =	PROJ_NETWORK=OFF

.include <bsd.port.mk>
