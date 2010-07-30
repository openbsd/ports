# $OpenBSD: Makefile,v 1.4 2010/07/30 11:29:44 ajacoutot Exp $

COMMENT=	GNUstep image viewer

DISTNAME=	ImageViewer-0.6.2
PKGNAME=	${DISTNAME:L}
REVISION=	1
CATEGORIES=	graphics

HOMEPAGE=	http://www.nice.ch/~phip/softcorner.html

WANTLIB=	c gnustep-base m objc pthread gnustep-gui

MASTER_SITES=	http://www.nice.ch/~phip/

MODULES=	x11/gnustep
LIB_DEPENDS=	::x11/gnustep/gui
RUN_DEPENDS=	:gnustep-back-*:x11/gnustep/back

WRKDIST=	${WRKDIR}/ImageViewer

.include <bsd.port.mk>
