# $OpenBSD: Makefile,v 1.41 2019/05/01 10:07:53 ajacoutot Exp $

COMMENT=	Xfce4 xkb layout switcher panel plugin

XFCE_VERSION=	0.8.1
XFCE_PLUGIN=	xkb
REVISION=	2

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4
LIB_DEPENDS =	x11/gnome/librsvg \
		devel/libwnck3 \
		x11/gnome/libxklavier>=5.4
MODXFCE_WANTLIB=	xfce4panel-2.0

WANTLIB += ICE SM X11 X11-xcb XRes Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += cairo cairo-gobject croco-0.6 dbus-1 dbus-glib-1 epoxy
WANTLIB += expat ffi fontconfig freetype fribidi garcon-1 gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz iconv intl lzma
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png16 pthread rsvg-2 startup-notification-1 wnck-3
WANTLIB += xcb xcb-render xcb-shm xcb-util xfce4ui-2 xfce4util
WANTLIB += xfconf-0 xkbfile xklavier xml2 z


.include <bsd.port.mk>
