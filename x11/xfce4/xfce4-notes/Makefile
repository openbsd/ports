# $OpenBSD: Makefile,v 1.30 2011/01/18 20:59:31 landry Exp $

COMMENT=	Xfce4 sticky notes panel plugin

XFCE_VERSION=	1.7.7
XFCE_PLUGIN=	notes

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
DESKTOP_FILES =	Yes

LIB_DEPENDS +=	devel/libunique
LIB_DEPENDS +=	x11/xfce4/libxfcegui4

FAKE_FLAGS =	autostartdir=${PREFIX}/share/examples/xfce4-notes

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pixman-1 png xfce4util z \
		xfcegui4 pthread gio-2.0 dbus-1 dbus-glib-1 pcre \
		startup-notification-1 xfconf-0 pthread-stubs xcb execinfo \
		xcb-atom xcb-aux xcb-event unique-1.0 gthread-2.0 \
		xcb-render GL Xxf86vm xcb-shm drm

.include <bsd.port.mk>
