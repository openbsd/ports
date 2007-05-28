# $OpenBSD: Makefile,v 1.12 2007/05/28 19:53:07 steven Exp $

COMMENT=	"xfce4 application finder"

V=		4.4.1
DISTNAME=	xfce4-appfinder-${V}
PKGNAME=	${DISTNAME}p0

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

LIB_DEPENDS=	xfcegui4.>=4.0::x11/xfce4/libxfcegui4

WANTLIB=	X11 Xau Xdmcp Xrender c fontconfig freetype m \
		Xcursor Xext Xfixes Xi Xinerama Xrandr expat \
		atk-1.0 gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 pango-1.0 \
		pangoft2-1.0 pangocairo-1.0 cairo glitz png z \
		xfce4util.>=1

.include <bsd.port.mk>
