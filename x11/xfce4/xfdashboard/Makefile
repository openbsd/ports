# $OpenBSD: Makefile,v 1.6 2015/04/12 18:08:15 landry Exp $

COMMENT=	Xfce4 gnome-shell like dashboard

XFCE_GOODIE =	xfdashboard
XFCE_VERSION =	0.4.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

HOMEPAGE =	http://goodies.xfce.org/projects/applications/xfdashboard/start
MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes

LIB_DEPENDS =	graphics/clutter/core \
		x11/xfce4/xfconf \
		x11/xfce4/garcon \
		x11/gtk+3 \
		devel/libwnck3

WANTLIB += X11 X11-xcb XRes Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo cairo-gobject
WANTLIB += clutter-1.0 cogl cogl-pango cogl-path dbus-1 dbus-glib-1 expat
WANTLIB += ffi fontconfig freetype garcon-1 gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 harfbuzz json-glib-1.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs startup-notification-1
WANTLIB += xcb xcb-util xcb-render xcb-shm xfce4util xfconf-0 z
WANTLIB += EGL Xau Xdmcp drm gbm glapi xcb-dri2 xcb-shape xcb-xfixes
WANTLIB += ICE SM atk-bridge-2.0 atspi gtk-3 epoxy wnck-3

FAKE_FLAGS =	autostartdir=${PREFIX}/share/examples/xfdashboard/

.include <bsd.port.mk>
