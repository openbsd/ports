# $OpenBSD: Makefile,v 1.21 2014/04/14 19:52:45 matthieu Exp $

COMMENT=	Xfce4 generic scriptable monitor panel plugin

XFCE_VERSION=	3.4.0
XFCE_PLUGIN=	genmon
REVISION =	2

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4
WRKDIST=	${WRKDIR}/${DISTNAME:S/.0//}

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread-stubs xcb
WANTLIB += xcb-render xcb-shm xfce4util z
WANTLIB += ICE SM X11-xcb Xau Xdmcp Xxf86vm drm ffi gthread-2.0
WANTLIB += pcre startup-notification-1 stdc++ xcb-util xfce4ui-1
WANTLIB += harfbuzz pthread

.include <bsd.port.mk>
