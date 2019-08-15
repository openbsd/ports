# $OpenBSD: Makefile,v 1.32 2019/08/15 07:03:35 landry Exp $

COMMENT=	Xfce4 places panel plugin

XFCE_VERSION=	1.8.1
XFCE_PLUGIN=	places

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4

LIB_DEPENDS +=	devel/libnotify \
		x11/xfce4/xfconf

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += cairo cairo-gobject epoxy exo-2 expat ffi fontconfig
WANTLIB += freetype fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += harfbuzz iconv intl m notify pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread startup-notification-1
WANTLIB += xcb xcb-render xcb-shm xcb-util xfce4ui-2
WANTLIB += xfce4util xfconf-0 z

.include <bsd.port.mk>
