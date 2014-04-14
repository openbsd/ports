# $OpenBSD: Makefile,v 1.21 2014/04/14 19:52:46 matthieu Exp $

COMMENT=	Xfce4 Music Player Daemon client

XFCE_VERSION=	0.2.2
XFCE_GOODIE=	xfmpc
REVISION =	4

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODXFCE_DESKTOP_FILE=	Yes
MODULES=	x11/xfce4

LIB_DEPENDS=	audio/libmpd \
		x11/xfce4/libxfce4ui

WANTLIB += GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 c cairo drm expat ffi fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m mpd pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += startup-notification-1 xcb xcb-util xcb-render xcb-shm
WANTLIB += xfce4util xfce4ui-1 z stdc++
WANTLIB += harfbuzz

.include <bsd.port.mk>
