# $OpenBSD: Makefile,v 1.27 2019/08/15 07:08:00 landry Exp $

COMMENT=	Xfce4 cpu usage graph panel plugin

XFCE_VERSION=	1.1.0
XFCE_PLUGIN=	cpugraph
REVISION=	0

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 cairo
WANTLIB += expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += startup-notification-1 xcb xcb-render xcb-shm xcb-util
WANTLIB += xfce4ui-2 xfce4util z iconv intl
WANTLIB += atk-bridge-2.0 cairo-gobject epoxy fribidi

MODULES=	x11/xfce4

MODXFCE_ICON_CACHE=	Yes

.include <bsd.port.mk>
