# $OpenBSD: Makefile,v 1.36 2018/06/29 22:16:36 espie Exp $

COMMENT=	Xfce4 alternative notification daemon

XFCE_VERSION=	0.4.2
XFCE_GOODIE=	xfce4-notifyd
REVISION=	1

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes
MODXFCE_PURGE_LA =	lib/xfce4/panel/plugins
MODXFCE_WANTLIB =	xfce4panel-2.0

LIB_DEPENDS=	x11/xfce4/xfce4-panel \
		devel/libnotify

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += atk-1.0 c cairo dbus-1 dbus-glib-1 expat ffi fontconfig
WANTLIB += freetype gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += startup-notification-1 xcb xcb-util xcb-render
WANTLIB += xcb-shm xfce4ui-2 xfce4util xfconf-0 z
WANTLIB += harfbuzz graphite2 notify iconv intl
WANTLIB += atk-bridge-2.0 atspi cairo-gobject epoxy gdk-3 gtk-3
WANTLIB += Xtst

.include <bsd.port.mk>
