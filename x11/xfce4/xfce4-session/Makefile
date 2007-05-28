# $OpenBSD: Makefile,v 1.15 2007/05/28 19:53:07 steven Exp $

COMMENT=	"xfce4 session manager"

V=		4.4.1
DISTNAME=	xfce4-session-${V}
PKGNAME=	${DISTNAME}p1

SHARED_LIBS +=  xfsm-4.2             0.1      # .0.1

HOMEPAGE=	http://www.xfce.org/projects/xfce4-session/
MAINTAINER=	Landry Breuil <gaston@gcu.info>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://www.xfce.org/archive/xfce-${V}/src/
EXTRACT_SUFX=	.tar.bz2

USE_GMAKE=	Yes

CONFIGURE_ARGS= --disable-dbus

BUILD_DEPENDS=	:xfce-mcs-manager-*:x11/xfce4/xfce-mcs-manager
LIB_DEPENDS=	xfcegui4.>=4.0::x11/xfce4/libxfcegui4 \
		xfce4mcs-client.>=3.5::x11/xfce4/libxfce4mcs
RUN_DEPENDS=	:xfce-mcs-manager->=4.4.1:x11/xfce4/xfce-mcs-manager

WANTLIB=	ICE SM X11 Xau Xdmcp Xrender c fontconfig freetype m \
		Xcursor Xext Xfixes Xi Xinerama Xrandr expat \
		atk-1.0 gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 pango-1.0 \
		pangoft2-1.0 pangocairo-1.0 cairo glitz png z \
		startup-notification-1 xfce4util.>=1

.include <bsd.port.mk>
