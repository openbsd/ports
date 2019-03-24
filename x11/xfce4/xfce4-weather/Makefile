# $OpenBSD: Makefile,v 1.63 2019/03/24 19:45:12 landry Exp $

COMMENT=	Xfce4 temperature/weather conditions panel plugin

XFCE_VERSION=	0.9.1
XFCE_PLUGIN=	weather

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4

MODXFCE_ICON_CACHE=	Yes
MODXFCE_WANTLIB = xfce4panel-2.0

LIB_DEPENDS=	textproc/libxml \
		devel/libsoup \
		sysutils/upower

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += atk-1.0 cairo expat ffi fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-3 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png16
WANTLIB += startup-notification-1 xcb xcb-util xcb-render xcb-shm
WANTLIB += xfce4util xfce4ui-2 xml2 z lzma iconv intl
WANTLIB += harfbuzz pthread graphite2 soup-2.4 sqlite3 upower-glib
WANTLIB += atk-bridge-2.0 cairo-gobject dbus-1 epoxy fribidi
WANTLIB += idn2 psl unistring


.include <bsd.port.mk>
