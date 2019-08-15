# $OpenBSD: Makefile,v 1.31 2019/08/15 07:04:54 landry Exp $

COMMENT=	Xfce4 command line panel plugin

XFCE_VERSION=	2.0.0
XFCE_PLUGIN=	verve

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += cairo cairo-gobject epoxy expat ffi fontconfig freetype
WANTLIB += fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz iconv
WANTLIB += intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread startup-notification-1 xcb xcb-render xcb-shm
WANTLIB += xcb-util xfce4ui-2 xfce4util z

.include <bsd.port.mk>
