# $OpenBSD: Makefile,v 1.94 2018/08/15 12:55:15 ajacoutot Exp $

BROKEN-hppa=		no atomic primitives

COMMENT-main=		text shaping library
COMMENT-icu=		ICU support for libharfbuzz

V=			1.8.8
DISTNAME=		harfbuzz-${V}
EXTRACT_SUFX=		.tar.bz2

PKGNAME-main=		harfbuzz-${V}
PKGNAME-icu=		harfbuzz-icu-${V}

SHARED_LIBS +=  harfbuzz             12.0     # 10800.8
SHARED_LIBS +=  harfbuzz-icu         1.0      # 10800.8
SHARED_LIBS +=  harfbuzz-gobject     0.1      # 10800.8
SHARED_LIBS +=  harfbuzz-subset      0.0      # 10800.8

CATEGORIES=		devel graphics textproc

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/HarfBuzz

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += freetype glib-2.0 graphite2 iconv intl m pcre pthread
WANTLIB += ${COMPILER_LIBCXX} z

MASTER_SITES=		http://www.freedesktop.org/software/harfbuzz/release/

MULTI_PACKAGES=		-main -icu

USE_GMAKE=		Yes

# C++11
COMPILER=		base-clang ports-clang ports-gcc

WANTLIB-main += ${WANTLIB}
WANTLIB-main += X11 Xext Xrender c cairo expat fontconfig pixman-1
WANTLIB-main += png xcb xcb-render xcb-shm ffi gobject-2.0

WANTLIB-icu += ${WANTLIB}
WANTLIB-icu += harfbuzz icudata icuuc

BUILD_DEPENDS=		devel/gobject-introspection

# LIB_DEPENDS needed for estdc++ in WANTLIB on non-clang archs
LIB_DEPENDS-main=	${LIB_DEPENDS} \
			graphics/cairo \
			graphics/graphite2

LIB_DEPENDS-icu=	devel/harfbuzz,-main=${V} \
			textproc/icu4c

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-introspection \
			--with-graphite2 \
			--with-gobject

pre-configure:
	sed -i 's,for suffix in so,for suffix in so.${LIBharfbuzz_VERSION},' \
		${WRKSRC}/src/check-symbols.sh

.include <bsd.port.mk>
