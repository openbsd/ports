COMMENT =	geospatial raster data API and CLI

MODPY_DISTV =	1.3.9
DISTNAME =	rasterio-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	geo

HOMEPAGE =	https://rasterio.readthedocs.io/en/latest/

MAINTAINER = 	Martin Reindl <martin@catai.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

COMPILER =	base-clang ports-gcc

MODPY_PYBUILD =	setuptools
MODPY_PI =	Yes

LIB_DEPENDS =	geo/gdal
WANTLIB +=	${COMPILER_LIBCXX} gdal m

BUILD_DEPENDS +=	lang/cython \
			math/py-numpy \
			math/py-oldest-supported-numpy

RUN_DEPENDS =	geo/py-cligj>=0.5 \
		net/py-boto3 \
		devel/py-attrs \
		devel/py-click \
		devel/py-click-plugins \
		math/py-numpy \
		math/py-snuggs \
		math/py-affine

# test_read_no_band requires hdf5 support in GDAL
# requires datafiles only on github...
NO_TEST =	Yes
TEST_DEPENDS =	devel/py-certifi \
		devel/py-hypothesis \
		devel/py-mock \
		devel/py-test \
		devel/py-test-cov \
		geo/py-shapely

.include <bsd.port.mk>
