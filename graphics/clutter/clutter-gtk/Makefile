# $OpenBSD: Makefile,v 1.7 2010/09/30 07:25:57 jasper Exp $

COMMENT=		GTK+2 widget for clutter

DISTNAME=		clutter-gtk-${API_VERSION}.2
REVISION=		2
SHARED_LIBS +=  clutter-gtk-0.10      0.0      # .0.0

MASTER_SITES=		${MASTER_SITES_CLUTTER:=clutter-gtk/${MAJOR}/}

MODULES=		devel/gettext

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xxf86vm drm
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += glitz gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += json-glib-1.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread-stubs xcb z xcb-render xcb-render-util
WANTLIB += clutter-glx-1.0

LIB_DEPENDS=		:clutter->=1.0.6:graphics/clutter/core \
			::x11/gtk+2

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-introspection=no

.include <bsd.port.mk>
