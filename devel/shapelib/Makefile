# $OpenBSD: Makefile,v 1.5 2010/04/12 13:27:43 jasper Exp $

COMMENT=	shapefile manipulation library

DISTNAME=	shapelib-1.2.10
PKGNAME=	${DISTNAME}p1
SHARED_LIBS=	shp 1.2
CATEGORIES=    	devel

HOMEPAGE=	http://shapelib.maptools.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://dl.maptools.org/dl/shapelib/

MAKE_ENV=	SHLIB_MAJOR=${LIBshp_VERSION:R} \
		SHLIB_MINOR=${LIBshp_VERSION:E}
FAKE_FLAGS=	LIBDIR=${LOCALBASE}/lib DEBUGLIBS=no

# See bsd.lib.mk:162
.if ${MACHINE_ARCH:Mmips64*}
PKG_ARGS+=	-Dno_mips64=0
.else
PKG_ARGS+=	-Dno_mips64=1
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/libshp
	${INSTALL_DATA} ${WRKSRC}/shapefil.h ${PREFIX}/include/libshp

.include <bsd.port.mk>
