# $OpenBSD: Makefile,v 1.28 2019/01/08 19:21:52 landry Exp $

COMMENT=	Xfce4 basic utility library

XFCE_PROJECT=	libxfce4util
XFCE_VERSION=	4.12.1
REVISION=	1

PORTROACH=	limitw:1,even

SHARED_LIBS +=  xfce4util            4.0 #.7.0

HOMEPAGE=	https://www.xfce.org/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4

CONFIGURE_ARGS=	--disable-linker-opts

LIB_DEPENDS=	devel/glib2
WANTLIB += c glib-2.0 pcre pthread iconv intl

.include <bsd.port.mk>
