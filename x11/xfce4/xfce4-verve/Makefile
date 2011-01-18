# $OpenBSD: Makefile,v 1.16 2011/01/18 21:11:45 landry Exp $

COMMENT=	Xfce4 command line panel plugin

XFCE_VERSION=	1.0.0
XFCE_PLUGIN=	verve
REVISION =	0

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
LIB_DEPENDS =	x11/xfce4/libxfcegui4

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 \
		exo-1 expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
		gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pixman-1 png pthread startup-notification-1 xfce4util z \
		dbus-glib-1 pcre xfcegui4 pthread-stubs xcb execinfo \
		xcb-atom xcb-aux xcb-event xcb-render GL Xxf86vm drm xcb-shm

.include <bsd.port.mk>
