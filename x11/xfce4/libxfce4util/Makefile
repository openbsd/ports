# $OpenBSD: Makefile,v 1.14 2011/01/18 20:12:59 landry Exp $

COMMENT=	Xfce4 basic utility library

XFCE_PROJECT=	libxfce4util
XFCE_VERSION =	4.8.1

SHARED_LIBS +=  xfce4util            2.0 #.5.1

HOMEPAGE=	http://www.xfce.org/projects/libraries/

# LGPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4

CONFIGURE_ARGS=	--disable-linker-opts
WANTLIB=	c gthread-2.0 glib-2.0 gobject-2.0 pcre pthread
LIB_DEPENDS=	devel/glib2

.include <bsd.port.mk>
