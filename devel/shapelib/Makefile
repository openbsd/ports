# $OpenBSD: Makefile,v 1.12 2019/07/12 20:46:01 sthen Exp $

COMMENT=	shapefile manipulation library

DISTNAME=	shapelib-1.5.0
SHARED_LIBS=	shp 2.0
CATEGORIES=    	devel

HOMEPAGE=	http://shapelib.maptools.org/

# LGPL
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://download.osgeo.org/shapelib/

CONFIGURE_STYLE=gnu
WANTLIB +=	${COMPILER_LIBCXX} c m

.include <bsd.port.mk>
