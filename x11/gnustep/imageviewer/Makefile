# $OpenBSD: Makefile,v 1.2 2010/07/05 07:52:02 ajacoutot Exp $

COMMENT=	GNUstep image viewer

DISTNAME=	ImageViewer-0.6.2
PKGNAME=	${DISTNAME:L}p0
CATEGORIES=	graphics

HOMEPAGE=	http://www.nice.ch/~phip/softcorner.html

WANTLIB=	c gnustep-base m objc pthread

MASTER_SITES=	http://www.nice.ch/~phip/

MODULES=	x11/gnustep
LIB_DEPENDS=	gnustep-gui::x11/gnustep/gui
RUN_DEPENDS=	:gnustep-back-*:x11/gnustep/back

WRKDIST=	${WRKDIR}/ImageViewer

.include <bsd.port.mk>
