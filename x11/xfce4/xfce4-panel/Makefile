# $OpenBSD: Makefile,v 1.13 2007/05/16 14:22:41 steven Exp $

COMMENT=	"panel for Xfce4 desktop"
V=		4.4.1
DISTNAME=	xfce4-panel-${V}
PKGNAME=	${DISTNAME}p0

SHARED_LIBS=	xfce4panel 2.2 #2.2

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

BUILD_DEPENDS=	:xfce-mcs-manager-*:x11/xfce4/xfce-mcs-manager
LIB_DEPENDS=	xfcegui4.>=4::x11/xfce4/libxfcegui4 \
		xfce4mcs-client.>=3.5,xfce4mcs-manager.>=3.5::x11/xfce4/libxfce4mcs
RUN_DEPENDS=	:xfce-mcs-manager-*:x11/xfce4/xfce-mcs-manager \
		::x11/xfce4/exo #:exo-open-*:x11/xfce4/exo ?
WANTLIB=	ICE SM X11 Xext Xrender c fontconfig freetype m z \
		Xcursor Xau Xdmcp Xfixes Xi Xinerama Xrandr expat \
		atk-1.0 gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 pango-1.0 \
		pangoft2-1.0 pangocairo-1.0 cairo glitz png \
		startup-notification-1 xfce4util.>=1

.include <bsd.port.mk>
