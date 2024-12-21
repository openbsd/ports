COMMENT =	cloud optimized GeoTiff creation plugin for rasterio

MODPY_DISTV =	1.1.10
DISTNAME =	rio-cogeo-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME:S/.dev/pre/}
REVISION =	5

CATEGORIES =	geo

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PYBUILD =	setuptools
MODPY_PI =	Yes

RUN_DEPENDS =	geo/py-rasterio \
		geo/py-mercantile \
		geo/py-supermercado \
		math/py-numpy>=1.15

# test_read_no_band requires hdf5 support in GDAL
# requires datafiles only on github...
NO_TEST =	Yes

.include <bsd.port.mk>
