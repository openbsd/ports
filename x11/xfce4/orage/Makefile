# $OpenBSD: Makefile,v 1.27 2011/01/18 20:48:34 landry Exp $

COMMENT=	Xfce4 advanced calendar

XFCE_GOODIE=	orage
XFCE_VERSION=	4.6.1
REVISION=	7

HOMEPAGE=	http://www.xfce.org/projects/orage
# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
DESKTOP_FILES=	Yes

LIB_DEPENDS=	x11/xfce4/libxfcegui4 \
		x11/xfce4/xfce4-panel \
		devel/libnotify \
		x11/dbus-glib \
		x11/dbus

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread \
		startup-notification-1 xfce4util z pthread-stubs xcb \
		execinfo xcb-atom xcb-aux xcb-event gthread-2.0 xcb-render \
		GL Xxf86vm drm xcb-shm xfcegui4 xfce4panel-1.0 notify dbus-1 dbus-glib-1

.include <bsd.port.mk>
