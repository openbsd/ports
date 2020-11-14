# $OpenBSD: Makefile,v 1.47 2020/11/14 11:03:46 ajacoutot Exp $

COMMENT=	Xfce4 settings helpers

XFCE_PROJECT=	xfce4-settings
XFCE_VERSION=	4.14.3
REVISION=	0

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES =	x11/xfce4
MODXFCE_DESKTOP_FILE =	Yes
MODXFCE_ICON_CACHE=	Yes
LIB_DEPENDS=	x11/xfce4/libxfce4ui \
		devel/libnotify \
		sysutils/upower \
		x11/xfce4/garcon \
		x11/xfce4/exo>=0.11.0 \
		x11/gnome/libxklavier \
		x11/xfce4/xfconf

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 X11-xcb Xcomposite Xcursor
WANTLIB += Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB += atk-bridge-2.0 c cairo cairo-gobject epoxy exo-2 expat
WANTLIB += ffi fontconfig freetype fribidi garcon-1 gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz iconv intl lzma m notify
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png startup-notification-1 upower-glib xcb xcb-render
WANTLIB += xcb-shm xcb-util xfce4kbd-private-3 xfce4ui-2 xfce4util
WANTLIB += xfconf-0 xkbfile xklavier xml2 z

FAKE_FLAGS =	autostartdir=${PREFIX}/share/examples/xfce4-settings \
		menudir=${PREFIX}/share/examples/xfce4-settings \
		settingsdir=${PREFIX}/share/examples/xfce4-settings
.include <bsd.port.mk>
