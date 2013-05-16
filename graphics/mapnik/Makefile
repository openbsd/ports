# $OpenBSD: Makefile,v 1.10 2013/05/16 17:20:12 sthen Exp $

COMMENT =	toolkit for developing mapping applications

DISTNAME =	mapnik-v2.0.1
PKGNAME =	${DISTNAME:S/v//}
EXTRACT_SUFX =	.tar.bz2
REVISION=	0

SHARED_LIBS =	mapnik 1.0 #2.0
CATEGORIES =	graphics geo

HOMEPAGE =	http://mapnik.org/
MAINTAINER =	Landry Breuil <landry@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://github.com/downloads/mapnik/mapnik/
MODULES =	devel/gettext \
		devel/scons \
		lang/python

VMEM_WARNING =	Yes
TEST_DEPENDS =	devel/py-nose
BUILD_DEPENDS =	graphics/py-cairo

LIB_DEPENDS =	devel/boost \
		graphics/cairomm \
		graphics/agg \
		devel/proj \
		devel/libtool,-ltdl \
		geo/gdal \
		textproc/icu4c

WANTLIB =	cairomm-1.0 cairo icuuc ltdl png pq proj jpeg \
		boost_filesystem-mt tiff sqlite3 \
		boost_program_options-mt boost_python-mt \
		boost_regex-mt boost_system-mt boost_thread-mt \
		c freetype m stdc++ xml2 z curl gdal agg

WANTLIB += GL X11 Xau Xdamage Xdmcp Xext Xfixes Xrender Xxf86vm
WANTLIB += drm expat fontconfig glib-2.0 gobject-2.0 pcre
WANTLIB += pixman-1 pthread-stubs sigc-2.0 xcb xcb-render xcb-shm


MODSCONS_FLAGS =	PREFIX="${TRUEPREFIX}" \
			DESTDIR="${WRKINST}" \
			PNG_INCLUDES="${LOCALBASE}/include/libpng/" \
			INTERNAL_LIBAGG=no \
			SYSTEM_FONTS="${X11BASE}/lib/X11/fonts/TTF/" \
			FAST=yes \
			INPUT_PLUGINS=raster,postgis,shape,gdal,ogr,osm,sqlite

pre-configure:
	# subst shlib version
	${SUBST_CMD} ${WRKSRC}/src/build.py

do-test:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MODPY_BIN} tests/run_tests.py 

.include <bsd.port.mk>
