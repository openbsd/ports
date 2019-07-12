# $OpenBSD: Makefile,v 1.22 2019/07/12 20:49:06 sthen Exp $

COMMENT=	OTP and S/Key calculator for X

DISTNAME=	otpCalc-0.97
REVISION=	9
CATEGORIES=    	security

HOMEPAGE=	http://www.killa.net/infosec/otpCalc/

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB =  GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo crypto expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 iconv intl m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread
WANTLIB += xcb xcb-render xcb-shm z

MASTER_SITES=	${HOMEPAGE}


CONFIGURE_STYLE=gnu dest

USE_GMAKE=	Yes
ALL_TARGET=	otpCalc otpCalc.1

LIB_DEPENDS=	x11/gtk+2

NO_TEST=	Yes

.include <bsd.port.mk>
