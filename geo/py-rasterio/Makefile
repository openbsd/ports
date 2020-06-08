# $OpenBSD: Makefile,v 1.10 2020/06/08 19:11:10 martin Exp $

COMMENT =	geospatial raster data API and CLI

MODPY_EGG_VERSION =	1.1.5
DISTNAME =	rasterio-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	geo

HOMEPAGE =	https://rasterio.readthedocs.io/en/latest/

MAINTAINER = 	Martin Reindl <martin@catai.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

FLAVORS =	python3
FLAVOR =	python3

COMPILER =	base-clang ports-gcc

MODPY_SETUPTOOLS =	Yes
MODPY_PI =	Yes

LIB_DEPENDS =	geo/gdal
WANTLIB +=	${COMPILER_LIBCXX} gdal m ${MODPY_WANTLIB}

BUILD_DEPENDS +=	math/py-numpy${MODPY_FLAVOR}

RUN_DEPENDS =	geo/py-cligj${MODPY_FLAVOR}>=0.5 \
		net/py-boto3${MODPY_FLAVOR} \
		devel/py-click${MODPY_FLAVOR} \
		devel/py-click-plugins${MODPY_FLAVOR} \
		math/py-numpy${MODPY_FLAVOR} \
		math/py-snuggs${MODPY_FLAVOR} \
		math/py-affine${MODPY_FLAVOR}

# test_read_no_band requires hdf5 support in GDAL
# requires datafiles only on github...
NO_TEST =	Yes
TEST_DEPENDS =	devel/py-test${MODPY_FLAVOR} \
		devel/py-test-cov${MODPY_FLAVOR} \
		devel/py-hypothesis${MODPY_FLAVOR} \
		devel/py-mock${MODPY_FLAVOR}

.include <bsd.port.mk>
