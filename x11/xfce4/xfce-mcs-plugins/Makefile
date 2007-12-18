# $OpenBSD: Makefile,v 1.16 2007/12/18 20:26:39 landry Exp $

COMMENT=	settings manager plug-ins for xfce4

V=		4.4.2
DISTNAME=	xfce-mcs-plugins-${V}

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
LIBTOOL_FLAGS=	--tag=disable-static
LIB_DEPENDS=	xfce4mcs-client.>=3,xfce4mcs-manager.>=3::x11/xfce4/libxfce4mcs \
		xfcegui4.>=4::x11/xfce4/libxfcegui4

RUN_DEPENDS=	::devel/desktop-file-utils \
		::x11/xfce4/xfce-mcs-manager

WANTLIB=	ICE SM X11 Xcursor Xext Xrandr Xrender Xxf86vm \
		Xau Xdmcp Xfixes Xi Xinerama fontconfig \
		Xcomposite Xdamage freetype m expat pcre \
		atk-1.0 gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 pango-1.0 \
		pangoft2-1.0 pangocairo-1.0 cairo glitz png z \
		startup-notification-1 xfce4util

.include <bsd.port.mk>
