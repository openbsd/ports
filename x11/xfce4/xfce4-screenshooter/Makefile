# $OpenBSD: Makefile,v 1.12 2010/10/19 08:14:00 espie Exp $

COMMENT=	Xfce4 desktop screenshot panel plugin

XFCE_VERSION=	1.6.0
XFCE_GOODIE=	xfce4-screenshooter
EXTRACT_SUFX=	.tar.gz
REVISION=	6

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
USE_GROFF =	Yes

LIB_DEPENDS=	::x11/xfce4/xfce4-panel \
		::net/xmlrpc-c

DESKTOP_FILES=	Yes

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 \
		glib-2.0 gmodule-2.0 gobject-2.0 gtk-x11-2.0 m \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png \
		gthread-2.0 pthread startup-notification-1 xfce4util \
		xfcegui4 z crypto ssl curl idn pthread-stubs xcb \
		execinfo xcb-atom xcb-aux xcb-event xfce4panel xmlrpc \
		xmlrpc_client xmlrpc_util xmlrpc_xmlparse xmlrpc_xmltok \
		xcb-render xcb-render-util

.include <bsd.port.mk>
