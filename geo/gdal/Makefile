# $OpenBSD: Makefile,v 1.6 2009/04/01 10:46:48 kili Exp $

COMMENT-main=	translator library for geospatial data formats
COMMENT-python=	python bindings and utilities for GDAL
COMMENT-perl=	perl bindings for GDAL

V=		1.6.0
DISTNAME=	gdal-${V}

PKGNAME-main=	${DISTNAME}p1
PKGNAME-python=	py-${DISTNAME}p0
PKGNAME-perl=   p5-Geo-GDAL-${V}p0

SHARED_LIBS=	gdal 14.0
CATEGORIES=	geo devel

HOMEPAGE =	http://www.gdal.org/

MAINTAINER =	Landry Breuil <gaston@gcu.info>

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES =	http://download.osgeo.org/gdal/

MODULES =	perl lang/python devel/gettext

WANTLIB-main =	${WANTLIB} c crypto expat m ssl stdc++ z
WANTLIB-perl =	crypto curl expat geos_c geotiff gif idn jasper jpeg m \
		png pq ssl tiff z

LIB_DEPENDS-main =	${LIB_DEPENDS} \
		tiff::graphics/tiff \
		curl::net/curl \
		pq:postgresql-client-*:databases/postgresql \
		geos,geos_c::geo/geos \
		idn::devel/libidn \
		png::graphics/png \
		gif::graphics/libungif \
		jpeg::graphics/jpeg \
		jasper::graphics/jasper \
		geotiff::devel/geotiff

LIB_DEPENDS-python=	gdal:${PKGNAME}:${BASE_PKGPATH},-main
LIB_DEPENDS-perl=	gdal:${PKGNAME}:${BASE_PKGPATH},-main

RUN_DEPENDS+=	::math/py-numpy
BUILD_DEPENDS+=	${RUN_DEPENDS} ::devel/swig

MULTI_PACKAGES=	-main -python -perl

MODPY_SETUPTOOLS=Yes
MODPY_EGG_VERSION=1.6.0

NO_REGRESS=	Yes
MAKE_FILE=	GNUmakefile
MAKE_FLAGS=	LIBTOOL_FINISH=:
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include \
			  -I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		PYTHON=${MODPY_BIN}

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--without-cfitsio \
		--without-netcdf \
		--without-xerces \
		--without-mysql \
		--without-sqlite3 \
		--without-odbc \
		--without-oci \
		--without-grass \
		--without-idb \
		--without-sde \
		--without-libgrass \
		--without-php \
		--without-ruby \
		--without-ogpython \
		--without-threads \
		--with-png-inc="${LOCALBASE}/include/libpng" \
		--with-png-lib="${LOCALBASE}/lib" \
		--with-pg=${LOCALBASE}/bin/pg_config \
		--with-python \
		--with-perl \
		--with-geos \
		--with-curl=${LOCALBASE} \
		--with-tiff=${LOCALBASE} \
		--with-gif=${LOCALBASE} \
		--with-jpeg=${LOCALBASE} \
		--with-jasper=${LOCALBASE}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

.include <bsd.port.mk>
