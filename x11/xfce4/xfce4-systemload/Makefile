# $OpenBSD: Makefile,v 1.24 2011/01/18 21:10:48 landry Exp $

COMMENT=	Xfce4 cpu/memory/swap/uptime monitor panel plugin

XFCE_VERSION=	1.0.0
XFCE_PLUGIN=	systemload
REVISION =	0

# BSD
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
LIB_DEPENDS +=	x11/xfce4/libxfcegui4

WANTLIB=	X11 Xdmcp Xrender Xau Xdamage fontconfig freetype kvm \
		Xcursor Xext Xfixes Xi Xcomposite Xinerama Xrandr expat \
		atk-1.0 gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 m z c \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 pango-1.0 \
		pangoft2-1.0 pangocairo-1.0 cairo png \
		pixman-1 xfce4util xfcegui4 gio-2.0 pthread-stubs xcb \
		gthread-2.0 pthread xcb-render GL ICE SM Xxf86vm drm \
		execinfo pcre startup-notification-1 xcb-atom xcb-aux xcb-event xcb-shm

.include <bsd.port.mk>
