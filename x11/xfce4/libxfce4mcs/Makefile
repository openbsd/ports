# $OpenBSD: Makefile,v 1.16 2008/11/06 15:34:46 landry Exp $

COMMENT=	settings management library used by most xfce4 modules

XFCE_PROJECT=	libxfce4mcs

SHARED_LIBS=	xfce4mcs-manager	3.5 \
		xfce4mcs-client		3.5 # .3.5

HOMEPAGE=	http://www.xfce.org/projects/libraries/

# LGPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4

LIB_DEPENDS=	startup-notification-1::devel/startup-notification \
		xfce4util.>=1::x11/xfce4/libxfce4util
WANTLIB=	ICE SM X11 Xau Xdmcp glib-2.0 gobject-2.0 pcre

.include <bsd.port.mk>
