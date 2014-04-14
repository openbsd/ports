# $OpenBSD: Makefile,v 1.22 2014/04/14 19:52:45 matthieu Exp $

COMMENT=	Xfce4 command line panel plugin

XFCE_VERSION=	1.0.0
XFCE_PLUGIN=	verve
REVISION =	5

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4
LIB_DEPENDS =	x11/xfce4/libxfcegui4

WANTLIB += GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 c cairo dbus-1 dbus-glib-1 drm exo-1 expat
WANTLIB += ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs startup-notification-1
WANTLIB += xcb xcb-util xcb-render xcb-shm xfce4util xfcegui4 z stdc++
WANTLIB += harfbuzz

.include <bsd.port.mk>
