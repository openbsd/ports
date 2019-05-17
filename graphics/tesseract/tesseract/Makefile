# $OpenBSD: Makefile,v 1.19 2019/05/17 16:45:27 sthen Exp $

COMMENT=	OCR Engine developed at HP Labs

GH_PROJECT=	tesseract
REVISION=	0

SHARED_LIBS +=  tesseract            4.0

WANTLIB += ${COMPILER_LIBCXX} X11 Xext Xrender c cairo expat ffi
WANTLIB += fontconfig freetype fribidi gif glib-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 harfbuzz iconv icudata icui18n
WANTLIB += icuuc intl jpeg lept m openjp2 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png tiff webp xcb xcb-render
WANTLIB += xcb-shm z

# c++11: needed to build the training tools
COMPILER =		base-clang ports-gcc

LIB_DEPENDS=		devel/pango \
			graphics/leptonica \
			textproc/icu4c

RUN_DEPENDS=		graphics/tesseract/tessdata,-main

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

ALL_TARGET=		all training
INSTALL_TARGET=		install training-install

###
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool \
			textproc/asciidoc

do-gen:
	cd ${WRKSRC} && ${AUTOCONF_ENV} autoreconf -fi

.include <bsd.port.mk>
