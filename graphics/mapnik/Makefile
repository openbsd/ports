COMMENT =	toolkit for developing mapping applications

V =		4.3.1
DISTNAME =	mapnik-v${V}
PKGNAME =	${DISTNAME:S/v//}
EXTRACT_SUFX =	.tar.bz2

DIST_TUPLE +=	github mapbox geometry.hpp c83a2ab18a225254f128b6f5115aa39d04f2de21 deps/mapbox/geometry
DIST_TUPLE +=	github mapbox mapnik-vector-tile 5a0cfbb6b909ae945f4a9e40777772a2b1c8fe9b deps/mapbox/mapnik-vector-tile
DIST_TUPLE +=	github mapbox polylabel 1edc1679eb84f9770e41cbf9c9b56736081af510 deps/mapbox/polylabel
DIST_TUPLE +=	github mapbox protozero 89a55ad2962cca3adbe8383a4b6d9a8411352ef2 deps/mapbox/protozero
DIST_TUPLE +=	github mapbox variant a2a4858345423a760eca300ec42acad1ad123aa3 deps/mapbox/variant
SHARED_LIBS =	mapnik 5.0 #3.0
CATEGORIES =	graphics geo

HOMEPAGE =	https://mapnik.org/

DPB_PROPERTIES = nojunk parallel

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} avif boost_program_options-mt boost_regex-mt
WANTLIB += boost_container-mt boost_context-mt boost_url-mt
WANTLIB += c cairo crypto freetype gdal harfbuzz icudata icui18n icuuc
WANTLIB += jpeg m png pq proj sqlite3 ssl tiff webp xml2 z


SITES =		https://github.com/mapnik/mapnik/releases/download/v${V}/
MODULES =	devel/cmake

# C++17
COMPILER =	base-clang ports-gcc

#BUILD_DEPENDS =	devel/catch2
TEST_DEPENDS =	shells/bash \
		${BUILD_PKGPATH}

LIB_DEPENDS =	devel/boost,-md \
		databases/sqlite3 \
		graphics/cairo \
		graphics/libwebp \
		devel/harfbuzz \
		geo/gdal \
		textproc/icu4c

CONFIGURE_ARGS +=	-DBUILD_DEMO_VIEWER=OFF #depends on qt6
CONFIGURE_ARGS +=	-DCMAKE_INSTALL_INCLUDEDIR=${LOCALBASE}/include/mapnik #deconflicts with protozero/osrm-backend
# fetches catch2 from github when running configure
# https://github.com/mapnik/mapnik/issues/4329#issuecomment-1244923292 for a workaround
# but then it requires the json reporter from catch2, that isnt included ?
#CONFIGURE_ARGS +=	-DBUILD_TESTING=ON
CONFIGURE_ARGS +=	-DBUILD_TESTING=OFF

# Test data could be fetched from github and extracted to ${WRKBUILD}/out/test/data{,-visual} subdirs.
# https://github.com/mapnik/test-data
# https://github.com/mapnik/test-data-visual

.include <bsd.port.mk>
