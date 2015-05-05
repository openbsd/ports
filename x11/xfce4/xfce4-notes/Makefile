# $OpenBSD: Makefile,v 1.45 2015/05/05 17:00:21 sthen Exp $

COMMENT=	Xfce4 sticky notes panel plugin

XFCE_VERSION=	1.7.7
XFCE_PLUGIN=	notes
REVISION=	10

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c
WANTLIB += cairo dbus-1 dbus-glib-1 drm expat ffi fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png
WANTLIB += pthread pthread-stubs startup-notification-1 stdc++
WANTLIB += unique-1.0 xcb xcb-render xcb-shm xcb-util xfce4util xfcegui4
WANTLIB += xfconf-0 z

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE =	Yes
MODXFCE_ICON_CACHE=	Yes

LIB_DEPENDS +=	devel/libunique
LIB_DEPENDS +=	x11/xfce4/libxfcegui4

FAKE_FLAGS =	autostartdir=${PREFIX}/share/examples/xfce4-notes

.include <bsd.port.mk>
