# $OpenBSD: Makefile,v 1.37 2016/11/03 16:20:40 landry Exp $

COMMENT=	Xfce4 dictionary application

XFCE_VERSION=	0.7.2
XFCE_GOODIE=	xfce4-dict
REVISION =	0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes
MODXFCE_PURGE_LA =	lib/xfce4/panel/plugins

LIB_DEPENDS=	x11/xfce4/xfce4-panel

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender iconv intl
WANTLIB += atk-1.0 c cairo expat ffi fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += startup-notification-1 xcb xcb-util xcb-render xcb-shm
WANTLIB += xfce4panel-1.0 xfce4util z harfbuzz graphite2 xfce4ui-1

.include <bsd.port.mk>
