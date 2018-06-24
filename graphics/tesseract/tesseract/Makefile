# $OpenBSD: Makefile,v 1.15 2018/06/24 12:27:05 ajacoutot Exp $

COMMENT=	OCR Engine developed at HP Labs

GH_PROJECT=	tesseract
GH_TAGNAME=	3.05.02

SHARED_LIBS +=  tesseract            3.2      # 3.5

WANTLIB += ${COMPILER_LIBCXX} X11 Xext Xrender c cairo expat ffi
WANTLIB += fontconfig freetype fribidi gif glib-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 harfbuzz iconv icudata icui18n
WANTLIB += icuuc intl jpeg lept m openjp2 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png tiff webp xcb xcb-render
WANTLIB += xcb-shm z

# c++11: needed to build the training tools
COMPILER =		base-clang ports-gcc

ALL_TARGET=		training

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
			devel/libtool
pre-configure:
	cd ${WRKSRC} && ${SETENV} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		autoreconf -fi
###

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tesseract
	${INSTALL_DATA} ${WRKSRC}/testing/{eurotext.tif,phototest.tif} \
		${PREFIX}/share/examples/tesseract

.include <bsd.port.mk>
