# $OpenBSD: Makefile,v 1.60 2015/05/05 17:00:21 sthen Exp $

COMMENT=	Xfce4 desktop panel

XFCE_PROJECT=	xfce4-panel
XFCE_VERSION=	4.12.0
REVISION=	2

SHARED_LIBS=	xfce4panel-1.0	1.0 \
		xfce4panel-2.0	0.0 # 4.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 X11-xcb XRes Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject dbus-1 dbus-glib-1 epoxy exo-1
WANTLIB += expat ffi fontconfig freetype garcon-1 garcon-gtk2-1 gdk-3
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 gtk-x11-2.0 harfbuzz
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png
WANTLIB += pthread pthread-stubs startup-notification-1 wnck-1 xcb
WANTLIB += xcb-render xcb-shm xcb-util xfce4ui-1 xfce4util xfconf-0 z

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes
MODXFCE_PURGE_LA =	lib/xfce4/panel/plugins

CONFIGURE_ARGS=--disable-linker-opts --enable-gtk3
LIB_DEPENDS=	x11/xfce4/exo>=0.7.2 \
		x11/xfce4/libxfce4ui>=4.11.0 \
		x11/xfce4/xfconf>=4.9.0 \
		x11/xfce4/garcon>=0.1.5 \
		devel/libwnck

FAKE_FLAGS=	confdir=${PREFIX}/share/examples/xfce4-panel

.include <bsd.port.mk>
