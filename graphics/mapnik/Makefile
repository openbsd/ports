# $OpenBSD: Makefile,v 1.1.1.1 2010/10/24 22:40:54 landry Exp $

COMMENT =	toolkit for developing mapping applications

DISTNAME =	mapnik-0.7.1
EXTRACT_SUFX =	.tar.bz2

SHARED_LIBS =	mapnik 0.0 #0.7
CATEGORIES =	graphics geo

HOMEPAGE =	http://mapnik.org/
MAINTAINER =	Landry Breuil <gaston@gcu.info>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_BERLIOS:=mapnik/}

MODULES =	devel/scons lang/python

VMEM_WARNING =	Yes

BUILD_DEPENDS =	::graphics/py-cairo

LIB_DEPENDS =	::devel/boost \
		::graphics/cairomm \
		::graphics/agg \
		::devel/proj \
		::devel/libtool,-ltdl \
		::geo/gdal \
		::textproc/icu4c

WANTLIB =	cairomm-1.0 cairo icuuc ltdl png pq proj jpeg \
		boost_filesystem-mt boost_iostreams-mt tiff \
		boost_program_options-mt boost_python-mt \
		boost_regex-mt boost_system-mt boost_thread-mt \
		c freetype m stdc++ xml2 z curl gdal agg pthread

MODSCONS_FLAGS =	PREFIX="${TRUEPREFIX}" \
			INTERNAL_LIBAGG=no \
			SYSTEM_FONTS="${X11BASE}/lib/X11/fonts/TTF/" \
			USE_CONFIG=no \
			FAST=yes \
			INPUT_PLUGINS=raster,postgis,shape,gdal,ogr,osm

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/SConscript

.include <bsd.port.mk>
