# $OpenBSD: Makefile,v 1.8 2009/06/23 20:18:18 landry Exp $

COMMENT=	Xfce4 command line panel plugin

XFCE_VERSION=	0.3.5
XFCE_PLUGIN=	verve
DISTNAME=	${XFCE_PLUGIN}-plugin-${XFCE_VERSION}
PKGNAME=	xfce4-${XFCE_PLUGIN}-${XFCE_VERSION}p4

HOMEPAGE=	http://goodies.xfce.org/projects/panel-plugins/verve-plugin

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://goodies.xfce.org/releases/verve-plugin/

MODULES=	x11/xfce4

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 \
		exo-0.3 expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
		gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pixman-1 png pthread startup-notification-1 xfce4util z \
		dbus-glib-1 pcre xfcegui4

.include <bsd.port.mk>
