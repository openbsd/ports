# $OpenBSD: Makefile,v 1.8 2013/10/19 13:25:05 sebastia Exp $

COMMENT=	a terminal emulator for GNUstep

DISTNAME=	Terminal-0.9.8
REVISION =	2
PKGNAME=	gnustep-${DISTNAME:L}
CATEGORIES=	sysutils

HOMEPAGE=	http://gap.nongnu.org/terminal
MASTER_SITES=	${MASTER_SITE_SAVANNAH:=gap/}

MODULES=	converters/libiconv x11/gnustep
WANTLIB+=	c m util pthread

.include <bsd.port.mk>
