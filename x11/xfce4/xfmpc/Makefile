# $OpenBSD: Makefile,v 1.22 2015/05/05 17:00:21 sthen Exp $

COMMENT=	Xfce4 Music Player Daemon client

XFCE_VERSION=	0.2.2
XFCE_GOODIE=	xfmpc
REVISION =	5

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c
WANTLIB += cairo drm expat ffi fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz m mpd pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs startup-notification-1 stdc++ xcb xcb-render
WANTLIB += xcb-shm xcb-util xfce4ui-1 xfce4util z

MODXFCE_DESKTOP_FILE=	Yes
MODULES=	x11/xfce4

LIB_DEPENDS=	audio/libmpd \
		x11/xfce4/libxfce4ui

.include <bsd.port.mk>
