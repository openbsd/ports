# $OpenBSD: Makefile,v 1.38 2016/11/03 10:37:46 landry Exp $

COMMENT=	Xfce4 network load monitor panel plugin

XFCE_VERSION=	1.3.0
XFCE_PLUGIN=	netload

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4

MODXFCE_ICON_CACHE=	Yes
MODXFCE_WANTLIB=	xfce4panel-2.0

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo expat fontconfig freetype
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread pthread-stubs xcb
WANTLIB += xcb-render xcb-shm xfce4util xfce4ui-2 z
WANTLIB += ICE SM X11-xcb ffi graphite2 gthread-2.0 harfbuzz pcre
WANTLIB += startup-notification-1 xcb-util iconv intl
WANTLIB += atk-bridge-2.0 atspi cairo-gobject dbus-1 epoxy gdk-3 gtk-3

.include <bsd.port.mk>
