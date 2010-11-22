# $OpenBSD: Makefile,v 1.13 2010/11/22 08:37:05 espie Exp $

COMMENT=	Xfce4 basic utility library

XFCE_PROJECT=	libxfce4util
REVISION=	0

SHARED_LIBS +=  xfce4util            1.11     # .4.1

HOMEPAGE=	http://www.xfce.org/projects/libraries/

# LGPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4

WANTLIB=	c gthread-2.0 glib-2.0 gobject-2.0 pcre pthread
LIB_DEPENDS=	devel/glib2

.include <bsd.port.mk>
