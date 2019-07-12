# $OpenBSD: Makefile,v 1.21 2019/07/12 20:44:09 sthen Exp $

COMMENT=	GIS TIFF interchange library

DISTNAME=	libgeotiff-1.5.1
CATEGORIES=	devel geo
SHARED_LIBS=	geotiff 3.0 # 5.0

HOMEPAGE=	http://trac.osgeo.org/geotiff/

MAINTAINER=	Landry Breuil <landry@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MASTER_SITES=		http://download.osgeo.org/geotiff/libgeotiff/

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV +=	CFLAGS="-I${LOCALBASE}/include -fPIC $(COPTS)" \
			LDFLAGS=-L${LOCALBASE}/lib

CONFIGURE_ARGS=		--with-jpeg=${LOCALBASE} \
			--with-proj=${LOCALBASE} \
			--with-libtiff=${LOCALBASE} \
			--with-libz

WANTLIB=		c jpeg m z proj tiff pthread sqlite3

LIB_DEPENDS=		devel/proj>=6 \
			graphics/tiff

.include <bsd.port.mk>
