# $OpenBSD: Makefile,v 1.2 2009/06/23 20:25:15 landry Exp $

COMMENT =	Xfce4 ppp connection monitor panel plugin

XFCE_VERSION =	0.1.3.99
XFCE_PLUGIN =	modemlights
PKGNAME=	${DISTNAME:S/-plugin//}p0

# GPLv2
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes

MODULES =	x11/xfce4

pre-configure:
	${SUBST_CMD} ${WRKSRC}/panel-plugin/panel-plugin.c

WANTLIB =	X11 Xdmcp Xrender Xau Xdamage fontconfig freetype m z c \
		Xcursor Xext Xfixes Xi Xcomposite Xinerama Xrandr expat \
		atk-1.0 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 pango-1.0 \
		pangoft2-1.0 pangocairo-1.0 pixman-1 cairo glitz png \
		xfce4util xfcegui4

.include <bsd.port.mk>
