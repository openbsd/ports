# $OpenBSD: Makefile,v 1.4 2007/12/18 21:18:50 landry Exp $

COMMENT=	command line plugin for the xfce4 panel

V=		0.3.5
DISTNAME=	verve-plugin-${V}
PKGNAME=	xfce4-verve-${V}p0

HOMEPAGE=	http://goodies.xfce.org/projects/panel-plugins/verve-plugin

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://goodies.xfce.org/releases/verve-plugin/
EXTRACT_SUFX=	.tar.bz2

USE_GMAKE=	Yes
LIB_DEPENDS=	xfce4panel.>=2.2::x11/xfce4/xfce4-panel \
		xfcegui4.>=4::x11/xfce4/libxfcegui4 \
		dbus-glib-1::x11/dbus-glib \
		pcre::devel/pcre

WANTLIB=	ICE SM X11 Xdmcp Xrender Xdamage Xau fontconfig freetype \
		Xcursor Xext Xfixes Xi Xcomposite Xinerama Xrandr expat \
		atk-1.0 gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 m z c \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 pango-1.0 \
		pangoft2-1.0 pangocairo-1.0 cairo glitz png \
		xfce4util exo-0.3 gthread-2.0 pthread \
		startup-notification-1 dbus-1

.include <bsd.port.mk>
