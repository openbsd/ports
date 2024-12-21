COMMENT =		Pyrex generated python interface to PROJ.4 library

MODPY_DISTV =	3.7.0
DISTNAME =		pyproj-${MODPY_DISTV}
PKGNAME =		${DISTNAME:S/py/py-/:S/.post/pl/}
REVISION =		0

CATEGORIES =		geo

HOMEPAGE =		https://github.com/jswhit/pyproj

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODPY_WANTLIB} proj pthread

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYTEST =		Yes
MODPY_TEST_DIR =	${WRKSRC}/test

MODPY_PYBUILD =		setuptools

BUILD_DEPENDS +=	${RUN_DEPENDS}
# also needs xarray
TEST_DEPENDS =		${BUILD_PKGPATH} \
			math/py-pandas \
			devel/py-mock
RUN_DEPENDS +=		devel/proj>=6.0 \
			lang/cython \
			math/py-numpy
TEST_ENV =	PROJ_NETWORK=OFF
do-test:
	cd ${WRKSRC}; ${TEST_ENV} ${MODPY_BIN} setup.py test

.include <bsd.port.mk>
