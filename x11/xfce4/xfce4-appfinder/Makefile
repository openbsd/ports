# $OpenBSD: Makefile,v 1.51 2019/07/12 20:51:27 sthen Exp $

COMMENT=	Xfce4 application finder

XFCE_PROJECT=	xfce4-appfinder
XFCE_VERSION=	4.12.0
REVISION=	4

PORTROACH=	limitw:1,even

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB+= Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 dbus-glib-1
WANTLIB+= expat ffi fontconfig freetype fribidi garcon-1 gdk-x11-2.0
WANTLIB+= gdk-x11-2.0 gdk_pixbuf-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB+= gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gthread-2.0
WANTLIB+= gtk-x11-2.0 gtk-x11-2.0 harfbuzz iconv intl m pango-1.0
WANTLIB+= pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB+= startup-notification-1 xcb xcb-render xcb-shm xcb-util
WANTLIB+= xfce4ui-1 xfce4util xfconf-0 z

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes

CONFIGURE_ARGS= --disable-linker-opts
LIB_DEPENDS=	x11/xfce4/garcon>=0.3.0 \
		x11/xfce4/libxfce4ui>=4.9.0 \
		x11/xfce4/xfconf>=4.9.0


.include <bsd.port.mk>
