# $OpenBSD: Makefile,v 1.3 2019/07/12 20:46:55 sthen Exp $

COMMENT =	cloud optimized GeoTiff creation plugin for rasterio

# 1.0dev9 and later require numpy 1.15
MODPY_EGG_VERSION =	1.0.dev8
DISTNAME =	rio-cogeo-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:S/.dev/pre/}
REVISION =	0

CATEGORIES =	geo

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

FLAVORS =	python3
FLAVOR ?=

MODPY_SETUPTOOLS =	Yes
MODPY_PI =	Yes

RUN_DEPENDS =	geo/py-rasterio${MODPY_FLAVOR}

# test_read_no_band requires hdf5 support in GDAL
# requires datafiles only on github...
NO_TEST =	Yes

.include <bsd.port.mk>
