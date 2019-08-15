# $OpenBSD: Makefile,v 1.31 2019/08/15 07:11:23 landry Exp $

COMMENT=	Xfce4 Music Player Daemon client

XFCE_VERSION=	0.3.0
XFCE_GOODIE=	xfmpc
REVISION=	0

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 c
WANTLIB += cairo cairo-gobject epoxy expat ffi fontconfig freetype fribidi gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz m mpd pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += startup-notification-1 xcb xcb-render
WANTLIB += xcb-shm xcb-util xfce4ui-2 xfce4util z iconv intl

MODXFCE_DESKTOP_FILE=	Yes
MODULES=	x11/xfce4

LIB_DEPENDS=	audio/libmpd \
		x11/xfce4/libxfce4ui

.include <bsd.port.mk>
