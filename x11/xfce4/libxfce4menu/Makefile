# $OpenBSD: Makefile,v 1.5 2010/07/27 12:58:42 landry Exp $

COMMENT=	Xfce4 freedesktop.org compliant menu implementation

XFCE_PROJECT=	libxfce4menu
REVISION=	0

SHARED_LIBS +=  xfce4menu-0.1 0.0

HOMEPAGE=	http://www.xfce.org/projects/libraries/

# LGPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES =	x11/xfce4

LIB_DEPENDS =	::x11/xfce4/libxfce4util
WANTLIB =	glib-2.0 gobject-2.0 gthread-2.0 pcre xfce4util

BUILD_DEPENDS =		::x11/gtk+2
# regress tests needs the menu file provided by xfdesktop
REGRESS_DEPENDS =	::x11/xfce4/xfdesktop

REGRESS_IS_INTERACTIVE =	x11

.include <bsd.port.mk>
