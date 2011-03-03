# $OpenBSD: Makefile,v 1.15 2011/03/03 21:19:12 landry Exp $

COMMENT=	Xfce4 settings helpers

XFCE_PROJECT=	xfce4-settings
XFCE_VERSION=	4.8.1

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES =	x11/xfce4
DESKTOP_FILES =	Yes
LIB_DEPENDS=	x11/xfce4/libxfce4ui>=4.8.0 \
		devel/libnotify \
		x11/xfce4/exo>=0.6.0 \
		x11/gnome/libxklavier>=5 \
		x11/xfce4/xfconf>=4.8.0

WANTLIB =	X11 Xcursor Xi Xrandr c cairo dbus-glib-1 gdk-x11-2.0 gdk_pixbuf-2.0 \
		glib-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 m \
		pango-1.0 pthread xfce4util GL Xxf86vm xfce4kbd-private-2 xfce4ui-1 \
		ICE SM Xau Xcomposite Xdamage Xdmcp Xext Xfixes \
		Xinerama Xrender atk-1.0 dbus-1 execinfo expat fontconfig \
		freetype gio-2.0 gmodule-2.0 pangocairo-1.0 pangoft2-1.0 \
		pcre pixman-1 png pthread-stubs startup-notification-1 \
		xcb xcb-atom xcb-aux xcb-event xcb-render xcb-shm drm \
		xkbfile xml2 z notify exo-1 xklavier xfconf-0

FAKE_FLAGS =	autostartdir=${PREFIX}/share/examples/xfce4-settings \
		settingsdir=${PREFIX}/share/examples/xfce4-settings
.include <bsd.port.mk>
