# $OpenBSD: Makefile,v 1.44 2017/11/26 18:59:32 landry Exp $

COMMENT =	Xfce4 disk usage monitor panel plugin

XFCE_VERSION =	1.1.0
XFCE_PLUGIN =	fsguard
REVISION =	2

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	x11/xfce4

MODXFCE_ICON_CACHE=	Yes
MODXFCE_WANTLIB =	xfce4panel-2.0

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xtst atk-1.0 cairo expat fontconfig freetype
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png xcb
WANTLIB += ICE SM X11-xcb ffi gthread-2.0
WANTLIB += pcre startup-notification-1 xcb-util xfce4ui-2
WANTLIB += xcb-render xcb-shm xfce4util z
WANTLIB += harfbuzz pthread graphite2 iconv intl
WANTLIB += atk-bridge-2.0 atspi cairo-gobject dbus-1 epoxy gdk-3 gtk-3


.include <bsd.port.mk>
