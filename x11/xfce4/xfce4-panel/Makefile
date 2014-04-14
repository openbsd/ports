# $OpenBSD: Makefile,v 1.56 2014/04/14 19:52:45 matthieu Exp $

COMMENT=	Xfce4 desktop panel

XFCE_PROJECT=	xfce4-panel
SHARED_LIBS=	xfce4panel-1.0	1.0	# 4.0
REVISION=	1

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes
MODXFCE_PURGE_LA =	lib/xfce4/panel/plugins

CONFIGURE_ARGS=--disable-linker-opts
LIB_DEPENDS=	x11/xfce4/exo>=0.7.2 \
		x11/xfce4/libxfce4ui>=4.9.0 \
		x11/xfce4/xfconf>=4.9.0 \
		x11/xfce4/garcon>=0.1.5 \
		devel/libwnck

WANTLIB += ICE SM X11 X11-xcb XRes Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += atk-1.0 c cairo dbus-1 dbus-glib-1 exo-1 expat
WANTLIB += ffi fontconfig freetype garcon-1 gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs startup-notification-1
WANTLIB += wnck-1 xcb xcb-util xcb-render xcb-shm xfce4ui-1 xfce4util
WANTLIB += xfconf-0 z harfbuzz graphite2

FAKE_FLAGS=	confdir=${PREFIX}/share/examples/xfce4-panel

.include <bsd.port.mk>
