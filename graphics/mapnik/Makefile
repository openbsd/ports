# $OpenBSD: Makefile,v 1.42 2021/09/19 05:24:30 rsadowski Exp $

COMMENT =	toolkit for developing mapping applications

# Check if next release incorporates support for new PROJ
V =		3.1.0
DISTNAME =	mapnik-v${V}
PKGNAME =	${DISTNAME:S/v//}
EXTRACT_SUFX =	.tar.bz2
REVISION =	1

SHARED_LIBS =	mapnik 4.0 #3.0
CATEGORIES =	graphics geo

HOMEPAGE =	https://mapnik.org/

DPB_PROPERTIES = nojunk parallel

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xau Xdmcp Xext Xrender boost_filesystem
WANTLIB += boost_program_options boost_regex harfbuzz webp
WANTLIB += boost_system c cairo expat ffi fontconfig freetype
WANTLIB += gdal glib-2.0 gobject-2.0 icudata icui18n icuuc
WANTLIB += intl jpeg m pcre pixman-1 png>=17.0 pq pthread
WANTLIB += sqlite3 tiff xcb xcb-render xcb-shm xml2 z ${COMPILER_LIBCXX}

MASTER_SITES =	https://github.com/mapnik/mapnik/releases/download/v${V}/
MODULES =	devel/scons

# C++14
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

# Scons sucks. Use WARNING_CXXFLAGS as a way to pass freetype2 includes
MODSCONS_FLAGS =	PREFIX="${TRUEPREFIX}" \
			DESTDIR="${WRKINST}" \
			ICU_INCLUDES=${LOCALBASE}/include \
			ICU_LIBS=${LOCALBASE}/lib \
			HB_INCLUDES=${LOCALBASE}/include \
			HB_LIBS=${LOCALBASE}/lib \
			WARNING_CXXFLAGS="-I${X11BASE}/include/freetype2" \
			CUSTOM_CXXFLAGS="-fPIC" \
			SYSTEM_FONTS=${X11BASE}/lib/X11/fonts/TTF/ \
			CUSTOM_LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			FAST=yes \
			INPUT_PLUGINS=raster,postgis,shape,gdal,ogr,sqlite \
			XMLPARSER=libxml2

pre-configure:
	# subst shlib version
	${SUBST_CMD} ${WRKSRC}/src/build.py

do-test:
	# Test data could be fetched from github and extracted to test subdir.
	# https://github.com/mapnik/test-data
	# https://github.com/mapnik/test-data-visual
	# warning: some tests may swap your machine to death
	# python_tests.datasource_test.test_hit_grid may stall gobbling all cpu
	# python_tests.geometry_io_test.test_wkb_parsing may segfault
	# tests involving unicode/utf fail
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${LOCALBASE}/bin/bash test/run

.include <bsd.port.mk>
