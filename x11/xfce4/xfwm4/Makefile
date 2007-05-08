# $OpenBSD: Makefile,v 1.12 2007/05/08 08:56:44 steven Exp $

COMMENT=	"xfce4 window manager"
V=		4.4.1
DISTNAME=	xfwm4-${V}

HOMEPAGE=	http://www.xfce.org/projects/xfwm4/
MAINTAINER=	Landry Breuil <gaston@gcu.info>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://www.xfce.org/archive/xfce-${V}/src/
EXTRACT_SUFX=	.tar.bz2

USE_GMAKE=	yes

MODULES=	devel/gettext
BUILD_DEPENDS	:xfce-mcs-manager-*:x11/xfce4/xfce-mcs-manager
LIB_DEPENDS=	xfcegui4.>=4::x11/xfce4/libxfcegui4 \
		xfce4mcs-client.>=3.5,xfce4mcs-manager.>=3.5::x11/xfce4/libxfce4mcs
RUN_DEPENDS=	:xfce-mcs-manager->=4.4.1:x11/xfce4/xfce-mcs-manager
WANTLIB=	ICE SM X11 Xcomposite Xdamage Xext Xfixes Xrandr freetype \
		Xrender Xau Xdmcp expat Xcursor Xi Xinerama fontconfig \
		atk-1.0 gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 pango-1.0 \
		pangoft2-1.0 startup-notification-1 \
		xfce4util.>=1 pangocairo-1.0 cairo glitz png z c m

.include <bsd.port.mk>
