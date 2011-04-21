# $OpenBSD: Makefile,v 1.21 2011/04/21 07:07:26 ajacoutot Exp $

COMMENT=	Xfce4 notification daemon

XFCE_VERSION=	0.3.7
XFCE_GOODIE=	notification-daemon-xfce
REVISION=	14

MASTER_SITES=	http://archive.xfce.org/src/archive/${XFCE_GOODIE}/${XFCE_BRANCH}/
# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
DESKTOP_FILES=	Yes

LIB_DEPENDS=	x11/xfce4/libxfcegui4 \
		x11/libsexy \
		devel/libnotify>=0.7.2 \
		x11/dbus-glib

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 \
		dbus-glib-1 expat fontconfig freetype gdk-x11-2.0 \
		gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre \
		pixman-1 png pthread startup-notification-1 xfce4util xml2 z \
		pthread-stubs xcb execinfo xcb-atom xcb-aux xcb-event \
		gthread-2.0 xcb-render GL Xxf86vm drm xcb-shm xfcegui4 sexy notify

.include <bsd.port.mk>
