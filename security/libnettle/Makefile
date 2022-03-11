COMMENT=		cryptographic library

DISTNAME=		nettle-3.7.3
PKGNAME=		lib${DISTNAME}

SHARED_LIBS +=  hogweed                   3.0 # 6.3
SHARED_LIBS +=  nettle                    7.0 # 8.3

CATEGORIES=		security devel

HOMEPAGE=		http://www.lysator.liu.se/~nisse/nettle/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE=		Yes

WANTLIB += c gmp

MASTER_SITES=		${MASTER_SITE_GNU:=nettle/}

LIB_DEPENDS=		devel/gmp

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# fix relocation errors
.if ${MACHINE_ARCH} == "sparc64"
CONFIGURE_ENV +=	CCPIC=-fPIC
.endif

# aes-encrypt-internal-2.s:326:1: error: unexpected token at start of statement
# .0:
# ^
.if ${MACHINE_ARCH} == "powerpc64"
CONFIGURE_ARGS +=	--disable-assembler
.endif

DEBUG_PACKAGES=		${BUILD_PACKAGES}

MAKE_FLAGS=		LIBNETTLE_SONAME=libnettle.so.${LIBnettle_VERSION} \
			LIBNETTLE_FILE=libnettle.so.${LIBnettle_VERSION} \
			LIBHOGWEED_SONAME=libhogweed.so.${LIBhogweed_VERSION} \
			LIBHOGWEED_FILE=libhogweed.so.${LIBhogweed_VERSION}

.include <bsd.port.mk>
