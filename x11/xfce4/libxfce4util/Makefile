# $OpenBSD: Makefile,v 1.8 2008/11/06 15:34:46 landry Exp $

COMMENT=	basic utility library for xfce4

XFCE_PROJECT=	libxfce4util

SHARED_LIBS +=  xfce4util            1.10     # .4.2

HOMEPAGE=	http://www.xfce.org/projects/libraries/

# LGPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4

WANTLIB=	c pcre
LIB_DEPENDS=	glib-2.0.>=1400,gobject-2.0.>=1400::devel/glib2

CONFIGURE_ARGS+=--disable-gtk-doc

.include <bsd.port.mk>
