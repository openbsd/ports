# $OpenBSD: Makefile,v 1.16 2013/03/11 11:12:33 espie Exp $

COMMENT=	japanese handwriting

DISTNAME=	uim-tomoe-gtk-0.2.0
REVISION=	7

HOMEPAGE= 	http://tomoe.sourceforge.jp/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE_JP:=tomoe/17172/}

CATEGORIES=	inputmethods japanese

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_ENV=CPPFLAGS=-I${LOCALBASE}/include
CONFIGURE_STYLE=gnu

USE_LIBTOOL=	Yes

MODULES=	devel/gettext

LIB_DEPENDS=	inputmethods/libtomoe-gtk \
		inputmethods/uim

WANTLIB=	Xrender Xext X11 m z png freetype fontconfig \
		gio-2.0 gmodule-2.0 glib-2.0 pangocairo-1.0 pango-1.0 \
		pangoft2-1.0 cairo atk-1.0 gobject-2.0 \
		gtk-x11-2.0 gdk-x11-2.0 gdk_pixbuf-2.0 c \
		tomoe Xau Xcomposite Xcursor Xdamage Xdmcp Xfixes Xi \
		Xinerama Xrandr expat pcre pixman-1 pthread-stubs xcb \
		tomoe-gtk gcroots uim uim-scm gthread-2.0 pthread \
		xcb-render GL Xxf86vm drm ffi stdc++ xcb-shm

.include <bsd.port.mk>
