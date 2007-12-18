# $OpenBSD: Makefile,v 1.18 2007/12/18 21:31:36 landry Exp $

COMMENT=	see temperature/weather conditions on the xfce4 panel

V=		0.6.2
DISTNAME=	xfce4-weather-plugin-${V}
PKGNAME=	xfce4-weather-${V}p0

HOMEPAGE=	http://goodies.xfce.org/projects/panel-plugins/xfce4-weather-plugin
MAINTAINER=	Landry Breuil <gaston@gcu.info>

# BSD
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://goodies.xfce.org/releases/xfce4-weather-plugin/
EXTRACT_SUFX=	.tar.bz2

USE_GMAKE=	Yes
LIB_DEPENDS=	xfce4panel.>=2::x11/xfce4/xfce4-panel \
		xml2.>=9::textproc/libxml

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 glitz \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 png xfce4util xfcegui4 z

.include <bsd.port.mk>
