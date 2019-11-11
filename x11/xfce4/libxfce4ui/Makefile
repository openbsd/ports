# $OpenBSD: Makefile,v 1.34 2019/11/11 20:49:28 landry Exp $

COMMENT=	Xfce4 widget library

XFCE_VERSION=	4.14.1
XFCE_PROJECT=	libxfce4ui
REVISION =	0

SHARED_LIBS=	xfce4ui-1		0.2	\
		xfce4ui-2		0.1	\
		xfce4kbd-private-2	1.0	\
		xfce4kbd-private-3	0.0	# 0.0

HOMEPAGE=	http://www.xfce.org/projects/libraries

# LGPLv2
PERMIT_PACKAGE=	Yes


MODULES=	x11/xfce4

MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes
BUILD_DEPENDS += devel/gobject-introspection lang/vala

LIB_DEPENDS=	x11/xfce4/xfconf>=4.12.0 \
		x11/xfce4/libxfce4util>=4.13.0 \
		x11/gtk+2 \
		x11/gtk+3 \
		devel/glade \
		devel/startup-notification

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += c cairo cairo-gobject epoxy expat ffi fontconfig freetype
WANTLIB += fribidi gdk-3 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 gladeui-2
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-3 gtk-x11-2.0 harfbuzz iconv intl lzma m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += startup-notification-1 xcb xcb-render xcb-shm xcb-util
WANTLIB += xfce4util xfconf-0 xml2 z

FAKE_FLAGS=	settingsdir=${PREFIX}/share/examples/xfconf

post-install:
	sed -i 's/Control/Primary/' ${PREFIX}/share/examples/xfconf/xfce4-keyboard-shortcuts.xml

.include <bsd.port.mk>
