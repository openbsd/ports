# $OpenBSD: Makefile,v 1.43 2019/11/11 20:49:28 landry Exp $

COMMENT=	Xfce4 settings helpers

XFCE_PROJECT=	xfce4-settings
XFCE_VERSION=	4.14.1
REVISION=	0

PORTROACH=	limitw:1,even

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES =	x11/xfce4
MODXFCE_DESKTOP_FILE =	Yes
MODXFCE_ICON_CACHE=	Yes
LIB_DEPENDS=	x11/xfce4/libxfce4ui \
		devel/libnotify \
		graphics/colord \
		sysutils/upower \
		x11/xfce4/garcon \
		x11/xfce4/exo>=0.11.0 \
		x11/gnome/libxklavier \
		x11/xfce4/xfconf

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += atk-1.0 c cairo colord colordprivate lcms2 expat
WANTLIB += ffi fontconfig freetype gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += m notify pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread startup-notification-1
WANTLIB += xcb xcb-util xcb-render xcb-shm
WANTLIB += xfce4util xfconf-0 xkbfile xklavier xml2 z garcon-1
WANTLIB += harfbuzz graphite2 upower-glib lzma iconv intl fribidi
WANTLIB += atk-bridge-2.0 cairo-gobject epoxy exo-2 gdk-3
WANTLIB += gtk-3 xfce4kbd-private-3 xfce4ui-2

FAKE_FLAGS =	autostartdir=${PREFIX}/share/examples/xfce4-settings \
		menudir=${PREFIX}/share/examples/xfce4-settings \
		settingsdir=${PREFIX}/share/examples/xfce4-settings
.include <bsd.port.mk>
