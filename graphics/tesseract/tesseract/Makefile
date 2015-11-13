# $OpenBSD: Makefile,v 1.1 2015/11/13 12:54:22 ajacoutot Exp $

COMMENT=		OCR Engine developed at HP Labs

GH_PROJECT=		tesseract

SHARED_LIBS +=  tesseract            3.2      # 3.2

WANTLIB += X11 Xext Xrender c cairo expat ffi fontconfig freetype
WANTLIB += gif glib-2.0 gobject-2.0 graphite2 gthread-2.0 harfbuzz
WANTLIB += icudata icui18n icuuc jpeg lept m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += stdc++ tiff webp xcb xcb-render xcb-shm z

MODULES=		devel/gettext

# c++11: needed to build the training tools
MODULES +=		gcc4
MODGCC4_ARCHS=		*
MODGCC4_LANGS=		c++

LIB_DEPENDS=		devel/pango \
			graphics/leptonica \
			textproc/icu4c

RUN_DEPENDS=		graphics/tesseract/tessdata,-main

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS=		${CONFIGURE_SHARED}

ALL_TARGET=		all training
INSTALL_TARGET=		install training-install

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tesseract
	${INSTALL_DATA} ${WRKSRC}/testing/{eurotext.tif,phototest.tif} \
		${PREFIX}/share/examples/tesseract

.include <bsd.port.mk>
