# $OpenBSD: Makefile,v 1.5 2010/10/24 08:28:50 sebastia Exp $

COMMENT=	GNUstep image viewer

DISTNAME=	ImageViewer-0.6.3
PKGNAME=	${DISTNAME:L}
CATEGORIES=	graphics

HOMEPAGE=	http://freshmeat.net/projects/imageviewer

WANTLIB=	c gnustep-base m objc pthread gnustep-gui

MASTER_SITES=	http://distfiles.nl/

MODULES=	x11/gnustep
LIB_DEPENDS=	::x11/gnustep/gui
RUN_DEPENDS=	:gnustep-back-*:x11/gnustep/back

.include <bsd.port.mk>
