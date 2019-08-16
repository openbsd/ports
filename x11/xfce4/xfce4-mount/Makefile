# $OpenBSD: Makefile,v 1.25 2019/08/16 05:29:38 landry Exp $

COMMENT=	Xfce4 mount device panel plugin

XFCE_VERSION=	1.1.3
XFCE_PLUGIN=	mount
REVISION=	1

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4

MODXFCE_ICON_CACHE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender fribidi atk-1.0 cairo expat fontconfig freetype
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += atk-bridge-2.0 atspi cairo-gobject dbus-1 epoxy gdk-3 gtk-3
WANTLIB += gobject-2.0 gthread-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png xcb
WANTLIB += xcb-util xcb-render xcb-shm xfce4util xfce4ui-2 z
WANTLIB += ICE SM X11-xcb ffi pcre startup-notification-1
WANTLIB += harfbuzz pthread graphite2 iconv intl

.include <bsd.port.mk>
