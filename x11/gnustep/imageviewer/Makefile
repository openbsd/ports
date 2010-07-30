# $OpenBSD: Makefile,v 1.3 2010/07/30 06:58:58 ajacoutot Exp $

COMMENT=	GNUstep image viewer

DISTNAME=	ImageViewer-0.6.2
PKGNAME=	${DISTNAME:L}
REVISION=	0
CATEGORIES=	graphics

HOMEPAGE=	http://www.nice.ch/~phip/softcorner.html

WANTLIB=	c gnustep-base m objc pthread

MASTER_SITES=	http://www.nice.ch/~phip/

MODULES=	x11/gnustep
LIB_DEPENDS=	gnustep-gui::x11/gnustep/gui
RUN_DEPENDS=	:gnustep-back-*:x11/gnustep/back

WRKDIST=	${WRKDIR}/ImageViewer

.include <bsd.port.mk>
