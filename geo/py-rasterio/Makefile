COMMENT =	geospatial raster data API and CLI

MODPY_DISTV =	1.4.3
REVISION =	3
DISTNAME =	rasterio-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	geo

HOMEPAGE =	https://rasterio.readthedocs.io/en/latest/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

COMPILER =	base-clang ports-gcc

MODPY_PYBUILD =	setuptools
MODPY_PI =	Yes
MODPY_TEST_LINK_SO =	Yes
# required, otherwise MODPY_TEST_LINK_SO creates recursive symlinks ?
MODPY_TEST_LIBDIR =	${WRKSRC}/build/lib.openbsd-${OSREV}-${ARCH}-cpython-${MODPY_MAJORMINOR}

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
		math/py-affine

# test_read_no_band requires hdf5 support in GDAL
# test_transform_bounds__ignore_inf fails as of 1.4.3
# requires datafiles only on github...
pre-test:
	@if [ ! -f ${WRKSRC}/tests/data/world.rgb.tif ]; then \
		printf "\nTests require a checkout of https://github.com/rasterio/rasterio/tree/master/tests/data \
		in ${WRKSRC}/tests/data.\n\n"; \
		exit 1; \
	fi

TEST_DEPENDS =	devel/py-certifi \
		devel/py-hypothesis \
		devel/py-mock \
		devel/py-test \
		devel/py-test-cov \
		sysutils/py-fsspec \
		geo/py-shapely

.include <bsd.port.mk>
