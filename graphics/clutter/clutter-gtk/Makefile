# $OpenBSD: Makefile,v 1.2 2009/04/07 13:58:09 jasper Exp $

COMMENT=		GTK+2 widget for clutter

DISTNAME=		clutter-gtk-${MAJOR}.3
SHARED_LIBS +=  clutter-gtk-0.8      0.0      # .803.0

MASTER_SITES=		${MASTER_SITES_CLUTTER:=clutter-gtk/${MAJOR}/}

MODULES=		devel/gettext

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += glitz gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += json-glib-1.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png z

LIB_DEPENDS=		clutter-glx-0.8:clutter->=0.8.8:graphics/clutter/core

CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
