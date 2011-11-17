# $OpenBSD: Makefile,v 1.14 2011/11/17 11:42:31 jasper Exp $

COMMENT=		GTK+2 widget for clutter

DISTNAME=		clutter-gtk-${API_VERSION}.2
REVISION=		7
SHARED_LIBS +=  clutter-gtk-0.10      0.0      # .0.0

MASTER_SITES=		${MASTER_SITES_CLUTTER:=clutter-gtk/${MAJOR}/}

MODULES=		devel/gettext

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += json-glib-1.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread-stubs xcb z xcb-render
WANTLIB += clutter-glx-1.0 ffi xcb-shm

BUILD_DEPENDS=		devel/gobject-introspection
LIB_DEPENDS=		graphics/clutter/core>=1.0.6p3 \
			x11/gtk+2

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-introspection

# XXX fix building with glib2 >= 2.29 (G_CONST_RETURN is deprecated)
CFLAGS +=      "-DG_CONST_RETURN=const"

.include <bsd.port.mk>
