# $OpenBSD: Makefile,v 1.35 2017/10/23 17:11:06 sthen Exp $

COMMENT=	Xfce4 simple text editor

XFCE_VERSION=	0.4.0
XFCE_GOODIE=	mousepad
REVISION=	3

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes

CONFIGURE_ARGS=	--disable-gtk3
LIB_DEPENDS=	x11/dbus-glib \
		x11/gtksourceview

WANTLIB=	X11 Xcomposite Xcursor Xdamage Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png \
		z xcb ffi harfbuzz graphite2 lzma \
		gthread-2.0 pthread xcb-render xcb-shm \
		dbus-1 dbus-glib-1 gtksourceview-2.0 xml2 iconv intl

.include <bsd.port.mk>
