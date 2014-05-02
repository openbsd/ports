# $OpenBSD: Makefile,v 1.20 2014/05/02 16:22:07 ajacoutot Exp $

COMMENT-main=		text shaping library
COMMENT-icu=		ICU support for libharfbuzz

V=			0.9.28
DISTNAME=		harfbuzz-${V}
EXTRACT_SUFX=		.tar.bz2

PKGNAME-main=		harfbuzz-${V}
PKGNAME-icu=		harfbuzz-icu-${V}

SHARED_LIBS +=  harfbuzz             4.3      # 928.0
SHARED_LIBS +=  harfbuzz-icu         0.1      # 928.0

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
WANTLIB-main += png pthread-stubs xcb xcb-render xcb-shm

WANTLIB-icu += ${WANTLIB}
WANTLIB-icu += harfbuzz icudata icuuc

LIB_DEPENDS-main=	${MODGETTEXT_LIB_DEPENDS} \
			graphics/cairo \
			graphics/graphite2

LIB_DEPENDS-icu=	devel/harfbuzz,-main=${V} \
			textproc/icu4c

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--with-graphite2

# If one of these tools is found at configure stage, it might be used,
# no matter whether we use --disable-gtk-doc or not.
CONFIGURE_ENV +=	ac_cv_path_GTKDOC_CHECK="" \
			ac_cv_path_GTKDOC_REBASE="" \
			ac_cv_path_GTKDOC_MKPDF=""

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/check-symbols.sh

.include <bsd.port.mk>
