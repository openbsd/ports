# $OpenBSD: Makefile,v 1.53 2019/08/15 07:01:33 landry Exp $

ONLY_FOR_ARCHS=	${APM_ARCHS}

COMMENT=	Xfce4 battery monitor panel plugin

XFCE_VERSION=	1.1.3
XFCE_PLUGIN=	battery

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB+= ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB+= Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 cairo fribidi
WANTLIB+= expat ffi fontconfig freetype gdk_pixbuf-2.0
WANTLIB+= gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB+= harfbuzz m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB+= pcre pixman-1 png pthread startup-notification-1
WANTLIB+= xcb xcb-render xcb-shm xcb-util xfce4ui-2 xfce4util z
WANTLIB+= atk-bridge-2.0 cairo-gobject epoxy gdk-3 gtk-3 iconv intl

MODULES=	x11/xfce4
MODXFCE_ICON_CACHE=	Yes

.include <bsd.port.mk>
