# $OpenBSD: Makefile,v 1.9 2013/03/11 10:50:30 espie Exp $

COMMENT=	shapefile manipulation library

DISTNAME=	shapelib-1.2.10
REVISION =	2
SHARED_LIBS=	shp 1.2
CATEGORIES=    	devel

HOMEPAGE=	http://shapelib.maptools.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://dl.maptools.org/dl/shapelib/

MAKE_ENV=	SHLIB_MAJOR=${LIBshp_VERSION:R} \
		SHLIB_MINOR=${LIBshp_VERSION:E}
FAKE_FLAGS=	LIBDIR=${LOCALBASE}/lib DEBUGLIBS=no

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/libshp
	${INSTALL_DATA} ${WRKSRC}/shapefil.h ${PREFIX}/include/libshp

.include <bsd.port.mk>
