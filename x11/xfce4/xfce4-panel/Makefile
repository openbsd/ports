# $OpenBSD: Makefile,v 1.16 2007/12/18 20:41:27 landry Exp $

COMMENT=	panel for Xfce4 desktop
V=		4.4.2
DISTNAME=	xfce4-panel-${V}

SHARED_LIBS=	xfce4panel	2.3	#2.2

HOMEPAGE=	http://www.xfce.org/
MAINTAINER=	Landry Breuil <gaston@gcu.info>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://www.xfce.org/archive/xfce-${V}/src/
EXTRACT_SUFX=	.tar.bz2

USE_GMAKE=	Yes

BUILD_DEPENDS=	::x11/xfce4/xfce-mcs-manager
LIB_DEPENDS=	xfcegui4.>=4::x11/xfce4/libxfcegui4 \
		xfce4mcs-client.>=3,xfce4mcs-manager.>=3::x11/xfce4/libxfce4mcs
RUN_DEPENDS=	::x11/xfce4/xfce-mcs-manager \
		::x11/xfce4/exo \
		::devel/desktop-file-utils

WANTLIB=	ICE SM X11 Xext Xrender Xcomposite fontconfig freetype \
		Xcursor Xau Xdmcp Xfixes Xi Xinerama Xrandr Xdamage expat \
		atk-1.0 gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 pcre c m z \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 pango-1.0 \
		pangoft2-1.0 pangocairo-1.0 cairo glitz png \
		startup-notification-1 xfce4util

.include <bsd.port.mk>
