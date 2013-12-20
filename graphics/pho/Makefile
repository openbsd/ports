# $OpenBSD: Makefile,v 1.1.1.1 2013/12/20 19:36:52 ajacoutot Exp $

COMMENT=	lightweight image viewer

DISTNAME=	pho-0.9.8
WRKDIST=	${WRKDIR}/pho

CATEGORIES=	graphics x11

HOMEPAGE=	http://www.shallowsky.com/software/pho/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pthread z

MASTER_SITES=	http://www.shallowsky.com/software/pho/

MODULES=	devel/gettext

LIB_DEPENDS=	x11/gtk+2

USE_GMAKE=	Yes
NO_TEST=	Yes
ALL_TARGET=	pho

.include <bsd.port.mk>
