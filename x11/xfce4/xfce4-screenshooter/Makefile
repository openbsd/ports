# $OpenBSD: Makefile,v 1.31 2015/03/27 08:16:25 ajacoutot Exp $

COMMENT=	Xfce4 desktop screenshot panel plugin

XFCE_VERSION=	1.8.2
XFCE_GOODIE=	xfce4-screenshooter
REVISION=	0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4

LIB_DEPENDS=	x11/xfce4/xfce4-panel \
		devel/libsoup

MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes
MODXFCE_PURGE_LA =	lib/xfce4/panel/plugins

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += atk-1.0 c cairo expat ffi fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += soup-2.4 startup-notification-1 xcb xcb-util xcb-render
WANTLIB += xcb-shm xfce4panel-1.0 xfce4util xml2 z
WANTLIB += harfbuzz exo-1 xfce4ui-1
WANTLIB += graphite2 lzma sqlite3

.include <bsd.port.mk>
