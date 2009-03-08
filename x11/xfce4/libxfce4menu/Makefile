# $OpenBSD: Makefile,v 1.1.1.1 2009/03/08 17:05:33 landry Exp $

COMMENT=	freedesktop.org compliant menu implementation for Xfce4

XFCE_PROJECT=	libxfce4menu

SHARED_LIBS +=  xfce4menu-0.1 0.0

HOMEPAGE=	http://www.xfce.org/projects/libraries/

# LGPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES =	x11/xfce4

LIB_DEPENDS =	xfce4util::x11/xfce4/libxfce4util
WANTLIB =	glib-2.0 gobject-2.0 gthread-2.0 pcre

.include <bsd.port.mk>
