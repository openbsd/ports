# $OpenBSD: Makefile,v 1.22 2015/05/05 17:00:21 sthen Exp $

COMMENT=	Xfce4 generic scriptable monitor panel plugin

XFCE_VERSION=	3.4.0
XFCE_PLUGIN=	genmon
REVISION =	3

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo
WANTLIB += drm expat ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-x11-2.0 harfbuzz m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += startup-notification-1 stdc++ xcb xcb-render xcb-shm xcb-util
WANTLIB += xfce4ui-1 xfce4util z

MODULES=	x11/xfce4
WRKDIST=	${WRKDIR}/${DISTNAME:S/.0//}

.include <bsd.port.mk>
