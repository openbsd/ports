# $OpenBSD: Makefile,v 1.31 2014/04/14 19:52:45 matthieu Exp $

COMMENT=	Xfce4 cpu/memory/swap/uptime monitor panel plugin

XFCE_VERSION=	1.1.1
XFCE_PLUGIN=	systemload
REVISION =	2

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4
CONFIGURE_ARGS=	--disable-upower

WANTLIB += GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 cairo drm expat ffi fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 kvm m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread-stubs stdc++
WANTLIB += startup-notification-1 xcb xcb-util xcb-render xcb-shm
WANTLIB += xfce4util xfce4ui-1 z
WANTLIB += harfbuzz pthread

.include <bsd.port.mk>
