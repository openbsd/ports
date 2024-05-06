COMMENT-main =	translator library for geospatial data formats
COMMENT-python =python bindings and utilities for GDAL

V =		3.8.5
DISTNAME =	gdal-${V}
DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		gdalautotest-${V}${EXTRACT_SUFX}

FULLPKGNAME-main =	${DISTNAME}
FULLPKGPATH-main =	geo/gdal,-main
FULLPKGNAME-python =	py3-${DISTNAME}
FULLPKGPATH-python =	geo/gdal,-python${FLAVOR_EXT:S/-/,/g}
REVISION-main =		0
REVISION-python =	0

SHARED_LIBS =	gdal 47.2
CATEGORIES =	geo devel

HOMEPAGE =	https://gdal.org/

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# MIT/X
PERMIT_PACKAGE=	Yes

SITES =		https://download.osgeo.org/gdal/${V:C/rc.//}/
WRKDIST =	${WRKDIR}/${DISTNAME:C/rc.//}

MODULES =	devel/cmake \
		lang/python
FLAVORS =	python3
FLAVOR =	python3

COMPILER = base-clang ports-gcc

MULTI_PACKAGES =	-main -python

MODPY_RUNDEP = No
LIB_DEPENDS-main =	databases/sqlite3 \
			archivers/libarchive \
			archivers/libdeflate \
			archivers/zstd \
			graphics/tiff \
			net/curl \
			math/qhull>=2020.2 \
			math/hdf5 \
			math/netcdf \
			databases/postgresql \
			geo/geos \
			geo/spatialite/libspatialite \
			devel/json-c \
			print/poppler \
			graphics/png \
			graphics/giflib \
			graphics/libjxl \
			graphics/libwebp \
			graphics/jpeg \
			graphics/openjp2 \
			devel/pcre2 \
			devel/proj>=6.0 \
			devel/geotiff>=1.5.0

WANTLIB-main =		archive c crypto curl deflate expat freexl geos_c geotiff \
			gif hdf5 iconv jpeg json-c jxl jxl_threads lzma lz4 m \
			netcdf openjp2 pcre2-8 png poppler pq proj pthread qhull_r \
			spatialite sqlite3 ssl tiff xml2 webp z zstd \
			${COMPILER_LIBCXX}

RUN_DEPENDS-python =	${MODPY_RUN_DEPENDS} \
			math/py-numpy${MODPY_FLAVOR}
LIB_DEPENDS-python =	${FULLPKGNAME-main}:${FULLPKGPATH-main}
WANTLIB-python =	gdal m pthread ${COMPILER_LIBCXX}

BUILD_DEPENDS +=	${RUN_DEPENDS} \
			math/py-numpy${MODPY_FLAVOR} \
			devel/gtest \
			devel/swig

MODPY_PYTEST =		Yes
TEST_DEPENDS +=		${FULLPKGNAME-python}:${FULLPKGPATH-python} \
			sysutils/py-filelock${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR}
TEST_ENV =		GDAL_DOWNLOAD_TEST_DATA=1 GDAL_RUN_SLOW_TESTS=yes

MODPY_SETUPTOOLS =	Yes
MODPY_EGG_VERSION =	${V:C/rc.//}
MODPY_ADJ_FILES =	swig/python/gdal-utils/osgeo_utils/samples/*.py swig/python/gdal-utils/scripts/*.py

CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -pthread"

CONFIGURE_ARGS =-DGDAL_USE_CFITSIO:BOOL=OFF \
		-DGDAL_USE_CRYPTOPP:BOOL=OFF \
		-DGDAL_USE_XERCESC:BOOL=OFF \
		-DGDAL_USE_BLOSC:BOOL=OFF \
		-DGDAL_USE_MYSQL:BOOL=OFF \
		-DGDAL_USE_HEIF:BOOL=OFF \
		-DGDAL_USE_ODBC:BOOL=OFF \
		-DGDAL_USE_ARMADILLO:BOOL=OFF \
		-DGDAL_USE_RASTERLITE2:BOOL=OFF \
		-DGDAL_USE_PODOFO:BOOL=OFF \
		-DGDAL_USE_IDB:BOOL=OFF \
		-DGDAL_USE_OPENEXR:BOOL=OFF \
		-DBUILD_CSHARP_BINDINGS:BOOL=OFF \
		-DBUILD_JAVA_BINDINGS:BOOL=OFF \
		-DPython_ROOT=${LOCALBASE} \
		-DGEOS_ROOT=${LOCALBASE} \
		-DSPATIALITE_ROOT=${LOCALBASE} \
		-DPNG_ROOT=${LOCALBASE} \
		-DTIFF_ROOT=${LOCALBASE} \
		-DCURL_ROOT=${LOCALBASE} \
		-DGIF_ROOT=${LOCALBASE} \
		-DJPEG_ROOT=${LOCALBASE} \
		-DOpenJPEG_ROOT=${LOCALBASE}

post-extract:
	ln -sf ${WRKDIR}/gdalautotest-${V:C/rc.//} ${WRKSRC}/autotest

.include <bsd.port.mk>
