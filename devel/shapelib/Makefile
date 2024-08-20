COMMENT=	shapefile manipulation library

V =		1.6.1
DISTNAME=	shapelib-${V}

CATEGORIES=	devel

HOMEPAGE=	http://shapelib.maptools.org/

SHARED_LIBS +=  shp                       3.1 # 4.0

# LGPL
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

SITES=		https://download.osgeo.org/shapelib/

MODULES =	devel/cmake
# fetches gtest from the network
CONFIGURE_ARGS +=	-DBUILD_TESTING=OFF

.include <bsd.port.mk>
