# $OpenBSD: Makefile,v 1.117 2019/11/10 21:44:07 ajacoutot Exp $

BROKEN-hppa=		no atomic primitives

COMMENT-main=		text shaping library
COMMENT-icu=		ICU support for libharfbuzz

V=			2.6.4
DISTNAME=		harfbuzz-${V}
EXTRACT_SUFX=		.tar.xz

PKGNAME-main=		harfbuzz-${V}
PKGNAME-icu=		harfbuzz-icu-${V}

REVISION-main=		1
REVISION-icu=		1

SHARED_LIBS +=  harfbuzz             15.1     # 20600.4
SHARED_LIBS +=  harfbuzz-icu         1.2      # 20600.4
SHARED_LIBS +=  harfbuzz-gobject     0.3      # 20600.4
SHARED_LIBS +=  harfbuzz-subset      0.2      # 20600.4

CATEGORIES=		devel graphics textproc

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/HarfBuzz

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} freetype glib-2.0 graphite2 iconv intl m z

WANTLIB-main += ${WANTLIB} X11 Xext Xrender c cairo expat ffi fontconfig
WANTLIB-main += gobject-2.0 graphite2 pcre pixman-1 png xcb xcb-render
WANTLIB-main += xcb-shm

WANTLIB-icu += ${WANTLIB} harfbuzz icudata icuuc

MASTER_SITES=		https://www.freedesktop.org/software/harfbuzz/release/

MULTI_PACKAGES=		-main -icu

DEBUG_PACKAGES=		${BUILD_PACKAGES}

USE_GMAKE=		Yes

# C++11
COMPILER=		base-clang ports-gcc ports-clang

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
