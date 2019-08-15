# $OpenBSD: Makefile,v 1.30 2019/08/15 06:39:16 landry Exp $

COMMENT=	Xfce4 basic utility library

XFCE_PROJECT=	libxfce4util
XFCE_VERSION=	4.14.0

SHARED_LIBS +=  xfce4util            4.1 #.7.0

HOMEPAGE=	https://www.xfce.org/

# LGPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4

CONFIGURE_ARGS=	--disable-linker-opts

LIB_DEPENDS=	devel/glib2
BUILD_DEPENDS += devel/gobject-introspection lang/vala
WANTLIB += c glib-2.0 pcre pthread iconv intl ffi gobject-2.0

.include <bsd.port.mk>
