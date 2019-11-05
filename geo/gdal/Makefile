# $OpenBSD: Makefile,v 1.80 2019/11/05 12:07:41 landry Exp $

COMMENT-main =	translator library for geospatial data formats
COMMENT-python =python bindings and utilities for GDAL
COMMENT-perl =	perl bindings for GDAL

V =		3.0.2
DISTNAME =	gdal-${V}
DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		gdalautotest-${V}${EXTRACT_SUFX}

FULLPKGNAME-main =	${DISTNAME}
FULLPKGPATH-main =	geo/gdal,-main
FULLPKGNAME-python =	py-${DISTNAME}
FULLPKGPATH-python =	geo/gdal,-python${FLAVOR_EXT:S/-/,/g}
FULLPKGNAME-perl =	p5-Geo-GDAL-${V}
FULLPKGPATH-perl =	geo/gdal,-perl

SHARED_LIBS =	gdal 37.0 #26.2
CATEGORIES =	geo devel

HOMEPAGE =	http://www.gdal.org/

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# MIT/X
PERMIT_PACKAGE=	Yes

MASTER_SITES =	http://download.osgeo.org/gdal/${V}/

MODULES =	perl lang/python
FLAVORS =	python3
FLAVOR ?=

.if ${FLAVOR:Mpython3}
FULLPKGNAME-python =	py3-${DISTNAME}
.endif

COMPILER = base-clang ports-gcc

MULTI_PACKAGES =	-main -python -perl

MODPY_RUNDEP = No
LIB_DEPENDS-main =	databases/sqlite3 \
			archivers/zstd \
			graphics/tiff \
			net/curl \
			math/qhull \
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

WANTLIB-main =		c crypto curl expat freexl geos geos_c geotiff gif \
			iconv jasper jpeg json-c lzma m nghttp2 openjp2 \
			pcre png pq proj pthread qhull spatialite sqlite3 \
			ssl tiff xml2 webp z zstd ${COMPILER_LIBCXX}

RUN_DEPENDS-python =	${MODPY_RUN_DEPENDS} \
			math/py-numpy${MODPY_FLAVOR}
LIB_DEPENDS-python =	${MODPY_LIB_DEPENDS} \
			${FULLPKGNAME-main}:${FULLPKGPATH-main}
WANTLIB-python =	${MODPY_WANTLIB} gdal m pthread ${COMPILER_LIBCXX}

RUN_DEPENDS-perl =
LIB_DEPENDS-perl =	${FULLPKGNAME-main}:${FULLPKGPATH-main}
WANTLIB-perl =		perl gdal # uses perl ABI
WANTLIB-perl += c crypto curl expat freexl geos_c geotiff gif iconv
WANTLIB-perl += jasper jpeg json-c lzma m nghttp2 openjp2 pcre png
WANTLIB-perl += pq proj pthread qhull spatialite sqlite3 ssl tiff xml2 webp z zstd

BUILD_DEPENDS +=	${RUN_DEPENDS} math/py-numpy${MODPY_FLAVOR} devel/swig

MODPY_PYTEST =		Yes
TEST_DEPENDS +=		${FULLPKGNAME-python}:${FULLPKGPATH-python}
TEST_ENV =		GDAL_DOWNLOAD_TEST_DATA=1 GDAL_RUN_SLOW_TESTS=yes

MODPY_SETUPTOOLS =	Yes
MODPY_EGG_VERSION =	${V}
MODPY_ADJ_FILES =	swig/python/scripts/*.py swig/python/samples/*.py

MAKE_FILE =	GNUmakefile
MAKE_FLAGS =	LIBTOOL_FINISH=:
USE_GMAKE =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -pthread"
INSTALL_TARGET =	install install-man

CONFIGURE_ARGS =--without-hdf5 \
		--without-cfitsio \
		--without-cryptopp \
		--without-netcdf \
		--without-xerces \
		--without-mysql \
		--without-odbc \
		--without-oci \
		--without-grass \
		--without-idb \
		--without-sde \
		--without-libgrass \
		--with-pg \
		--with-python=${MODPY_BIN} \
		--with-perl \
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
		--with-jasper=${LOCALBASE}

post-extract:
	ln -sf ${WRKDIR}/gdalautotest-${V} ${WRKSRC}/autotest

PYBINS = epsg_tr esri2wkt gcps2vec gcps2wld gdal2xyz gdal_auth gdal_merge \
	gdalchksum gdalident gdalimport mkgraticule
PYBINSWITHMAN = gdal2tiles gdal_calc gdal_edit gdal_fillnodata gdal_pansharpen \
	gdal_polygonize gdal_proximity gdal_retile gdal_sieve gdalcompare \
	gdalmove ogrmerge pct2rgb rgb2pct

post-install:
.for b in ${PYBINSWITHMAN}
	mv -f ${PREFIX}/bin/$b.py ${PREFIX}/bin/$b${MODPY_BIN_SUFFIX}.py
	mv -f ${PREFIX}/man/man1/$b.1 ${PREFIX}/man/man1/$b${MODPY_BIN_SUFFIX}.1
.endfor
.for b in ${PYBINS}
	mv -f ${PREFIX}/bin/$b.py ${PREFIX}/bin/$b${MODPY_BIN_SUFFIX}.py
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${MODPY_PY_PREFIX}gdal
	cp ${WRKSRC}/swig/python/samples/*.py ${PREFIX}/share/examples/${MODPY_PY_PREFIX}gdal

do-test:
	cd ${WRKSRC}/autotest && env ${TEST_ENV} ${MODPY_BIN} -m pytest
#	doesnt work, pytest needs to be run from within the tests dir
#	${MODPY_TEST_TARGET}

.include <bsd.port.mk>
