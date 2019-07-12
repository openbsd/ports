# $OpenBSD: Makefile,v 1.65 2019/07/12 20:51:29 sthen Exp $

COMMENT=	Xfce4 temperature/weather conditions panel plugin

XFCE_VERSION=	0.9.1
XFCE_PLUGIN=	weather
REVISION=	0

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 cairo
WANTLIB += cairo-gobject dbus-1 epoxy expat ffi fontconfig freetype
WANTLIB += fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz iconv idn2
WANTLIB += intl lzma m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png psl pthread soup-2.4 sqlite3
WANTLIB += startup-notification-1 unistring upower-glib xcb xcb-render
WANTLIB += xcb-shm xcb-util xfce4ui-2 xfce4util xml2 z

MODULES=	x11/xfce4

MODXFCE_ICON_CACHE=	Yes
MODXFCE_WANTLIB = xfce4panel-2.0

LIB_DEPENDS=	textproc/libxml \
		devel/libsoup \
		sysutils/upower


.include <bsd.port.mk>
