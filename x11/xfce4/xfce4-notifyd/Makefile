# $OpenBSD: Makefile,v 1.27 2016/11/11 09:40:30 landry Exp $

COMMENT=	Xfce4 alternative notification daemon

XFCE_VERSION=	0.3.4
XFCE_GOODIE=	xfce4-notifyd

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes

LIB_DEPENDS=	x11/xfce4/libxfce4ui \
		devel/libnotify \
		x11/xfce4/xfconf

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += atk-1.0 c cairo dbus-1 dbus-glib-1 expat ffi fontconfig
WANTLIB += freetype gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs startup-notification-1 xcb xcb-util xcb-render
WANTLIB += xcb-shm xfce4ui-2 xfce4util xfconf-0 z
WANTLIB += harfbuzz graphite2 notify iconv intl
WANTLIB += atk-bridge-2.0 atspi cairo-gobject epoxy gdk-3 gtk-3

.include <bsd.port.mk>
