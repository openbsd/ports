# $OpenBSD: Makefile,v 1.27 2015/01/24 08:38:16 ajacoutot Exp $

COMMENT-main=		text shaping library
COMMENT-icu=		ICU support for libharfbuzz

V=			0.9.38
DISTNAME=		harfbuzz-${V}
EXTRACT_SUFX=		.tar.bz2

PKGNAME-main=		harfbuzz-${V}
PKGNAME-icu=		harfbuzz-icu-${V}

SHARED_LIBS +=  harfbuzz             5.0      # 938.0
SHARED_LIBS +=  harfbuzz-icu         0.2      # 938.0
SHARED_LIBS +=  harfbuzz-gobject     0.0      # 938.0

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

BUILB_DEPENDS=		devel/gobject-introspection

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
	perl -pi -e 's,for suffix in so,for suffix in so.${LIBharfbuzz_VERSION},,' \
		${WRKSRC}/src/check-symbols.sh

.include <bsd.port.mk>
