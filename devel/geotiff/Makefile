# $OpenBSD: Makefile,v 1.18 2016/09/12 11:28:59 landry Exp $

COMMENT=	GIS TIFF interchange library

DISTNAME=	libgeotiff-1.4.2
CATEGORIES=	devel geo
SHARED_LIBS=	geotiff 2.0

HOMEPAGE=	http://trac.osgeo.org/geotiff/

MAINTAINER=	Landry Breuil <landry@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://download.osgeo.org/geotiff/libgeotiff/

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
