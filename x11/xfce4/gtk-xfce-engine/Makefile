# $OpenBSD: Makefile,v 1.48 2019/07/12 20:51:26 sthen Exp $

COMMENT=	Xfce4 theme engine for Gtk+2

XFCE_PROJECT=	gtk-xfce-engine
XFCE_VERSION=	3.2.0
REVISION=	3
HOMEPAGE=	http://www.xfce.org/projects/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB+= Xrender atk-1.0 cairo expat ffi fontconfig freetype fribidi
WANTLIB+= gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB+= gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz iconv
WANTLIB+= intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png
WANTLIB+= pthread xcb xcb-render xcb-shm z

MODULES=	x11/xfce4
MODXFCE_PURGE_LA =	lib/gtk-2.0/2.10.0/engines

LIB_DEPENDS =	x11/gtk+2


.include <bsd.port.mk>
