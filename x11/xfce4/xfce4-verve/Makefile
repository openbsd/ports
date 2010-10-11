# $OpenBSD: Makefile,v 1.14 2010/10/11 08:19:38 jasper Exp $

COMMENT=	Xfce4 command line panel plugin

XFCE_VERSION=	0.3.5
XFCE_PLUGIN=	verve
DISTNAME=	${XFCE_PLUGIN}-plugin-${XFCE_VERSION}
PKGNAME=	xfce4-${XFCE_PLUGIN}-${XFCE_VERSION}
REVISION=	9

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 \
		exo-0.3 expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
		gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pixman-1 png pthread startup-notification-1 xfce4util z \
		dbus-glib-1 pcre xfcegui4 pthread-stubs xcb execinfo \
		xcb-atom xcb-aux xcb-event xcb-render xcb-render-util

.include <bsd.port.mk>
