# $OpenBSD: Makefile,v 1.3 2019/07/12 20:47:08 sthen Exp $

COMMENT=	lightweight image viewer

DISTNAME=	pho-0.9.8
WRKDIST=	${WRKDIR}/pho
REVISION=	0

CATEGORIES=	graphics x11

HOMEPAGE=	http://www.shallowsky.com/software/pho/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB =  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 c cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0 iconv
WANTLIB += intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread z

MASTER_SITES=	http://www.shallowsky.com/software/pho/

LIB_DEPENDS=	x11/gtk+2

USE_GMAKE=	Yes
NO_TEST=	Yes
ALL_TARGET=	pho

.include <bsd.port.mk>
