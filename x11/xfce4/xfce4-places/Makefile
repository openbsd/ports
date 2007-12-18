# $OpenBSD: Makefile,v 1.2 2007/12/18 21:16:40 landry Exp $

COMMENT=	gnome-like places plugin for the xfce4 panel

V=		1.0.0
DISTNAME=	xfce4-places-plugin-${V}
PKGNAME=	xfce4-places-${V}p0

HOMEPAGE=	http://goodies.xfce.org/projects/panel-plugins/xfce4-places-plugin
MAINTAINER=	Landry Breuil <gaston@gcu.info>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://goodies.xfce.org/releases/xfce4-places-plugin/
EXTRACT_SUFX=	.tar.bz2

USE_GMAKE=	Yes

LIB_DEPENDS=	xfce4panel.>=2::x11/xfce4/xfce4-panel \
		thunar-vfs-1.>=4::x11/xfce4/thunar

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo exo-0.3 \
		expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
		glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0 \
		gtk-x11-2.0 jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pcre png pthread startup-notification-1 xfce4util xfcegui4 \
		z

.include <bsd.port.mk>
