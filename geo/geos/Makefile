COMMENT=	2d geometry and topology engine
DISTNAME=	geos-3.10.2

CATEGORIES=	geo

MAINTAINER =	Landry Breuil <landry@openbsd.org>

SHARED_LIBS=	geos	17.0 \
		geos_c	4.6

# LGPLv2.1
PERMIT_PACKAGE=	Yes

HOMEPAGE=		https://trac.osgeo.org/geos/
MASTER_SITES=		http://download.osgeo.org/geos/

EXTRACT_SUFX=		.tar.bz2

WANTLIB=	c m ${COMPILER_LIBCXX}

# cf https://trac.osgeo.org/geos/wiki/RFC7
MODULES =	devel/cmake

# uses C++11, cf https://trac.osgeo.org/geos/wiki/RFC5
COMPILER =	base-clang ports-gcc

.include <bsd.port.mk>
