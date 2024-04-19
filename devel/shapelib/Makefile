COMMENT=	shapefile manipulation library

V =		1.6.0
DISTNAME=	shapelib-${V}

CATEGORIES=	devel

HOMEPAGE=	http://shapelib.maptools.org/

SHARED_LIBS +=  shp                       3.0 # 4.0

# LGPL
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

SITES=		https://github.com/OSGeo/shapelib/releases/download/v${V}/

MODULES =	devel/cmake

.include <bsd.port.mk>
