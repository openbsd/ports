# $OpenBSD: Makefile,v 1.9 2010/07/24 11:44:17 ajacoutot Exp $

COMMENT=	japanese handwriting

DISTNAME=	uim-tomoe-gtk-0.2.0
REVISION=	3

HOMEPAGE= 	http://tomoe.sourceforge.jp/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE_JP:=tomoe/17172/}

CATEGORIES=	inputmethods japanese

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_ENV=CPPFLAGS=-I${LOCALBASE}/include
CONFIGURE_STYLE=gnu

USE_LIBTOOL=	Yes
USE_X11=	Yes

LIB_DEPENDS=	::inputmethods/libtomoe-gtk \
		::inputmethods/uim

WANTLIB=	Xrender Xext X11 m z png freetype fontconfig \
		gio-2.0 gmodule-2.0 glib-2.0 pangocairo-1.0 pango-1.0 \
		pangoft2-1.0 cairo glitz atk-1.0 gobject-2.0 \
		gtk-x11-2.0 gdk-x11-2.0 gdk_pixbuf-2.0 c intl iconv \
		tomoe Xau Xcomposite Xcursor Xdamage Xdmcp Xfixes Xi \
		Xinerama Xrandr expat pcre pixman-1 pthread-stubs xcb \
		tomoe-gtk gcroots uim uim-scm gthread-2.0 pthread \
		xcb-render xcb-render-util

.include <bsd.port.mk>
