# $OpenBSD: Makefile,v 1.18 2014/03/31 07:33:12 ajacoutot Exp $

COMMENT =	toolkit for developing mapping applications

DISTNAME =	mapnik-v2.2.0
PKGNAME =	${DISTNAME:S/v//}
EXTRACT_SUFX =	.tar.bz2
REVISION =	1

SHARED_LIBS =	mapnik 2.0 #2.0
CATEGORIES =	graphics geo

HOMEPAGE =	http://mapnik.org/
MAINTAINER =	Landry Breuil <landry@openbsd.org>
DPB_PROPERTIES = nojunk

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://mapnik.s3.amazonaws.com/dist/v2.2.0/
MODULES =	devel/gettext \
		devel/scons \
		lang/python

TEST_DEPENDS =	devel/py-nose \
		${BUILD_PKGPATH}

BUILD_DEPENDS =	graphics/py-cairo \
		devel/scons>=2.3.0

LIB_DEPENDS =	devel/boost>=1.47 \
		graphics/cairo \
		devel/proj \
		geo/gdal \
		textproc/icu4c

WANTLIB =	cairo icuuc png>=17.0 pq proj jpeg \
		boost_filesystem-mt tiff sqlite3 \
		boost_program_options-mt boost_python-mt \
		boost_regex-mt boost_system-mt boost_thread-mt \
		c freetype m stdc++ xml2 z curl gdal \
		X11 Xau Xdmcp Xext Xrender fontconfig glib-2.0 \
		gobject-2.0 pcre pixman-1 pthread-stubs \
		xcb xcb-render xcb-shm pthread

MODSCONS_FLAGS =	PREFIX="${TRUEPREFIX}" \
			DESTDIR="${WRKINST}" \
			PNG_INCLUDES="${LOCALBASE}/include ${X11BASE}/include/freetype2" \
			PNG_LIBS="${LOCALBASE}/lib" \
			SYSTEM_FONTS="${X11BASE}/lib/X11/fonts/TTF/" \
			FAST=yes \
			INPUT_PLUGINS=raster,postgis,shape,gdal,ogr,osm,sqlite

pre-configure:
	# subst shlib version
	${SUBST_CMD} ${WRKSRC}/src/build.py

do-test:
	# warning: some tests may swap your machine to death
	# python_tests.datasource_test.test_hit_grid may stall gobbling all cpu
	# python_tests.geometry_io_test.test_wkb_parsing may segfault
	# tests involving unicode/utf fail
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MODPY_BIN} tests/run_tests.py 

.include <bsd.port.mk>
