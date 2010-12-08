# $OpenBSD: Makefile,v 1.22 2010/12/08 20:13:48 landry Exp $

COMMENT=	Xfce4 network load monitor panel plugin

XFCE_VERSION=	1.0.0
XFCE_PLUGIN=	netload

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
LIB_DEPENDS+=	x11/xfce4/libxfcegui4

WANTLIB=	X11 Xdmcp Xrender Xau Xdamage fontconfig freetype m z c \
		Xcursor Xext Xfixes Xi Xcomposite Xinerama Xrandr expat \
		atk-1.0 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 pango-1.0 \
		pangoft2-1.0 pangocairo-1.0 cairo png \
		pixman-1 xfce4util xfcegui4 pthread-stubs xcb \
		gthread-2.0 pthread xcb-render GL Xxf86vm drm xcb-shm

.include <bsd.port.mk>
