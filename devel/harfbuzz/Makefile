# $OpenBSD: Makefile,v 1.43 2015/11/27 06:30:11 ajacoutot Exp $

BROKEN-hppa=		no atomic primitives
BROKEN-mips64=		no atomic primitives

COMMENT-main=		text shaping library
COMMENT-icu=		ICU support for libharfbuzz

V=			1.1.2
DISTNAME=		harfbuzz-${V}
EXTRACT_SUFX=		.tar.bz2

PKGNAME-main=		harfbuzz-${V}
PKGNAME-icu=		harfbuzz-icu-${V}

SHARED_LIBS +=  harfbuzz             7.0      # 10102.0
SHARED_LIBS +=  harfbuzz-icu         0.2      # 10102.0
SHARED_LIBS +=  harfbuzz-gobject     0.0      # 10102.0

CATEGORIES=		devel graphics textproc

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/HarfBuzz

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += freetype glib-2.0 graphite2 m pcre pthread stdc++ z

MASTER_SITES=		http://www.freedesktop.org/software/harfbuzz/release/

MULTI_PACKAGES=		-main -icu

MODULES=		devel/gettext

USE_GMAKE=		Yes

WANTLIB-main += ${WANTLIB}
WANTLIB-main += X11 Xext Xrender c cairo expat fontconfig pixman-1
WANTLIB-main += png pthread-stubs xcb xcb-render xcb-shm ffi
WANTLIB-main += gobject-2.0

WANTLIB-icu += ${WANTLIB}
WANTLIB-icu += harfbuzz icudata icuuc

BUILD_DEPENDS=		devel/gobject-introspection

LIB_DEPENDS-main=	${MODGETTEXT_LIB_DEPENDS} \
			graphics/cairo \
			graphics/graphite2

LIB_DEPENDS-icu=	devel/harfbuzz,-main=${V} \
			textproc/icu4c

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-introspection \
			--with-graphite2 \
			--with-gobject

pre-configure:
	sed -i 's,for suffix in so,for suffix in so.${LIBharfbuzz_VERSION},' \
		${WRKSRC}/src/check-symbols.sh

.include <bsd.port.mk>
