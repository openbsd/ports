# $OpenBSD: Makefile,v 1.2 2006/10/08 22:01:06 steven Exp $

COMMENT=	"shapefile manipulation library"

DISTNAME=	shapelib-1.2.10
SHARED_LIBS=	shp 1.2
CATEGORIES=    	devel

HOMEPAGE=	http://shapelib.maptools.org/

MAINTAINER=	Jason Wright <jason@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://dl.maptools.org/dl/shapelib/

MAKE_ENV=	SHLIB_MAJOR=${LIBshp_VERSION:R} \
		SHLIB_MINOR=${LIBshp_VERSION:E}
FAKE_FLAGS=	LIBDIR=${LOCALBASE}/lib DEBUGLIBS=no

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/libshp
	${INSTALL_DATA} ${WRKSRC}/shapefil.h ${PREFIX}/include/libshp

.include <bsd.port.mk>
