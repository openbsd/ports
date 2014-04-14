# $OpenBSD: Makefile,v 1.42 2014/04/14 19:52:45 matthieu Exp $

COMMENT=	Xfce4 sticky notes panel plugin

XFCE_VERSION=	1.7.7
XFCE_PLUGIN=	notes
REVISION=	7

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE =	Yes
MODXFCE_ICON_CACHE=	Yes

LIB_DEPENDS +=	devel/libunique
LIB_DEPENDS +=	x11/xfce4/libxfcegui4

FAKE_FLAGS =	autostartdir=${PREFIX}/share/examples/xfce4-notes

WANTLIB += GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 c cairo dbus-1 dbus-glib-1 drm expat ffi fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs startup-notification-1 unique-1.0 xcb
WANTLIB += xcb-util xcb-render xcb-shm xfce4util xfcegui4 xfconf-0
WANTLIB += stdc++ z
WANTLIB += harfbuzz

.include <bsd.port.mk>
