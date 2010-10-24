# $OpenBSD: Makefile,v 1.15 2010/10/24 21:21:44 ajacoutot Exp $

COMMENT=	japanese handwriting input widget

DISTNAME=	libtomoe-gtk-0.1.0
REVISION=	6

HOMEPAGE= 	http://tomoe.sourceforge.jp/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE_JP:=tomoe/17171/}

CATEGORIES=	inputmethods japanese

SHARED_LIBS=	tomoe-gtk	0.0
MODULES=	converters/libiconv devel/gettext

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_ENV=CPPFLAGS=-I${LOCALBASE}/include
CONFIGURE_STYLE=gnu

USE_LIBTOOL=	Yes

LIB_DEPENDS=	::x11/gtk+2 \
		::inputmethods/tomoe

WANTLIB=	Xrender Xext X11 m z png freetype fontconfig \
		Xau Xcomposite Xcursor Xdamage Xdmcp Xfixes Xi Xinerama \
		Xrandr expat pcre gio-2.0 tomoe gthread-2.0 xcb-render \
		gmodule-2.0 glib-2.0 pangocairo-1.0 pango-1.0 xcb-render-util \
		pangoft2-1.0 cairo atk-1.0 gobject-2.0 pixman-1 \
		pthread-stubs xcb gtk-x11-2.0 gdk-x11-2.0 gdk_pixbuf-2.0


.include <bsd.port.mk>
