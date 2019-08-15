# $OpenBSD: Makefile,v 1.41 2019/08/15 06:54:43 landry Exp $

COMMENT=	Xfce4 simple text editor

XFCE_VERSION=	0.4.2
XFCE_GOODIE=	mousepad

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes

LIB_DEPENDS=	x11/xfce4/xfconf \
		x11/gtksourceview3

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 c cairo cairo-gobject
WANTLIB += epoxy expat ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 gtksourceview-3.0 harfbuzz iconv
WANTLIB += intl lzma m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread xcb xcb-render xcb-shm xfconf-0
WANTLIB += xml2 z

.include <bsd.port.mk>
