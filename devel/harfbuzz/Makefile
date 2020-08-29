# $OpenBSD: Makefile,v 1.126 2020/08/29 08:59:34 ajacoutot Exp $

BROKEN-hppa=		no atomic primitives

COMMENT-main=		text shaping library
COMMENT-icu=		ICU support for libharfbuzz

GH_ACCOUNT=		harfbuzz
GH_PROJECT=		harfbuzz
GH_TAGNAME=		2.7.2

PKGNAME-main=		harfbuzz-${GH_TAGNAME}
PKGNAME-icu=		harfbuzz-icu-${GH_TAGNAME}

SHARED_LIBS += harfbuzz                 15.4 # 0.20702.0
SHARED_LIBS += harfbuzz-subset           0.2 # 0.20702.0
SHARED_LIBS += harfbuzz-icu              1.2 # 0.20702.0
SHARED_LIBS += harfbuzz-gobject          0.3 # 0.20702.0

CATEGORIES=		devel graphics textproc

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

WANTLIB-main += ${COMPILER_LIBCXX}
WANTLIB-main += c cairo freetype glib-2.0 gobject-2.0 graphite2 m

WANTLIB-icu += harfbuzz icuuc

MULTI_PACKAGES=		-main -icu

DEBUG_PACKAGES=		${BUILD_PACKAGES}

USE_GMAKE=		Yes

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

CONFIGURE_ARGS=		-Dgraphite=enabled \
			-Ddocs=disabled

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/check-symbols.py

.include <bsd.port.mk>
