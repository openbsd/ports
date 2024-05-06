COMMENT =		Pyrex generated python interface to PROJ.4 library

MODPY_EGG_VERSION =	3.6.0
DISTNAME =		pyproj-${MODPY_EGG_VERSION}
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

FLAVORS =		python3
FLAVOR =		python3

MODPY_PYBUILD =		setuptools

BUILD_DEPENDS +=	${RUN_DEPENDS}
# also needs xarray
TEST_DEPENDS =		${BUILD_PKGPATH} \
			math/py-pandas${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR}
RUN_DEPENDS +=		devel/proj>=6.0 \
			lang/cython${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR}
TEST_ENV =	PROJ_NETWORK=OFF
do-test:
	cd ${WRKSRC}; ${TEST_ENV} ${MODPY_BIN} setup.py test

.include <bsd.port.mk>
