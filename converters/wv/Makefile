# $OpenBSD: Makefile,v 1.15 2009/08/10 06:30:31 kili Exp $

COMMENT =	convert various Microsoft formats into HTML/PNG

DISTNAME =	wv-1.2.4
PKGNAME =	${DISTNAME}p1

SHARED_LIBS =	wv-1.2		1.0 \
		wv		1.0

CATEGORIES =	converters

HOMEPAGE =	http://wvware.sourceforge.net/

PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	ICE SM X11 Xau Xdmcp bz2 c expat freetype gio-2.0 \
		gmodule-2.0 iconv intl jpeg m pcre png pthread-stubs xcb xml2 z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=wvware/}

RUN_DEPENDS =	::graphics/ImageMagick
LIB_DEPENDS =	glib-2.0,gobject-2.0::devel/glib \
		gsf-1::devel/libgsf \
		wmf.>=6,wmflite.>=6::graphics/libwmf

MAKE_FILE =	GNUmakefile

USE_X11 =	Yes
USE_GMAKE =	Yes
USE_LIBTOOL =	Yes
CONFIGURE_STYLE = gnu
CONFIGURE_ENV =	 CPPFLAGS="-I${LOCALBASE}/include/libpng/"
CONFIGURE_ARGS = ${CONFIGURE_SHARED} --enable-static \
		 --with-png=${LOCALBASE} --with-libwmf=${LOCALBASE}

NO_REGRESS =	Yes

.include <bsd.port.mk>
