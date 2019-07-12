# $OpenBSD: Makefile,v 1.25 2019/07/12 20:51:27 sthen Exp $

COMMENT=	Xfce4 cpu usage graph panel plugin

XFCE_VERSION=	1.0.5
XFCE_PLUGIN=	cpugraph
REVISION =	9

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 cairo expat ffi fontconfig
WANTLIB += freetype fribidi gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0
WANTLIB += harfbuzz iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread startup-notification-1 xcb
WANTLIB += xcb-render xcb-shm xcb-util xfce4ui-1 xfce4util z

MODULES=	x11/xfce4

MODXFCE_ICON_CACHE=	Yes

.include <bsd.port.mk>
