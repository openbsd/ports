# $OpenBSD: Makefile,v 1.20 2010/07/14 11:48:13 landry Exp $

COMMENT=	Xfce4 wireless interface monitor panel plugin

XFCE_VERSION=	0.5.5
XFCE_PLUGIN=	wavelan
REVISION=	2

# BSD
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png startup-notification-1 \
		xfce4util xfcegui4 z pthread-stubs xcb execinfo xcb-atom \
		xcb-aux xcb-event

.include <bsd.port.mk>
