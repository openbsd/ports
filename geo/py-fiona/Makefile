COMMENT =	high-level API and CLI on top of OGR

MODPY_DISTV =	1.10.1
DISTNAME =	fiona-${MODPY_DISTV}
PKGNAME =	${MODPY_PY_PREFIX}${DISTNAME:L:S/.post/pl/}
REVISION =	0

CATEGORIES =	geo

HOMEPAGE =	https://fiona.readthedocs.io

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

COMPILER =	base-clang ports-gcc

MODPY_PYBUILD =	setuptools
MODPY_PI =	Yes
MODPY_PYTEST_ARGS =	tests
MODPY_TEST_LINK_SO =	Yes

BUILD_DEPENDS +=${RUN_DEPENDS} \
		math/py-oldest-supported-numpy \
		math/py-numpy \
		lang/cython

LIB_DEPENDS =	geo/gdal

RUN_DEPENDS =	geo/py-cligj \
		devel/py-click \
		devel/py-click-plugins \
		devel/py-munch \
		devel/py-six

TEST_DEPENDS =	devel/py-tz \
		www/py-aiohttp \
		sysutils/py-fsspec \
		net/py-boto3

WANTLIB += ${COMPILER_LIBCXX} gdal m

# installs gdal & proj data to fiona dir for tests
# but they end up in the wheel... so do it manually
#MAKE_ENV +=	PACKAGE_DATA=Yes
pre-test:
	cp -r /usr/local/share/proj ${WRKSRC}/fiona/proj_data
	cp -r /usr/local/share/gdal ${WRKSRC}/fiona/gdal_data

.include <bsd.port.mk>
