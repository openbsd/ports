# $OpenBSD: Makefile,v 1.11 2019/03/19 19:45:08 landry Exp $

COMMENT=	shapefile manipulation library

DISTNAME=	shapelib-1.5.0
SHARED_LIBS=	shp 2.0
CATEGORIES=    	devel

HOMEPAGE=	http://shapelib.maptools.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://download.osgeo.org/shapelib/

CONFIGURE_STYLE=gnu
WANTLIB +=	${COMPILER_LIBCXX} c m

.include <bsd.port.mk>
