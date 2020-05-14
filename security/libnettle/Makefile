# $OpenBSD: Makefile,v 1.26 2020/05/14 12:20:18 ajacoutot Exp $

COMMENT=		cryptographic library

DISTNAME=		nettle-3.6
PKGNAME=		lib${DISTNAME}

SHARED_LIBS +=  hogweed                   3.0 # unknown
SHARED_LIBS +=  nettle                    6.0 # unknown

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

DEBUG_PACKAGES=		${BUILD_PACKAGES}

MAKE_FLAGS=		LIBNETTLE_SONAME=libnettle.so.${LIBnettle_VERSION} \
			LIBNETTLE_FILE=libnettle.so.${LIBnettle_VERSION} \
			LIBHOGWEED_SONAME=libhogweed.so.${LIBhogweed_VERSION} \
			LIBHOGWEED_FILE=libhogweed.so.${LIBhogweed_VERSION}

.include <bsd.port.mk>
