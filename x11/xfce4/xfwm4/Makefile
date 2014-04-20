# $OpenBSD: Makefile,v 1.45 2014/04/20 21:19:45 jasper Exp $

COMMENT=	Xfce4 window manager

XFCE_PROJECT=	xfwm4
REVISION=	2

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes

LIB_DEPENDS=	x11/xfce4/libxfce4ui>=4.9.0 \
		devel/libwnck \
		x11/xfce4/xfconf>=4.8.0

WANTLIB += ICE SM X11 X11-xcb XRes Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += atk-1.0 c cairo dbus-1 dbus-glib-1 expat ffi fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs startup-notification-1 wnck-1 xcb xcb-util
WANTLIB += xcb-render xcb-shm xfce4kbd-private-2 xfce4ui-1 xfce4util
WANTLIB += xfconf-0 z graphite2 harfbuzz

.include <bsd.port.mk>
