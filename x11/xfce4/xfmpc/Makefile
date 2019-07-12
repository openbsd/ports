# $OpenBSD: Makefile,v 1.29 2019/07/12 20:51:29 sthen Exp $

COMMENT=	Xfce4 Music Player Daemon client

XFCE_VERSION=	0.2.3
XFCE_GOODIE=	xfmpc
REVISION =	3

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 c cairo expat ffi fontconfig
WANTLIB += freetype fribidi gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0
WANTLIB += harfbuzz iconv intl m mpd pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread startup-notification-1
WANTLIB += xcb xcb-render xcb-shm xcb-util xfce4ui-1 xfce4util z

MODXFCE_DESKTOP_FILE=	Yes
MODULES=	x11/xfce4

LIB_DEPENDS=	audio/libmpd \
		x11/xfce4/libxfce4ui

.include <bsd.port.mk>
