# $OpenBSD: Makefile,v 1.46 2015/06/26 08:44:28 landry Exp $

COMMENT=	Xfce4 sticky notes panel plugin

XFCE_VERSION=	1.8.1
XFCE_PLUGIN=	notes

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c
WANTLIB += cairo dbus-1 dbus-glib-1 expat ffi fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png
WANTLIB += pthread pthread-stubs startup-notification-1 xfce4ui-1
WANTLIB += unique-1.0 xcb xcb-render xcb-shm xcb-util xfce4util
WANTLIB += xfconf-0 z

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE =	Yes
MODXFCE_ICON_CACHE=	Yes

LIB_DEPENDS +=	devel/libunique

FAKE_FLAGS =	autostartdir=${PREFIX}/share/examples/xfce4-notes

.include <bsd.port.mk>
