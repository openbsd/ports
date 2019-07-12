# $OpenBSD: Makefile,v 1.30 2019/07/12 20:51:28 sthen Exp $

COMMENT=	Xfce4 command line panel plugin

XFCE_VERSION=	1.1.0
XFCE_PLUGIN=	verve
REVISION =	2

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 dbus-glib-1
WANTLIB += exo-1 expat ffi fontconfig freetype fribidi gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz iconv intl m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png
WANTLIB += pthread startup-notification-1 xcb xcb-render xcb-shm
WANTLIB += xcb-util xfce4ui-1 xfce4util z

MODULES=	x11/xfce4


.include <bsd.port.mk>
