# $OpenBSD: Makefile,v 1.7 2010/10/11 08:19:37 jasper Exp $

COMMENT=	Xfce4 web search panel plugin

XFCE_VERSION=	0.4.2
XFCE_PLUGIN=	smartbookmark
REVISION=	4
EXTRACT_SUFX=	.tar.gz

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 cairo expat \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png gthread-2.0 \
		startup-notification-1 xfce4util xfcegui4 z pthread-stubs xcb \
		execinfo xcb-atom xcb-aux xcb-event xcb-render xcb-render-util


.include <bsd.port.mk>
