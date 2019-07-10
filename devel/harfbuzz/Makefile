# $OpenBSD: Makefile,v 1.108 2019/07/10 21:01:26 tj Exp $

BROKEN-hppa=		no atomic primitives

COMMENT-main=		text shaping library
COMMENT-icu=		ICU support for libharfbuzz

V=			2.4.0
DISTNAME=		harfbuzz-${V}
EXTRACT_SUFX=		.tar.bz2

PKGNAME-main=		harfbuzz-${V}
PKGNAME-icu=		harfbuzz-icu-${V}
REVISION-icu=		1
REVISION-main=		1

SHARED_LIBS +=  harfbuzz             14.3     # 20301.0
SHARED_LIBS +=  harfbuzz-icu         1.0      # 20301.0
SHARED_LIBS +=  harfbuzz-gobject     0.1      # 20301.0
SHARED_LIBS +=  harfbuzz-subset      0.0      # 20301.0

CATEGORIES=		devel graphics textproc

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/HarfBuzz

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} freetype glib-2.0 graphite2 iconv intl m z

WANTLIB-main += ${WANTLIB} X11 Xext Xrender c cairo expat ffi fontconfig
WANTLIB-main += gobject-2.0 graphite2 pcre pixman-1 png xcb xcb-render
WANTLIB-main += xcb-shm

WANTLIB-icu += ${WANTLIB} harfbuzz icudata icuuc

MASTER_SITES=		https://www.freedesktop.org/software/harfbuzz/release/

MULTI_PACKAGES=		-main -icu

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
