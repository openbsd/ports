# $OpenBSD: Makefile,v 1.23 2016/11/03 10:37:46 landry Exp $

COMMENT=	Xfce4 generic scriptable monitor panel plugin

XFCE_VERSION=	3.4.0
XFCE_PLUGIN=	genmon
REVISION =	4

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 cairo
WANTLIB += expat ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-x11-2.0 harfbuzz m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += startup-notification-1 xcb xcb-render xcb-shm xcb-util
WANTLIB += xfce4ui-1 xfce4util z iconv intl

MODULES=	x11/xfce4
WRKDIST=	${WRKDIR}/${DISTNAME:S/.0//}

.include <bsd.port.mk>
