# $OpenBSD: Makefile,v 1.43 2015/05/05 17:00:21 sthen Exp $

ONLY_FOR_ARCHS=	${APM_ARCHS}

COMMENT=	Xfce4 battery monitor panel plugin

XFCE_VERSION=	1.0.5
XFCE_PLUGIN=	battery
REVISION =	4

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB+= GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB+= Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo
WANTLIB+= drm expat ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB+= gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB+= gtk-x11-2.0 harfbuzz m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB+= pcre pixman-1 png pthread pthread-stubs startup-notification-1
WANTLIB+= stdc++ xcb xcb-render xcb-shm xcb-util xfce4ui-1 xfce4util z

MODULES=	x11/xfce4
MODXFCE_ICON_CACHE=	Yes

.include <bsd.port.mk>
