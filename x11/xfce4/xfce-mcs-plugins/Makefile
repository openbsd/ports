# $OpenBSD: Makefile,v 1.13 2007/05/16 14:22:40 steven Exp $

COMMENT=	"settings manager plug-ins for xfce4"

V=		4.4.1
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
LIB_DEPENDS=	xfce4mcs-client.>=3.5,xfce4mcs-manager.>=3.5::x11/xfce4/libxfce4mcs \
		xfcegui4.>=4::x11/xfce4/libxfcegui4
RUN_DEPENDS=	:xfce-mcs-manager->=4.4.0:x11/xfce4/xfce-mcs-manager
BUILD_DEPENDS=	${RUN_DEPENDS}
WANTLIB=	ICE SM X11 Xcursor Xext Xrandr Xrender Xxf86vm expat \
		Xau Xdmcp Xfixes Xi Xinerama fontconfig freetype m \
		atk-1.0 gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 pango-1.0 \
		pangoft2-1.0 pangocairo-1.0 cairo glitz png z \
		startup-notification-1 xfce4util.>=1

.include <bsd.port.mk>
