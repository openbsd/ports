# $OpenBSD: Makefile,v 1.24 2014/04/14 19:52:45 matthieu Exp $

COMMENT=	Xfce4 places panel plugin

XFCE_VERSION=	1.6.0
XFCE_PLUGIN=	places
REVISION=	0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4

LIB_DEPENDS +=	devel/libnotify \
		x11/xfce4/xfconf

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += atk-1.0 cairo exo-1 expat ffi fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 notify
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs startup-notification-1
WANTLIB += xcb xcb-util xcb-render xcb-shm xfce4util xfce4ui-1 z
WANTLIB += harfbuzz dbus-1 dbus-glib-1 graphite2 xfconf-0

.include <bsd.port.mk>
