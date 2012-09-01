# $OpenBSD: Makefile,v 1.20 2012/09/01 14:37:00 ajacoutot Exp $

COMMENT=	Xfce4 basic utility library

XFCE_PROJECT=	libxfce4util
REVISION=	0

SHARED_LIBS +=  xfce4util            3.0 #.5.1

HOMEPAGE=	http://www.xfce.org/projects/libraries/

# LGPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4

CONFIGURE_ARGS=	--disable-linker-opts

LIB_DEPENDS=	devel/glib2
WANTLIB += c glib-2.0 pcre pthread

.include <bsd.port.mk>
