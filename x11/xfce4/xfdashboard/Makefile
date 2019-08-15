# $OpenBSD: Makefile,v 1.21 2019/08/15 07:11:05 landry Exp $

COMMENT=	Xfce4 gnome-shell like dashboard

XFCE_GOODIE =	xfdashboard
XFCE_VERSION =	0.6.1
REVISION=	7
PORTROACH +=	limitw:1,even
SHARED_LIBS +=	xfdashboard	0.0 # 600.0

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += EGL ICE SM X11 X11-xcb XRes Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 c
WANTLIB += cairo cairo-gobject clutter-1.0 cogl cogl-pango cogl-path
WANTLIB += dbus-1 dbus-glib-1 drm epoxy expat ffi fontconfig freetype
WANTLIB += fribidi garcon-1 gbm gdk-3 gdk_pixbuf-2.0 gio-2.0 glapi
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += harfbuzz iconv intl json-glib-1.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread startup-notification-1
WANTLIB += wnck-3 xcb xcb-dri2 xcb-dri3 xcb-present xcb-render xcb-shm
WANTLIB += xcb-sync xcb-util xcb-xfixes xfce4ui-2 xfce4util xfconf-0
WANTLIB += xshmfence z

HOMEPAGE =	https://goodies.xfce.org/projects/applications/xfdashboard/start
MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes

LIB_DEPENDS =	graphics/clutter/core \
		x11/dbus-glib \
		x11/xfce4/xfconf \
		x11/xfce4/garcon \
		x11/xfce4/libxfce4ui \
		x11/gtk+3 \
		devel/libwnck3

FAKE_FLAGS =	autostartdir=${PREFIX}/share/examples/xfdashboard/

.include <bsd.port.mk>
