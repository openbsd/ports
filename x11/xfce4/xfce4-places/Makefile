# $OpenBSD: Makefile,v 1.13 2010/10/11 08:19:37 jasper Exp $

COMMENT=	Xfce4 places panel plugin

XFCE_VERSION=	1.2.0
XFCE_PLUGIN=	places
REVISION=	2

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4

LIB_DEPENDS=	::x11/xfce4/thunar

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo exo-0.3 \
		expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
		gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 \
		gtk-x11-2.0 jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pcre pixman-1 png pthread startup-notification-1 \
		xfce4util xfcegui4 z pthread-stubs xcb execinfo \
		xcb-render xcb-render-util gamin-1 xcb-atom xcb-aux \
		 xcb-event thunar-vfs-1

.include <bsd.port.mk>
