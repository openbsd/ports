# $OpenBSD: Makefile,v 1.38 2018/06/27 21:04:23 espie Exp $

COMMENT=	Xfce4 simple text editor

XFCE_VERSION=	0.4.1
XFCE_GOODIE=	mousepad
REVISION=	0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes

LIB_DEPENDS=	x11/dbus-glib \
		x11/gtksourceview3

WANTLIB=	X11 Xcomposite Xcursor Xdamage Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi c cairo cairo-gobject epoxy expat \
		fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gtk-3 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png \
		z xcb ffi harfbuzz graphite2 lzma \
		gthread-2.0 pthread xcb-render xcb-shm \
		dbus-1 dbus-glib-1 gtksourceview-3.0 xml2 iconv intl

.include <bsd.port.mk>
