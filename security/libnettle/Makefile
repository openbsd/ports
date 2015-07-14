# $OpenBSD: Makefile,v 1.15 2015/07/14 03:21:15 ajacoutot Exp $

COMMENT=		cryptographic library

DISTNAME=		nettle-3.1.1
PKGNAME=		lib${DISTNAME}

SHARED_LIBS +=  hogweed                   2.0 # 2.3
SHARED_LIBS +=  nettle                    2.0 # 4.5

CATEGORIES=		security devel

HOMEPAGE=		http://www.lysator.liu.se/~nisse/nettle/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gmp

MASTER_SITES=		${MASTER_SITE_GNU:=nettle/}

LIB_DEPENDS=		devel/gmp

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# binutils 2.15 can't handle memxor.s
.if ${MACHINE_ARCH} == "arm"
CONFIGURE_ARGS +=	--disable-assembler
.endif

MAKE_FLAGS=		LIBNETTLE_SONAME=libnettle.so.${LIBnettle_VERSION} \
			LIBNETTLE_FILE=libnettle.so.${LIBnettle_VERSION} \
			LIBHOGWEED_SONAME=libhogweed.so.${LIBhogweed_VERSION} \
			LIBHOGWEED_FILE=libhogweed.so.${LIBhogweed_VERSION}

.include <bsd.port.mk>
