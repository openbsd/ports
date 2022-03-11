BROKEN-hppa=		no atomic primitives

COMMENT-main=		text shaping library
COMMENT-icu=		ICU support for libharfbuzz

V=			4.0.0
DISTNAME=		harfbuzz-${V}
EXTRACT_SUFX=		.tar.xz

SHARED_LIBS += harfbuzz                  17.0 # 0.40000.0
SHARED_LIBS += harfbuzz-subset           2.0 # 0.40000.0
SHARED_LIBS += harfbuzz-icu              2.0 # 0.40000.0
SHARED_LIBS += harfbuzz-gobject          1.0 # 0.40000.0

CATEGORIES=		devel graphics textproc

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

MASTER_SITES=		https://github.com/harfbuzz/harfbuzz/releases/download/${V}/

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

LIB_DEPENDS-icu=	devel/harfbuzz,-main=${V} \
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
