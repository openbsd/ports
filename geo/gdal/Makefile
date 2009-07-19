# $OpenBSD: Makefile,v 1.8 2009/07/19 12:01:58 landry Exp $

COMMENT-main=	translator library for geospatial data formats
COMMENT-python=	python bindings and utilities for GDAL
COMMENT-perl=	perl bindings for GDAL

V=		1.6.1
DISTNAME=	gdal-${V}

PKGNAME-main=	${DISTNAME}
PKGNAME-python=	py-${DISTNAME}
PKGNAME-perl=   p5-Geo-GDAL-${V}

SHARED_LIBS=	gdal 15.0
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
MODPY_EGG_VERSION=${V}

NO_REGRESS=	Yes
MAKE_FILE=	GNUmakefile
MAKE_FLAGS=	LIBTOOL_FINISH=:
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include \
			  -I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib"

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
