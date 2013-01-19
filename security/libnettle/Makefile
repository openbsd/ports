# $OpenBSD: Makefile,v 1.7 2013/01/19 07:04:01 ajacoutot Exp $

COMMENT=	cryptographic library

DISTNAME=	nettle-2.6
PKGNAME=	lib${DISTNAME}
REVISION=	0

SHARED_LIBS +=  hogweed                   1.1 # 2.3
SHARED_LIBS +=  nettle                    1.1 # 4.5

CATEGORIES=	security devel

HOMEPAGE=	http://www.lysator.liu.se/~nisse/nettle/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c gmp

MASTER_SITES=	http://www.lysator.liu.se/~nisse/archive/ \
		ftp://ftp.lysator.liu.se/pub/security/lsh

BUILD_DEPENDS=	devel/m4

LIB_DEPENDS=	devel/gmp

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		M4=${LOCALBASE}/bin/gm4

MAKE_FLAGS=	LIBNETTLE_SONAME=libnettle.so.${LIBnettle_VERSION} \
		LIBNETTLE_FILE=libnettle.so.${LIBnettle_VERSION} \
		LIBHOGWEED_SONAME=libhogweed.so.${LIBhogweed_VERSION} \
		LIBHOGWEED_FILE=libhogweed.so.${LIBhogweed_VERSION}

.include <bsd.port.mk>
