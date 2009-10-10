# $OpenBSD: Makefile,v 1.4 2009/10/10 23:20:26 landry Exp $

COMMENT=		GTK+2 widget for clutter

DISTNAME=		clutter-gtk-${MAJOR}.2
SHARED_LIBS +=  clutter-gtk-0.10      0.0      # .0.0

MASTER_SITES=		${MASTER_SITES_CLUTTER:=clutter-gtk/${MAJOR}/}

MODULES=		devel/gettext

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xxf86vm drm
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += glitz gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += json-glib-1.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread-stubs xcb z

LIB_DEPENDS=		clutter-glx-1.0:clutter->=1.0.6:graphics/clutter/core

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-introspection=no

.include <bsd.port.mk>
