# $OpenBSD: Makefile,v 1.2 2012/07/07 17:45:45 ajacoutot Exp $

COMMENT=	clutter widget toolkit

V=		1.4.6
DISTNAME=	mx-${V}
EXTRACT_SUFX=	.tar.xz

REVISION=	0

SHARED_LIBS +=  mx-1.0                    0.0 # 406.0
SHARED_LIBS +=  mx-gtk-1.0                0.0 # 0.0

MASTER_SITES=	http://source.clutter-project.org/sources/mx/${V:C/^([0-9]+\.[0-9]+).*/\1/}/

WANTLIB += GL X11 X11-xcb Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += c cairo cairo-gobject clutter-1.0 cogl cogl-pango dbus-1
WANTLIB += dbus-glib-1 drm expat ffi fontconfig freetype gdk-3
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 json-glib-1.0 m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs startup-notification-1 stdc++
WANTLIB += xcb xcb-aux xcb-render xcb-shm z

MODGNOME_TOOLS=		goi

LIB_DEPENDS=		devel/startup-notification \
			graphics/clutter/core \
			x11/dbus-glib \
			x11/gtk+2

CONFIGURE_ARGS=		--without-glade

.include <bsd.port.mk>
