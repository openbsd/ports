# $OpenBSD: Makefile,v 1.23 2014/04/14 19:52:46 matthieu Exp $

COMMENT=	Xfce4 WindowMaker dockapps wrapper panel plugin

XFCE_VERSION=	0.2.0
XFCE_PLUGIN=	wmdock
REVISION=	14

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4

MODXFCE_ICON_CACHE=	Yes

LIB_DEPENDS=	devel/libwnck
LIB_DEPENDS +=	x11/xfce4/libxfcegui4

WANTLIB += GL ICE SM X11 X11-xcb XRes Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 c cairo drm expat ffi fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += startup-notification-1 wnck-1 xcb xcb-util xcb-render
WANTLIB += xcb-shm xfce4util xfcegui4 z stdc++
WANTLIB += harfbuzz

.include <bsd.port.mk>
