# $OpenBSD: Makefile,v 1.10 2007/05/16 14:22:40 steven Exp $

COMMENT=	"settings management library used by most xfce4 modules"

V=		4.4.1
DISTNAME=	libxfce4mcs-${V}
SHARED_LIBS +=  xfce4mcs-manager     3.5      # .3.5
SHARED_LIBS +=  xfce4mcs-client      3.5      # .3.5

HOMEPAGE=	http://www.xfce.org/
MAINTAINER=	Landry Breuil <gaston@gcu.info>

# LGPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://www.xfce.org/archive/xfce-${V}/src/
EXTRACT_SUFX=	.tar.bz2

LIB_DEPENDS=	startup-notification-1::devel/startup-notification \
		xfce4util.>=1.10::x11/xfce4/libxfce4util
WANTLIB +=	ICE SM X11 Xau Xdmcp glib-2.0 gobject-2.0

.include <bsd.port.mk>
