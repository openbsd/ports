COMMENT=		cryptographic library

DISTNAME=		nettle-3.10
PKGNAME=		lib${DISTNAME}

SHARED_LIBS +=  hogweed                   3.1 # 6.7
SHARED_LIBS +=  nettle                    7.3 # 8.7

CATEGORIES=		security devel

HOMEPAGE=		http://www.lysator.liu.se/~nisse/nettle/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE=		Yes

WANTLIB += c gmp

SITES=			${SITE_GNU:=nettle/}

LIB_DEPENDS=		devel/gmp

USE_GMAKE=		Yes

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.16

CONFIGURE_STYLE=	autoconf
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# fix relocation errors
.if ${MACHINE_ARCH} == "sparc64"
CONFIGURE_ENV +=	CCPIC=-fPIC
.endif

DEBUG_PACKAGES=		${BUILD_PACKAGES}

MAKE_FLAGS=		LIBNETTLE_SONAME=libnettle.so.${LIBnettle_VERSION} \
			LIBNETTLE_FILE=libnettle.so.${LIBnettle_VERSION} \
			LIBHOGWEED_SONAME=libhogweed.so.${LIBhogweed_VERSION} \
			LIBHOGWEED_FILE=libhogweed.so.${LIBhogweed_VERSION}

.include <bsd.port.mk>
