# $OpenBSD: Makefile,v 1.26 2014/04/14 19:52:45 matthieu Exp $

COMMENT=	Xfce4 settings helpers

XFCE_PROJECT=	xfce4-settings
REVISION=	0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	x11/xfce4
MODXFCE_DESKTOP_FILE =	Yes
LIB_DEPENDS=	x11/xfce4/libxfce4ui>=4.9.0 \
		devel/libnotify \
		x11/xfce4/garcon>=0.1.10 \
		x11/xfce4/exo>=0.7.1 \
		x11/gnome/libxklavier>=5 \
		x11/xfce4/xfconf>=4.9.0

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += atk-1.0 c cairo dbus-1 dbus-glib-1 exo-1 expat
WANTLIB += ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m notify pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs startup-notification-1
WANTLIB += xcb xcb-util xcb-render xcb-shm xfce4kbd-private-2 xfce4ui-1
WANTLIB += xfce4util xfconf-0 xkbfile xklavier xml2 z garcon-1
WANTLIB += harfbuzz graphite2

FAKE_FLAGS =	autostartdir=${PREFIX}/share/examples/xfce4-settings \
		menudir=${PREFIX}/share/examples/xfce4-settings \
		settingsdir=${PREFIX}/share/examples/xfce4-settings
.include <bsd.port.mk>
