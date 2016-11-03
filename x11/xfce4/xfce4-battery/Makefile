# $OpenBSD: Makefile,v 1.45 2016/11/03 10:37:45 landry Exp $

ONLY_FOR_ARCHS=	${APM_ARCHS}

COMMENT=	Xfce4 battery monitor panel plugin

XFCE_VERSION=	1.1.0
XFCE_PLUGIN=	battery

# BSD
PERMIT_PACKAGE_CDROM=	Yes
MODXFCE_WANTLIB =	xfce4panel-2.0

WANTLIB+= ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB+= Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 cairo
WANTLIB+= expat ffi fontconfig freetype gdk_pixbuf-2.0
WANTLIB+= gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB+= harfbuzz m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB+= pcre pixman-1 png pthread pthread-stubs startup-notification-1
WANTLIB+= xcb xcb-render xcb-shm xcb-util xfce4ui-2 xfce4util z
WANTLIB+= atk-bridge-2.0 atspi cairo-gobject dbus-1 epoxy gdk-3 gtk-3 iconv intl

MODULES=	x11/xfce4
MODXFCE_ICON_CACHE=	Yes

.include <bsd.port.mk>
