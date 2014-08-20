# $OpenBSD: Makefile,v 1.12 2014/08/20 07:18:25 ajacoutot Exp $

COMMENT=	cryptographic library

DISTNAME=	nettle-2.7.1
REVISION=	0
PKGNAME=	lib${DISTNAME}

SHARED_LIBS +=  hogweed                   1.1 # 2.3
SHARED_LIBS +=  nettle                    1.2 # 4.5

CATEGORIES=	security devel

HOMEPAGE=	http://www.lysator.liu.se/~nisse/nettle/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gmp

MASTER_SITES=	${MASTER_SITE_GNU:=nettle/}

BUILD_DEPENDS=	devel/m4

LIB_DEPENDS=	devel/gmp

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		M4=${LOCALBASE}/bin/gm4

# binutils 2.15 can't handle memxor.s
.if ${MACHINE_ARCH} == "arm"
CONFIGURE_ARGS += --disable-assembler
.endif

MAKE_FLAGS=	LIBNETTLE_SONAME=libnettle.so.${LIBnettle_VERSION} \
		LIBNETTLE_FILE=libnettle.so.${LIBnettle_VERSION} \
		LIBHOGWEED_SONAME=libhogweed.so.${LIBhogweed_VERSION} \
		LIBHOGWEED_FILE=libhogweed.so.${LIBhogweed_VERSION}

.include <bsd.port.mk>
