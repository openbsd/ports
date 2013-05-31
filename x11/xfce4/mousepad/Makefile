# $OpenBSD: Makefile,v 1.29 2013/05/31 15:35:17 ajacoutot Exp $

COMMENT=	Xfce4 simple text editor

XFCE_VERSION=	0.3.0
XFCE_GOODIE=	mousepad
REVISION=	0

HOMEPAGE=	http://www.xfce.org/projects/mousepad
# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes

LIB_DEPENDS=	x11/dbus-glib \
		x11/gtksourceview

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png \
		z pthread-stubs xcb \
		ffi stdc++ \
		gthread-2.0 pthread xcb-render GL Xxf86vm drm xcb-shm \
		dbus-1 dbus-glib-1 gtksourceview-2.0 xml2
WANTLIB += harfbuzz

.include <bsd.port.mk>
