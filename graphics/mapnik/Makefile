COMMENT =	toolkit for developing mapping applications

V =		4.0.0
DISTNAME =	mapnik-v${V}
PKGNAME =	${DISTNAME:S/v//}
EXTRACT_SUFX =	.tar.bz2

DIST_TUPLE +=	github mapbox geometry.hpp c83a2ab18a225254f128b6f5115aa39d04f2de21 deps/mapbox/geometry
DIST_TUPLE +=	github mapbox polylabel 51f09d04c21e7b7faf94e2300ca1fe6e1f12fa7f deps/mapbox/polylabel
DIST_TUPLE +=	github mapbox protozero 7487f8109acc8637b48e3cb291784cd58f943a1c deps/mapbox/protozero
DIST_TUPLE +=	github mapbox variant a2a4858345423a760eca300ec42acad1ad123aa3 deps/mapbox/variant
SHARED_LIBS =	mapnik 4.0 #3.0
CATEGORIES =	graphics geo

HOMEPAGE =	https://mapnik.org/

DPB_PROPERTIES = nojunk parallel

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} boost_program_options-mt boost_regex-mt
WANTLIB += c cairo freetype gdal harfbuzz icudata icui18n icuuc
WANTLIB += jpeg m png pq proj sqlite3 tiff webp xml2 z

SITES =		https://github.com/mapnik/mapnik/releases/download/v${V}/
MODULES =	devel/cmake

# C++17
COMPILER =	base-clang ports-gcc

TEST_DEPENDS =	shells/bash \
		${BUILD_PKGPATH}

LIB_DEPENDS =	devel/boost \
		databases/sqlite3 \
		graphics/cairo \
		graphics/libwebp \
		devel/harfbuzz \
		geo/gdal \
		textproc/icu4c

CONFIGURE_ARGS +=	-DBUILD_DEMO_VIEWER=OFF #depends on qt6
CONFIGURE_ARGS +=	-DCMAKE_INSTALL_INCLUDEDIR=${LOCALBASE}/include/mapnik #deconflicts with protozero/osrm-backend
CONFIGURE_ARGS +=	-DBUILD_TESTING=ON

# Test data could be fetched from github and extracted to ${WRKBUILD}/out/test/data{,-visual} subdirs.
# https://github.com/mapnik/test-data
# https://github.com/mapnik/test-data-visual

.include <bsd.port.mk>
