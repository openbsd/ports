# $OpenBSD: Makefile,v 1.18 2010/10/23 22:01:30 sthen Exp $

COMMENT =	convert various Microsoft formats into HTML/PNG

DISTNAME =	wv-1.2.4
REVISION =	2

SHARED_LIBS =	wv-1.2		1.0 \
		wv		1.0

CATEGORIES =	converters

HOMEPAGE =	http://wvware.sourceforge.net/

PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += ICE SM X11 Xau Xdmcp bz2 c expat freetype gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 jpeg m pcre png pthread-stubs
WANTLIB += xcb xml2 z gsf-1 wmf wmflite

MODULES =	devel/gettext

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=wvware/}

RUN_DEPENDS =	::graphics/ImageMagick
LIB_DEPENDS =	::devel/libgsf \
		::graphics/libwmf

MAKE_FILE =	GNUmakefile

USE_X11 =	Yes
USE_GMAKE =	Yes
USE_LIBTOOL =	Yes
USE_GROFF =	Yes
CONFIGURE_STYLE = gnu
CONFIGURE_ENV =	 CPPFLAGS="-I${LOCALBASE}/include/libpng/"
CONFIGURE_ARGS = ${CONFIGURE_SHARED} --enable-static \
		 --with-png=${LOCALBASE} --with-libwmf=${LOCALBASE}

NO_REGRESS =	Yes

.include <bsd.port.mk>
