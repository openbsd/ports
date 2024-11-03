COMMENT =	high-level API and CLI on top of OGR

MODPY_EGG_VERSION =	1.10.1
DISTNAME =	fiona-${MODPY_EGG_VERSION}
PKGNAME =	${MODPY_PY_PREFIX}${DISTNAME:L:S/.post/pl/}

CATEGORIES =	geo

HOMEPAGE =	https://fiona.readthedocs.io

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

FLAVORS =	python3
FLAVOR =	python3

COMPILER =	base-clang ports-gcc

MODPY_PYBUILD =	setuptools
MODPY_PI =	Yes
MODPY_PYTEST_ARGS =	tests
MODPY_TEST_LINK_SO =	Yes

BUILD_DEPENDS +=${RUN_DEPENDS} \
		math/py-oldest-supported-numpy${MODPY_FLAVOR} \
		math/py-numpy${MODPY_FLAVOR} \
		lang/cython${MODPY_FLAVOR}

LIB_DEPENDS =	geo/gdal

RUN_DEPENDS =	geo/py-cligj${MODPY_FLAVOR} \
		devel/py-click${MODPY_FLAVOR} \
		devel/py-click-plugins${MODPY_FLAVOR} \
		devel/py-munch${MODPY_FLAVOR} \
		devel/py-six${MODPY_FLAVOR}

TEST_DEPENDS =	devel/py-tz${MODPY_FLAVOR} \
		www/py-aiohttp${MODPY_FLAVOR} \
		sysutils/py-fsspec${MODPY_FLAVOR} \
		net/py-boto3${MODPY_FLAVOR}

WANTLIB += ${COMPILER_LIBCXX} gdal m

# installs gdal & proj data to fiona dir for tests
# but they end up in the wheel... so do it manually
#MAKE_ENV +=	PACKAGE_DATA=Yes
pre-test:
	cp -r /usr/local/share/proj ${WRKSRC}/fiona/proj_data
	cp -r /usr/local/share/gdal ${WRKSRC}/fiona/gdal_data

.include <bsd.port.mk>
