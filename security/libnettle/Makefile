COMMENT=		cryptographic library

DISTNAME=		nettle-3.10.2
PKGNAME=		lib${DISTNAME}
REVISION=		0

SHARED_LIBS +=  hogweed                   3.1 # 6.7
SHARED_LIBS +=  nettle                    7.3 # 8.7

CATEGORIES=		security devel

HOMEPAGE=		http://www.lysator.liu.se/~nisse/nettle/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE=		Yes

WANTLIB += gmp

SITES=			${SITE_GNU:=nettle/}

LIB_DEPENDS=		devel/gmp

USE_GMAKE=		Yes

AUTOCONF_VERSION=	2.71
AUTOMAKE_VERSION=	1.16

CONFIGURE_STYLE=	autoconf
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# don't conflict with security/nettle
CONFIGURE_ARGS +=	--includedir=${PREFIX}/include/nettle3 \
			--libdir=${PREFIX}/lib/nettle3 \
			--disable-documentation \
			--disable-static

DEBUG_PACKAGES=		${BUILD_PACKAGES}

MAKE_FLAGS=		LIBNETTLE_SONAME=libnettle.so.${LIBnettle_VERSION} \
			LIBNETTLE_FILE=libnettle.so.${LIBnettle_VERSION} \
			LIBHOGWEED_SONAME=libhogweed.so.${LIBhogweed_VERSION} \
			LIBHOGWEED_FILE=libhogweed.so.${LIBhogweed_VERSION}

# don't conflict with security/nettle
post-install:
	rm -f ${PREFIX}/bin/*

.include <bsd.port.mk>
