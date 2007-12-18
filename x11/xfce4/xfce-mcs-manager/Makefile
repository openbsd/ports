# $OpenBSD: Makefile,v 1.14 2007/12/18 20:23:56 landry Exp $

COMMENT=	settings manager for xfce4
V=		4.4.2
DISTNAME=	xfce-mcs-manager-${V}

HOMEPAGE=	http://www.xfce.org/
MAINTAINER=	Landry Breuil <gaston@gcu.info>

# LGPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://www.xfce.org/archive/xfce-${V}/src/
EXTRACT_SUFX=	.tar.bz2

LIB_DEPENDS=	xfcegui4.>=4::x11/xfce4/libxfcegui4 \
		xfce4mcs-client.>=3,xfce4mcs-manager.>=3::x11/xfce4/libxfce4mcs
RUN_DEPENDS=	::devel/desktop-file-utils

WANTLIB=	ICE SM X11 Xrender Xau Xdmcp expat c fontconfig freetype m \
		Xcursor Xext Xfixes Xi Xinerama Xrandr Xcomposite Xrender \
		Xdamage atk-1.0 gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 pcre \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 pango-1.0 \
		pangoft2-1.0 pangocairo-1.0 cairo glitz png z \
		startup-notification-1 xfce4util

USE_GMAKE=	Yes

.include <bsd.port.mk>
