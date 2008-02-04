# $OpenBSD: Makefile,v 1.1.1.1 2008/02/04 11:27:34 landry Exp $

COMMENT=	integrates WindowMaker dockapps into xfce4 panel

V=		0.1.8
DISTNAME=	xfce4-wmdock-plugin-${V}
PKGNAME=	xfce4-wmdock-${V}

HOMEPAGE=	http://goodies.xfce.org/projects/panel-plugins/xfce4-wmdock-plugin
MAINTAINER=	Landry Breuil <gaston@gcu.info>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://www.ibh.de/~ellguth/develop/

USE_GMAKE=	Yes

LIB_DEPENDS=	xfce4panel.>=2.2::x11/xfce4/xfce4-panel \
		wnck-1.>=21::devel/libwnck \
		xfcegui4.>=4::x11/xfce4/libxfcegui4

WANTLIB=	ICE SM X11 XRes Xau Xcomposite Xcursor Xdamage Xdmcp \
		Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo \
		expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
		glib-2.0 glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre png \
		startup-notification-1 xfce4util z

.include <bsd.port.mk>
