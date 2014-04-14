# $OpenBSD: Makefile,v 1.21 2014/04/14 19:52:45 matthieu Exp $

COMMENT=	Xfce4 alternative notification daemon

XFCE_VERSION=	0.2.4
XFCE_GOODIE=	xfce4-notifyd
REVISION =	1

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes

LIB_DEPENDS=	x11/xfce4/libxfce4ui \
		devel/libnotify \
		x11/xfce4/xfconf

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += atk-1.0 c cairo dbus-1 dbus-glib-1 expat ffi fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs startup-notification-1 xcb xcb-util xcb-render
WANTLIB += xcb-shm xfce4ui-1 xfce4util xfconf-0 z
WANTLIB += harfbuzz graphite2 notify

.include <bsd.port.mk>
