# $OpenBSD: Makefile,v 1.24 2013/06/04 18:41:40 naddy Exp $

COMMENT =	convert various Microsoft formats into HTML/PNG

DISTNAME =	wv-1.2.4
REVISION =	3

SHARED_LIBS =	wv-1.2		1.0 \
		wv		1.0

CATEGORIES =	converters

HOMEPAGE =	http://wvware.sourceforge.net/

PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 bz2 c expat ffi freetype gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gsf-1 gthread-2.0 jpeg m pcre png pthread
WANTLIB += wmf-0.2 wmflite-0.2 xcb xml2 z

MODULES =	devel/gettext

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=wvware/}

RUN_DEPENDS =	graphics/ImageMagick
LIB_DEPENDS =	devel/libgsf \
		graphics/libwmf

MAKE_FILE =	GNUmakefile

USE_GMAKE =	Yes
USE_GROFF =	Yes
CONFIGURE_STYLE = gnu
CONFIGURE_ARGS = ${CONFIGURE_SHARED} --enable-static \
		 --with-png=${LOCALBASE} --with-libwmf=${LOCALBASE}

NO_TEST =	Yes

.include <bsd.port.mk>
