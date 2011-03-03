# $OpenBSD: Makefile,v 1.37 2011/03/03 21:11:29 landry Exp $

COMMENT=	Xfce4 temperature/weather conditions panel plugin

XFCE_VERSION=	0.7.4
XFCE_PLUGIN=	weather

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4

LIB_DEPENDS=	textproc/libxml
LIB_DEPENDS +=	x11/xfce4/libxfcegui4

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pixman-1 png xfce4util xfcegui4 z \
		ICE SM gio-2.0 pcre startup-notification-1 pthread-stubs xcb \
		execinfo xcb-atom xcb-aux xcb-event xml2 \
		gthread-2.0 pthread xcb-render GL Xxf86vm drm xcb-shm

.include <bsd.port.mk>
