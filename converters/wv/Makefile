COMMENT =	convert various Microsoft formats into HTML/PNG

DISTNAME =	wv-1.2.9
REVISION =	3

SHARED_LIBS =	wv-1.2		1.0 \
		wv		1.0

CATEGORIES =	converters

HOMEPAGE =	https://wvware.sourceforge.net/

PERMIT_PACKAGE =	Yes

WANTLIB =  X11 bz2 c expat ffi freetype gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gsf-1 iconv intl jpeg lzma m pcre2-8 png pthread
WANTLIB += wmf-0.2 wmflite-0.2 xcb xml2 z

SITES =		http://abisource.com/downloads/wv/1.2.9/

RUN_DEPENDS =	graphics/ImageMagick
LIB_DEPENDS =	devel/libgsf \
		graphics/libwmf

MAKE_FILE =	GNUmakefile

USE_GMAKE =	Yes
CONFIGURE_STYLE = gnu
CONFIGURE_ARGS = --enable-static \
		 --with-png=${LOCALBASE} --with-libwmf=${LOCALBASE}

NO_TEST =	Yes

.include <bsd.port.mk>
