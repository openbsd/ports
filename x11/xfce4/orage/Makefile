# $OpenBSD: Makefile,v 1.48 2015/04/10 20:21:01 landry Exp $

COMMENT=	Xfce4 advanced calendar

XFCE_GOODIE=	orage
XFCE_VERSION=	4.12.1

HOMEPAGE=	http://www.kolumbus.fi/~w408237/orage/
# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes

LIB_DEPENDS =	x11/xfce4/xfce4-panel \
		devel/popt \
		textproc/libical \
		devel/libnotify \
		x11/dbus-glib

WANTLIB=	X11 Xcomposite Xcursor Xdamage Xext xcb-render \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 gthread-2.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread \
		xfce4util z pthread-stubs xcb ical icalss icalvcal popt ffi \
		xcb-shm xfce4panel-1.0 notify dbus-1 dbus-glib-1 graphite2 \
		harfbuzz

.include <bsd.port.mk>
