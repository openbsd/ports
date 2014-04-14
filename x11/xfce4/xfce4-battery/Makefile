# $OpenBSD: Makefile,v 1.41 2014/04/14 19:52:45 matthieu Exp $

ONLY_FOR_ARCHS=	${APM_ARCHS}

COMMENT=	Xfce4 battery monitor panel plugin

XFCE_VERSION=	1.0.5
XFCE_PLUGIN=	battery
REVISION =	2

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4
MODXFCE_ICON_CACHE=	Yes

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 pthread-stubs xcb \
		pangocairo-1.0 pangoft2-1.0 pixman-1 png xfce4util z \
		gthread-2.0 xcb-render GL ICE SM Xxf86vm drm stdc++ xfce4ui-1 \
		pcre startup-notification-1 X11-xcb ffi xcb-util xcb-shm \
		harfbuzz pthread

.include <bsd.port.mk>
