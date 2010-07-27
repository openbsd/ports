# $OpenBSD: Makefile,v 1.11 2010/07/27 12:58:43 landry Exp $

COMMENT=	Xfce4 settings helpers

XFCE_PROJECT=	xfce4-settings
XFCE_VERSION=	4.6.5
REVISION=	0

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES =	x11/xfce4
DESKTOP_FILES =	Yes
LIB_DEPENDS=	::x11/xfce4/libxfcegui4 \
		::devel/libwnck \
		::devel/libnotify \
		::x11/xfce4/exo \
		:libxklavier->=5.*:x11/gnome/libxklavier \
		::x11/xfce4/xfconf

WANTLIB =	X11 Xcursor Xi Xrandr c cairo dbus-glib-1 gdk-x11-2.0 gdk_pixbuf-2.0 \
		glade-2.0 glib-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 m \
		pango-1.0 pthread xfce4util wnck-1 xfcegui4 xfce4kbd-private \
		ICE SM XRes Xau Xcomposite Xdamage Xdmcp Xext Xfixes \
		Xinerama Xrender atk-1.0 dbus-1 execinfo expat fontconfig \
		freetype gio-2.0 glitz gmodule-2.0 pangocairo-1.0 pangoft2-1.0 \
		pcre pixman-1 png pthread-stubs startup-notification-1 \
		xcb xcb-atom xcb-aux xcb-event xcb-render xcb-render-util \
		xkbfile xml2 z notify exo-0.3 xklavier xfconf-0

FAKE_FLAGS =	autostartdir=${PREFIX}/share/examples/xfce4-settings \
		settingsdir=${PREFIX}/share/examples/xfce4-settings
.include <bsd.port.mk>
