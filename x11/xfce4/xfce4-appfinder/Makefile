# $OpenBSD: Makefile,v 1.14 2007/12/18 21:02:20 landry Exp $

COMMENT=	xfce4 application finder

V=		4.4.2
DISTNAME=	xfce4-appfinder-${V}

HOMEPAGE=	http://www.xfce.org/projects/xfce4-appfinder/
MAINTAINER=	Landry Breuil <gaston@gcu.info>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://www.xfce.org/archive/xfce-${V}/src/
EXTRACT_SUFX=	.tar.bz2

USE_GMAKE=	Yes

LIB_DEPENDS=	xfcegui4.>=4::x11/xfce4/libxfcegui4
RUN_DEPENDS=	::devel/desktop-file-utils

WANTLIB=	X11 Xau Xdmcp Xcomposite Xrender c fontconfig freetype m \
		Xcursor Xext Xfixes Xi Xinerama Xrandr Xdamage expat \
		atk-1.0 gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 pango-1.0 \
		pangoft2-1.0 pangocairo-1.0 cairo glitz png z \
		xfce4util

.include <bsd.port.mk>
