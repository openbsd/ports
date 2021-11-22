# $OpenBSD: Makefile,v 1.137 2021/11/22 15:00:42 espie Exp $

BROKEN-hppa=		no atomic primitives

COMMENT-main=		text shaping library
COMMENT-icu=		ICU support for libharfbuzz

GH_ACCOUNT=		harfbuzz
GH_PROJECT=		harfbuzz
GH_TAGNAME=		3.1.1

SHARED_LIBS += harfbuzz                  16.1 # 0.30101.0
SHARED_LIBS += harfbuzz-subset           1.0 # 0.30101.0
SHARED_LIBS += harfbuzz-icu              1.2 # 0.30101.0
SHARED_LIBS += harfbuzz-gobject          0.3 # 0.30101.0

CATEGORIES=		devel graphics textproc

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

WANTLIB-main += c cairo freetype glib-2.0 gobject-2.0 graphite2 m

WANTLIB-icu += harfbuzz icuuc

MULTI_PACKAGES=		-main -icu

DEBUG_PACKAGES=		${BUILD_PACKAGES}

# C++11
COMPILER=		base-clang ports-gcc ports-clang

MODULES=		devel/meson

BUILD_DEPENDS=		devel/gobject-introspection

LIB_DEPENDS-main=	graphics/cairo \
			graphics/graphite2

LIB_DEPENDS-icu=	devel/harfbuzz,-main=${GH_TAGNAME} \
			textproc/icu4c

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
# needed for estdc++ in WANTLIB
LIB_DEPENDS-main +=	${LIB_DEPENDS}
.endif

CONFIGURE_ARGS=		-Dgraphite2=enabled \
			-Ddocs=disabled

# bloat: requires ImageMagick
CONFIGURE_ARGS +=	-Dchafa=disabled

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/check-symbols.py

.include <bsd.port.mk>
