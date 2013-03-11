# $OpenBSD: Makefile,v 1.12 2013/03/11 10:50:04 espie Exp $

COMMENT=	GIS TIFF interchange library

DISTNAME=	libgeotiff-1.3.0
CATEGORIES=	devel geo
SHARED_LIBS=	geotiff 1.2

HOMEPAGE=	http://trac.osgeo.org/geotiff/

MAINTAINER=	Landry Breuil <gaston@gcu.info>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		ftp://ftp.remotesensing.org/geotiff/libgeotiff/ \
			http://download.osgeo.org/geotiff/libgeotiff/

NO_TEST=		Yes
USE_LIBTOOL =		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV +=	CFLAGS="-I${LOCALBASE}/include -fPIC" \
			LDFLAGS=-L${LOCALBASE}/lib

CONFIGURE_ARGS=		--with-jpeg=${LOCALBASE} \
			--with-proj=${LOCALBASE} \
			--with-libtiff=${LOCALBASE} \
			--with-libz

WANTLIB=		c jpeg m z proj tiff pthread

LIB_DEPENDS=		devel/proj \
			graphics/tiff

.include <bsd.port.mk>
