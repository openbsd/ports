# $OpenBSD: Makefile,v 1.33 2014/04/14 19:52:45 matthieu Exp $

COMMENT=	Xfce4 notification daemon

XFCE_VERSION=	0.3.7
XFCE_GOODIE=	notification-daemon-xfce
REVISION=	22

MASTER_SITES=	http://archive.xfce.org/src/archive/${XFCE_GOODIE}/${XFCE_BRANCH}/
# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes
MODXFCE_PURGE_LA =	lib/notification-daemon-xfce-1.0/engines

LIB_DEPENDS=	x11/xfce4/libxfcegui4 \
		x11/libsexy \
		devel/libnotify>=0.7.2 \
		x11/dbus-glib

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 \
		dbus-glib-1 expat fontconfig freetype gdk-x11-2.0 \
		gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre \
		pixman-1 png pthread startup-notification-1 xfce4util xml2 z \
		pthread-stubs xcb xcb-util stdc++ \
		gthread-2.0 xcb-render GL Xxf86vm drm xcb-shm xfcegui4 sexy \
		X11-xcb ffi notify harfbuzz

.include <bsd.port.mk>
