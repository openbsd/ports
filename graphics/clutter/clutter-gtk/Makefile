# $OpenBSD: Makefile,v 1.10 2011/04/07 11:22:04 jasper Exp $

COMMENT=		GTK+2 widget for clutter

DISTNAME=		clutter-gtk-${API_VERSION}.2
REVISION=		4
SHARED_LIBS +=  clutter-gtk-0.10      0.0      # .0.0

MASTER_SITES=		${MASTER_SITES_CLUTTER:=clutter-gtk/${MAJOR}/}

MODULES=		devel/gettext

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xxf86vm drm
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += json-glib-1.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread-stubs xcb z xcb-render xcb-render-util
WANTLIB += clutter-glx-1.0

# XXX: the libtool wrapper script is passed as argument to g-ir-scanner,
# instead of the actual library
USE_LIBTOOL=	gnu

BUILD_DEPENDS=		devel/gobject-introspection
LIB_DEPENDS=		graphics/clutter/core>=1.0.6p3 \
			x11/gtk+2

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-introspection

.include <bsd.port.mk>
