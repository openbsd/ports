# $OpenBSD: Makefile,v 1.33 2014/11/18 13:17:38 landry Exp $

COMMENT=	Xfce4 network load monitor panel plugin

XFCE_VERSION=	1.2.3
XFCE_PLUGIN=	netload

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4

MODXFCE_ICON_CACHE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread pthread-stubs xcb
WANTLIB += xcb-render xcb-shm xfce4util xfce4ui-1 z
WANTLIB += ICE SM X11-xcb ffi graphite2 gthread-2.0 harfbuzz pcre
WANTLIB += startup-notification-1 xcb-util


.include <bsd.port.mk>
