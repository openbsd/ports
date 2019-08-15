# $OpenBSD: Makefile,v 1.55 2019/08/15 07:09:37 landry Exp $

COMMENT=	Xfce4 sticky notes panel plugin

XFCE_VERSION=	1.8.1
XFCE_PLUGIN=	notes
REVISION =	6

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 dbus-glib-1
WANTLIB += expat ffi fontconfig freetype fribidi gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz iconv intl m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png
WANTLIB += pthread startup-notification-1 xfce4ui-1
WANTLIB += unique-1.0 xcb xcb-render xcb-shm xcb-util xfce4util
WANTLIB += xfconf-0 z iconv intl fribidi

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE =	Yes
MODXFCE_ICON_CACHE=	Yes
MODXFCE_WANTLIB=	xfce4panel-1.0

LIB_DEPENDS +=	devel/libunique

FAKE_FLAGS =	autostartdir=${PREFIX}/share/examples/xfce4-notes

.include <bsd.port.mk>
