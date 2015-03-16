# $OpenBSD: Makefile,v 1.38 2015/03/16 20:40:22 landry Exp $

COMMENT =	Xfce4 disk usage monitor panel plugin

XFCE_VERSION =	1.0.2
XFCE_PLUGIN =	fsguard

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	x11/xfce4

MODXFCE_ICON_CACHE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread-stubs xcb
WANTLIB += ICE SM X11-xcb ffi gthread-2.0
WANTLIB += pcre startup-notification-1 xcb-util xfce4ui-1
WANTLIB += xcb-render xcb-shm xfce4util z
WANTLIB += harfbuzz pthread graphite2

.include <bsd.port.mk>
