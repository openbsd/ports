COMMENT =	cloud optimized GeoTiff creation plugin for rasterio

MODPY_DISTV =	6.0.0
DISTNAME =	rio_cogeo-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME:S/_/-/}

CATEGORIES =	geo

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PYBUILD =	flit_core
MODPY_PI =	Yes

RUN_DEPENDS =	geo/py-rasterio \
		geo/py-morecantile \
		devel/py-click \
		devel/py-pydantic \
		math/py-numpy

# test_read_no_band requires hdf5 support in GDAL
# requires datafiles only on github...
NO_TEST =	Yes

.include <bsd.port.mk>
