# $OpenBSD: Makefile,v 1.28 2011/01/19 17:19:20 landry Exp $

COMMENT=	Xfce4 advanced calendar

XFCE_GOODIE=	orage

HOMEPAGE=	http://www.xfce.org/projects/orage
# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
DESKTOP_FILES=	Yes

LIB_DEPENDS =	x11/xfce4/xfce4-panel \
		devel/popt \
		textproc/libical \
		devel/libnotify \
		x11/dbus-glib

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext xcb-render \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 gthread-2.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread \
		xfce4util z pthread-stubs xcb ical icalss icalvcal popt \
		GL Xxf86vm drm xcb-shm xfce4panel-1.0 notify dbus-1 dbus-glib-1

.include <bsd.port.mk>
