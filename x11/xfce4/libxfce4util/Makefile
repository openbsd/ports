# $OpenBSD: Makefile,v 1.11 2010/06/05 15:21:25 landry Exp $

COMMENT=	Xfce4 basic utility library

XFCE_PROJECT=	libxfce4util

SHARED_LIBS +=  xfce4util            1.11     # .4.1

HOMEPAGE=	http://www.xfce.org/projects/libraries/

# LGPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4

WANTLIB=	c pcre pthread
LIB_DEPENDS=	gthread-2.0,glib-2.0,gobject-2.0::devel/glib2

.include <bsd.port.mk>
