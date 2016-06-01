# $OpenBSD: Makefile,v 1.30 2016/06/01 08:34:25 landry Exp $

COMMENT =	convert various Microsoft formats into HTML/PNG

DISTNAME =	wv-1.2.9

SHARED_LIBS =	wv-1.2		1.0 \
		wv		1.0

CATEGORIES =	converters

HOMEPAGE =	http://wvware.sourceforge.net/

PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 bz2 c expat ffi freetype gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gsf-1 jpeg lzma m pcre png pthread wmf-0.2
WANTLIB += wmflite-0.2 xcb xml2 z

MODULES =	devel/gettext

MASTER_SITES =	http://abisource.com/downloads/wv/1.2.9/

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
