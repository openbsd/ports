# $OpenBSD: Makefile,v 1.25 2016/11/03 10:37:44 landry Exp $

COMMENT=	Xfce4 basic utility library

XFCE_PROJECT=	libxfce4util
XFCE_VERSION=	4.12.1

SHARED_LIBS +=  xfce4util            4.0 #.7.0

HOMEPAGE=	http://www.xfce.org/projects/libraries/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4

CONFIGURE_ARGS=	--disable-linker-opts

LIB_DEPENDS=	devel/glib2
WANTLIB += c glib-2.0 pcre pthread iconv intl

.include <bsd.port.mk>
