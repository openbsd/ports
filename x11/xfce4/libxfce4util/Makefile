# $OpenBSD: Makefile,v 1.10 2009/04/28 19:43:06 landry Exp $

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

WANTLIB=	c pcre
LIB_DEPENDS=	glib-2.0.>=1400,gobject-2.0.>=1400::devel/glib2

.include <bsd.port.mk>
