# $OpenBSD: Makefile,v 1.45 2016/11/03 10:37:45 landry Exp $

COMMENT=	Xfce4 application finder

XFCE_PROJECT=	xfce4-appfinder
XFCE_VERSION=	4.12.0
REVISION=	0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes

CONFIGURE_ARGS= --disable-linker-opts
LIB_DEPENDS=	x11/xfce4/garcon>=0.3.0 \
		x11/xfce4/libxfce4ui>=4.9.0 \
		x11/xfce4/xfconf>=4.9.0

WANTLIB=	X11 Xcomposite Xcursor Xdamage Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pixman-1 png xfce4util z \
		ICE SM dbus-1 dbus-glib-1 gio-2.0 gthread-2.0 \
		pcre pthread startup-notification-1 xfce4ui-1 \
		pthread-stubs xcb X11-xcb ffi \
		xcb-util gthread-2.0 xcb-render xcb-shm \
		xfconf-0 gdk-x11-2.0 garcon-1 \
		gdk_pixbuf-2.0 gtk-x11-2.0 harfbuzz graphite2 iconv intl

.include <bsd.port.mk>
