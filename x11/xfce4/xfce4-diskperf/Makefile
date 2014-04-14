# $OpenBSD: Makefile,v 1.33 2014/04/14 19:52:45 matthieu Exp $

COMMENT=	Xfce4 disk performance panel plugin

XFCE_VERSION=	2.5.4
XFCE_PLUGIN=	diskperf
REVISION =	2

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4

WANTLIB += GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 cairo drm expat ffi fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread-stubs
WANTLIB += startup-notification-1 xcb xcb-util xcb-render xcb-shm
WANTLIB += xfce4util z stdc++ xfce4ui-1
WANTLIB += harfbuzz pthread

.include <bsd.port.mk>
