# $OpenBSD: Makefile,v 1.43 2019/08/15 07:02:07 landry Exp $

COMMENT=	Xfce4 disk performance panel plugin

XFCE_VERSION=	2.6.2
XFCE_PLUGIN=	diskperf

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += cairo cairo-gobject epoxy expat ffi fontconfig
WANTLIB += freetype fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz
WANTLIB += iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread startup-notification-1 xcb xcb-render
WANTLIB += xcb-shm xcb-util xfce4ui-2 xfce4util z

.include <bsd.port.mk>
