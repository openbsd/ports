# $OpenBSD: Makefile,v 1.23 2013/05/31 19:16:16 landry Exp $

COMMENT=	Xfce4 basic utility library

XFCE_PROJECT=	libxfce4util

SHARED_LIBS +=  xfce4util            3.0 #.5.1

HOMEPAGE=	http://www.xfce.org/projects/libraries/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4

CONFIGURE_ARGS=	--disable-linker-opts

LIB_DEPENDS=	devel/glib2
WANTLIB += c glib-2.0 pcre pthread

.include <bsd.port.mk>
