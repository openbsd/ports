# $OpenBSD: Makefile,v 1.34 2016/11/03 10:37:47 landry Exp $

COMMENT=	Xfce4 cpu/memory/swap/uptime monitor panel plugin

XFCE_VERSION=	1.2.0
XFCE_PLUGIN=	systemload

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4
CONFIGURE_ARGS=	--disable-upower
MODXFCE_WANTLIB =	xfce4panel-2.0

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += atk-1.0 cairo expat ffi fontconfig freetype
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 kvm m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread-stubs
WANTLIB += startup-notification-1 xcb xcb-util xcb-render xcb-shm
WANTLIB += xfce4util xfce4ui-2 z
WANTLIB += harfbuzz pthread graphite2 iconv intl
WANTLIB += atk-bridge-2.0 atspi cairo-gobject dbus-1 epoxy gdk-3 gtk-3


.include <bsd.port.mk>
