# $OpenBSD: Makefile,v 1.33 2011/12/03 22:39:12 ajacoutot Exp $

COMMENT=	Xfce4 clipboard history panel plugin

XFCE_VERSION=	1.1.3
XFCE_PLUGIN=	clipman
REVISION =      1

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes

LIB_DEPENDS+=	x11/xfce4/xfconf \
		x11/xfce4/libxfcegui4 \
		devel/libglade2 \
		devel/libunique

FAKE_FLAGS =	autostartdir=${PREFIX}/share/examples/xfce4-clipman \
		actionsdir=${PREFIX}/share/examples/xfce4-clipman

WANTLIB =	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 \
		dbus-glib-1 exo-1 expat fontconfig freetype gdk-x11-2.0 \
		gdk_pixbuf-2.0 gio-2.0 glade-2.0 glib-2.0 gmodule-2.0 \
		gobject-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png pthread startup-notification-1 \
		xfce4util xfcegui4 xml2 z pthread-stubs xcb \
		X11-xcb ffi xcb-aux xfconf-0 unique-1.0 \
		gthread-2.0 xcb-render GL Xxf86vm drm xcb-shm


.include <bsd.port.mk>
