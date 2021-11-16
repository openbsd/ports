# $OpenBSD: Makefile,v 1.102 2021/11/16 08:57:28 landry Exp $

COMMENT-main =	translator library for geospatial data formats
COMMENT-python =python bindings and utilities for GDAL

V =		3.4.0
DISTNAME =	gdal-${V}
DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		gdalautotest-${V}${EXTRACT_SUFX}

FULLPKGNAME-main =	${DISTNAME}
FULLPKGPATH-main =	geo/gdal,-main
FULLPKGNAME-python =	py3-${DISTNAME}
FULLPKGPATH-python =	geo/gdal,-python${FLAVOR_EXT:S/-/,/g}

SHARED_LIBS =	gdal 42.0 # 30.0
CATEGORIES =	geo devel

HOMEPAGE =	https://gdal.org/

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# MIT/X
PERMIT_PACKAGE=	Yes

MASTER_SITES =	https://download.osgeo.org/gdal/${V:C/rc.//}/
WRKDIST =	${WRKDIR}/${DISTNAME:C/rc.//}

MODULES =	lang/python
FLAVORS =	python3
FLAVOR =	python3

COMPILER = base-clang ports-gcc

MULTI_PACKAGES =	-main -python

MODPY_RUNDEP = No
LIB_DEPENDS-main =	databases/sqlite3 \
			archivers/zstd \
			graphics/tiff \
			net/curl \
			math/qhull \
			math/hdf5 \
			math/netcdf \
			databases/postgresql \
			geo/geos \
			geo/spatialite/libspatialite \
			devel/json-c \
			graphics/png \
			graphics/giflib \
			graphics/libwebp \
			graphics/jpeg \
			graphics/jasper \
			graphics/openjp2 \
			devel/pcre \
			devel/proj>=6.0 \
			devel/geotiff>=1.5.0

WANTLIB-main =		c charset crypto curl expat freexl geos geos_c geotiff \
			gif hdf5 hdf5_hl iconv jasper jpeg json-c lzma m \
			netcdf nghttp2 openjp2 pcre png pq proj pthread qhull \
			minizip rttopo spatialite sqlite3 ssl tiff xml2 webp z zstd \
			${COMPILER_LIBCXX}

RUN_DEPENDS-python =	${MODPY_RUN_DEPENDS} \
			math/py-numpy${MODPY_FLAVOR}
LIB_DEPENDS-python =	${FULLPKGNAME-main}:${FULLPKGPATH-main}
WANTLIB-python =	gdal m pthread ${COMPILER_LIBCXX}

BUILD_DEPENDS +=	${RUN_DEPENDS} math/py-numpy${MODPY_FLAVOR} devel/swig

MODPY_PYTEST =		Yes
TEST_DEPENDS +=		${FULLPKGNAME-python}:${FULLPKGPATH-python} \
			textproc/py-lxml${MODPY_FLAVOR}
TEST_ENV =		GDAL_DOWNLOAD_TEST_DATA=1 GDAL_RUN_SLOW_TESTS=yes

MODPY_SETUPTOOLS =	Yes
MODPY_EGG_VERSION =	${V:C/rc.//}
MODPY_ADJ_FILES =	swig/python/gdal-utils/osgeo_utils/samples/*.py swig/python/gdal-utils/scripts/*.py

MAKE_FILE =	GNUmakefile
MAKE_FLAGS =	LIBTOOL_FINISH=:
USE_GMAKE =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -pthread"
INSTALL_TARGET =	install install-man

CONFIGURE_ARGS =--without-cfitsio \
		--without-cryptopp \
		--without-xerces \
		--without-mysql \
		--without-heif \
		--without-odbc \
		--without-oci \
		--without-grass \
		--without-idb \
		--without-sde \
		--without-exr \
		--without-libgrass \
		--without-perl \
		--with-hide-internal-symbols \
		--with-pg \
		--with-python=${MODPY_BIN} \
		--with-geos \
		--with-gnm \
		--with-freexl=${LOCALBASE} \
		--with-spatialite=${LOCALBASE} \
		--with-png=${LOCALBASE} \
		--with-geotiff=${LOCALBASE} \
		--with-libtiff=${LOCALBASE} \
		--with-curl=${LOCALBASE} \
		--with-gif=${LOCALBASE} \
		--with-jpeg=${LOCALBASE} \
		--with-zstd=${LOCALBASE} \
		--with-libjson-c=${LOCALBASE} \
		--with-jasper=${LOCALBASE} \
		--with-hdf5=${LOCALBASE} \
		--with-netcdf=${LOCALBASE}

post-extract:
	ln -sf ${WRKDIR}/gdalautotest-${V:C/rc.//} ${WRKSRC}/autotest

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${MODPY_PY_PREFIX}gdal
	cp ${WRKSRC}/swig/python/gdal-utils/osgeo_utils/samples/*.py ${PREFIX}/share/examples/${MODPY_PY_PREFIX}gdal

do-test:
	cd ${WRKSRC}/autotest && env ${TEST_ENV} ${MODPY_BIN} -m pytest
#	doesnt work, pytest needs to be run from within the tests dir
#	${MODPY_TEST_TARGET}

.include <bsd.port.mk>
