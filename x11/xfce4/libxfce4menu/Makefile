# $OpenBSD: Makefile,v 1.2 2009/04/09 07:44:37 landry Exp $

COMMENT=	freedesktop.org compliant menu implementation for Xfce4

XFCE_PROJECT=	libxfce4menu
PKGNAME=	${DISTNAME}p0

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

BUILD_DEPENDS =		::x11/gtk+2
# regress tests needs the menu file provided by xfdesktop
REGRESS_DEPENDS =	::x11/xfce4/xfdesktop

# The regression tests require a running instance of X.
# You will also need to set the XAUTHORITY environment variable to point 
# to the appropriate .Xauthority file.

REGRESS_IS_INTERACTIVE =	Yes
REGRESS_FLAGS =			DISPLAY=${DISPLAY} XAUTHORITY=${XAUTHORITY}

.include <bsd.port.mk>
