# $OpenBSD: Makefile,v 1.18 2019/05/01 10:07:53 ajacoutot Exp $

COMMENT=	Xfce4 gnome-shell like dashboard

XFCE_GOODIE =	xfdashboard
XFCE_VERSION =	0.6.1
REVISION=	5
PORTROACH +=	limitw:1,even
SHARED_LIBS +=	xfdashboard	0.0 # 600.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

HOMEPAGE =	http://goodies.xfce.org/projects/applications/xfdashboard/start
MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes

LIB_DEPENDS =	graphics/clutter/core \
		x11/xfce4/xfconf \
		x11/xfce4/garcon \
		x11/xfce4/libxfce4ui \
		x11/gtk+3 \
		devel/libwnck3

WANTLIB += EGL ICE SM X11 X11-xcb XRes Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += c cairo cairo-gobject clutter-1.0 cogl cogl-pango cogl-path
WANTLIB += dbus-1 dbus-glib-1 drm epoxy expat ffi fontconfig freetype
WANTLIB += fribidi garcon-1 gbm gdk-3 gdk_pixbuf-2.0 gio-2.0 glapi
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-3 harfbuzz iconv intl json-glib-1.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png16 pthread
WANTLIB += startup-notification-1 wnck-3 xcb xcb-dri2 xcb-dri3
WANTLIB += xcb-present xcb-render xcb-shm xcb-sync xcb-util xcb-xfixes
WANTLIB += xfce4ui-2 xfce4util xfconf-0 xshmfence z

FAKE_FLAGS =	autostartdir=${PREFIX}/share/examples/xfdashboard/

.include <bsd.port.mk>
