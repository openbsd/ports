# $OpenBSD: Makefile,v 1.18 2013/05/31 15:35:21 ajacoutot Exp $

COMMENT=	Xfce4 alternative notification daemon

XFCE_VERSION=	0.2.2
XFCE_GOODIE=	xfce4-notifyd
REVISION =      4

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes

LIB_DEPENDS=	x11/xfce4/libxfce4ui \
		x11/xfce4/xfconf

# uses notify-send for previews
RUN_DEPENDS =	devel/libnotify

WANTLIB += GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 c cairo dbus-1 dbus-glib-1 drm expat ffi fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs startup-notification-1 xcb xcb-aux xcb-render
WANTLIB += xcb-shm xfce4ui-1 xfce4util xfconf-0 z stdc++
WANTLIB += harfbuzz

.include <bsd.port.mk>
