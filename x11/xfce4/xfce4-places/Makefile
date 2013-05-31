# $OpenBSD: Makefile,v 1.22 2013/05/31 15:35:21 ajacoutot Exp $

COMMENT=	Xfce4 places panel plugin

XFCE_VERSION=	1.4.0
XFCE_PLUGIN=	places
REVISION =	1

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4

LIB_DEPENDS +=	devel/libnotify

WANTLIB += GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 c cairo drm exo-1 expat ffi fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 notify
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs startup-notification-1 stdc++
WANTLIB += xcb xcb-aux xcb-render xcb-shm xfce4util xfce4ui-1 z
WANTLIB += harfbuzz

.include <bsd.port.mk>
