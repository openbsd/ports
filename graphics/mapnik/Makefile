# $OpenBSD: Makefile,v 1.21 2015/09/18 20:07:09 landry Exp $

COMMENT =	toolkit for developing mapping applications

DISTNAME =	mapnik-v3.0.5
PKGNAME =	${DISTNAME:S/v//}
EXTRACT_SUFX =	.tar.bz2

SHARED_LIBS =	mapnik 3.0 #3.0
CATEGORIES =	graphics geo

HOMEPAGE =	http://mapnik.org/
MAINTAINER =	Landry Breuil <landry@openbsd.org>
DPB_PROPERTIES = nojunk

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xau Xdmcp Xext Xrender boost_filesystem-mt
WANTLIB += boost_program_options-mt boost_regex-mt harfbuzz webp
WANTLIB += boost_system-mt c cairo expat fontconfig
WANTLIB += freetype gdal glib-2.0 gobject-2.0 icuuc jpeg m pcre pixman-1
WANTLIB += png>=17.0 pq proj pthread pthread-stubs sqlite3 tiff
WANTLIB += xcb xcb-render xcb-shm z

MASTER_SITES =	http://mapnik.s3.amazonaws.com/dist/v3.0.5/
MODULES =	devel/gettext \
		devel/scons \
		gcc4 \
		lang/python

# clang doesnt ship cstdint ?
MODGCC4_ARCHS =		amd64 i386 powerpc sparc64
MODGCC4_LANGS =		c c++

TEST_DEPENDS =	shells/bash \
		${BUILD_PKGPATH}

LIB_DEPENDS =	devel/boost>=1.58 \
		graphics/cairo \
		graphics/libwebp \
		devel/proj \
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
			SYSTEM_FONTS=${X11BASE}/lib/X11/fonts/TTF/ \
			FAST=yes \
			INPUT_PLUGINS=raster,postgis,shape,gdal,ogr,sqlite

pre-configure:
	# subst shlib version
	${SUBST_CMD} ${WRKSRC}/src/build.py

do-test:
	# warning: some tests may swap your machine to death
	# python_tests.datasource_test.test_hit_grid may stall gobbling all cpu
	# python_tests.geometry_io_test.test_wkb_parsing may segfault
	# tests involving unicode/utf fail
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${LOCALBASE}/bin/bash test/run

.include <bsd.port.mk>
