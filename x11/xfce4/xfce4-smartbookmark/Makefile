# $OpenBSD: Makefile,v 1.18 2015/03/16 20:41:56 landry Exp $

COMMENT=	Xfce4 web search panel plugin

XFCE_VERSION=	0.4.6
XFCE_PLUGIN=	smartbookmark

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += atk-1.0 cairo expat ffi fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread-stubs startup-notification-1
WANTLIB += xcb xcb-util xcb-render xcb-shm xfce4util xfce4ui-1 z
WANTLIB += harfbuzz pthread graphite2

.include <bsd.port.mk>
