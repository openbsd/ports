# $OpenBSD: Makefile,v 1.15 2013/07/05 06:12:53 espie Exp $

COMMENT=	GIS TIFF interchange library

DISTNAME=	libgeotiff-1.4.0
CATEGORIES=	devel geo
SHARED_LIBS=	geotiff 1.3

HOMEPAGE=	http://trac.osgeo.org/geotiff/

MAINTAINER=	Landry Breuil <landry@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		ftp://ftp.remotesensing.org/geotiff/libgeotiff/ \
			http://download.osgeo.org/geotiff/libgeotiff/

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV +=	CFLAGS="-I${LOCALBASE}/include -fPIC $(COPTS)" \
			LDFLAGS=-L${LOCALBASE}/lib

CONFIGURE_ARGS=		--with-jpeg=${LOCALBASE} \
			--with-proj=${LOCALBASE} \
			--with-libtiff=${LOCALBASE} \
			--with-libz

WANTLIB=		c jpeg m z proj tiff pthread

LIB_DEPENDS=		devel/proj \
			graphics/tiff

.include <bsd.port.mk>
