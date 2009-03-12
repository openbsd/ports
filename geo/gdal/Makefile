# $OpenBSD: Makefile,v 1.2 2009/03/12 20:55:09 sthen Exp $

COMMENT=	translator library for raster geospatial data formats
DISTNAME=	gdal-1.5.3
PKGNAME=	${DISTNAME}p0
SHARED_LIBS=	gdal 13.3
CATEGORIES=	geo devel

HOMEPAGE =	http://www.gdal.org/

MAINTAINER =	Peter Valchev <pvalchev@openbsd.org>

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB =	c expat m stdc++ z

MASTER_SITES =	http://download.osgeo.org/gdal/

LIB_DEPENDS =	tiff::graphics/tiff \
		png::graphics/png \
		gif::graphics/libungif \
		jpeg::graphics/jpeg \
		jasper::graphics/jasper \
		geotiff::devel/geotiff

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
		--without-curl \
		--without-cfitsio \
		--without-netcdf \
		--without-xerces \
		--without-mysql \
		--without-sqlite3 \
		--without-pg \
		--without-odbc \
		--without-oci \
		--without-geos \
		--without-grass \
		--without-idb \
		--without-sde \
		--without-libgrass \
		--without-perl \
		--without-php \
		--without-ruby \
		--without-python \
		--without-ogpython \
		--without-threads \
		--with-png-inc="${LOCALBASE}/include/libpng" \
		--with-png-lib="${LOCALBASE}/lib" \
		--with-tiff=${LOCALBASE} \
		--with-gif=${LOCALBASE} \
		--with-jpeg=${LOCALBASE} \
		--with-jasper=${LOCALBASE}

.include <bsd.port.mk>
