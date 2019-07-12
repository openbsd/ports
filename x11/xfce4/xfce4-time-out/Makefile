# $OpenBSD: Makefile,v 1.24 2019/07/12 20:51:28 sthen Exp $

COMMENT=	Xfce4 periodical screen locker panel plugin

XFCE_VERSION=	1.0.2
XFCE_PLUGIN=	time-out
REVISION=	3

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4

MODXFCE_ICON_CACHE=	Yes

WANTLIB += cairo gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 xfce4ui-1 xfce4util intl
WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 expat ffi
WANTLIB += fontconfig freetype fribidi gio-2.0 gmodule-2.0 graphite2
WANTLIB += harfbuzz iconv m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread startup-notification-1 xcb
WANTLIB += xcb-render xcb-shm xcb-util z

.include <bsd.port.mk>
