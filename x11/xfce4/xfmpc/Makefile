# $OpenBSD: Makefile,v 1.24 2016/11/03 10:37:48 landry Exp $

COMMENT=	Xfce4 Music Player Daemon client

XFCE_VERSION=	0.2.3
XFCE_GOODIE=	xfmpc

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c
WANTLIB += cairo expat ffi fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz m mpd pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs startup-notification-1 xcb xcb-render
WANTLIB += xcb-shm xcb-util xfce4ui-1 xfce4util z iconv intl

MODXFCE_DESKTOP_FILE=	Yes
MODULES=	x11/xfce4

LIB_DEPENDS=	audio/libmpd \
		x11/xfce4/libxfce4ui

.include <bsd.port.mk>
