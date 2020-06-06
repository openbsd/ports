# $OpenBSD: Makefile,v 1.120 2020/06/06 09:54:45 ajacoutot Exp $

BROKEN-hppa=		no atomic primitives

COMMENT-main=		text shaping library
COMMENT-icu=		ICU support for libharfbuzz

V=			2.6.7
DISTNAME=		harfbuzz-${V}
EXTRACT_SUFX=		.tar.xz

PKGNAME-main=		harfbuzz-${V}
PKGNAME-icu=		harfbuzz-icu-${V}

SHARED_LIBS +=  harfbuzz             15.2     # 20600.7
SHARED_LIBS +=  harfbuzz-icu         1.2      # 20600.7
SHARED_LIBS +=  harfbuzz-gobject     0.3      # 20600.7
SHARED_LIBS +=  harfbuzz-subset      0.2      # 20600.7

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

#MASTER_SITES=		https://www.freedesktop.org/software/harfbuzz/release/
MASTER_SITES=		https://github.com/harfbuzz/harfbuzz/releases/download/${V}/

MULTI_PACKAGES=		-main -icu

DEBUG_PACKAGES=		${BUILD_PACKAGES}

USE_GMAKE=		Yes

# C++11
COMPILER=		base-clang ports-gcc ports-clang

# XXX temporary until the move to meson(1)
MODULES=		lang/python
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}
MODPY_RUNDEP=		No
MODPY_BUILDDEP=		No
TEST_DEPENDS +=		${MODPY_RUN_DEPENDS}

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
	${SUBST_CMD} ${WRKSRC}/src/check-symbols.py

.include <bsd.port.mk>
