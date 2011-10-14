# $OpenBSD: Makefile,v 1.17 2011/10/14 11:37:24 jasper Exp $

COMMENT=	Xfce4 basic utility library

XFCE_PROJECT=	libxfce4util
XFCE_VERSION =	4.8.2
REVISION =	0

SHARED_LIBS +=  xfce4util            2.0 #.5.1

HOMEPAGE=	http://www.xfce.org/projects/libraries/

# LGPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4

CONFIGURE_ARGS=	--disable-linker-opts
WANTLIB=	c gthread-2.0 glib-2.0 gobject-2.0 pcre pthread 0
LIB_DEPENDS=	devel/glib2

.include <bsd.port.mk>
