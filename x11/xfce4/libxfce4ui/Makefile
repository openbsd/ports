# $OpenBSD: Makefile,v 1.31 2019/06/13 15:48:56 sthen Exp $

COMMENT=	Xfce4 widget library

XFCE_VERSION=	4.12.1
XFCE_PROJECT=	libxfce4ui
REVISION=	9

PORTROACH=	limitw:1,even

SHARED_LIBS=	xfce4ui-1		0.1	\
		xfce4ui-2		0.0	\
		xfce4kbd-private-2	1.0	\
		xfce4kbd-private-3	0.0	# 0.0

HOMEPAGE=	http://www.xfce.org/projects/libraries

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xtst atk-1.0 atk-bridge-2.0 atspi c
WANTLIB += cairo cairo-gobject dbus-1 dbus-glib-1 epoxy expat ffi
WANTLIB += fontconfig freetype fribidi gdk-3 gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 gtk-x11-2.0 harfbuzz iconv intl m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += startup-notification-1 xcb xcb-render xcb-shm xcb-util
WANTLIB += xfce4util xfconf-0 z

MODULES=	x11/xfce4

MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes
CONFIGURE_ARGS +=	--disable-gladeui

LIB_DEPENDS=	x11/xfce4/xfconf>=4.12.0 \
		x11/gtk+2 \
		x11/gtk+3 \
		devel/startup-notification

FAKE_FLAGS=	settingsdir=${PREFIX}/share/examples/xfconf

post-install:
	sed -i 's/Control/Primary/' ${PREFIX}/share/examples/xfconf/xfce4-keyboard-shortcuts.xml

.include <bsd.port.mk>
