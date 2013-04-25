# $OpenBSD: Makefile,v 1.7 2013/04/25 16:40:11 sebastia Exp $

COMMENT=	a terminal emulator for GNUstep

DISTNAME=	Terminal-0.9.8
REVISION =	1
PKGNAME=	gnustep-${DISTNAME:L}
CATEGORIES=	sysutils

HOMEPAGE=	http://gap.nongnu.org/terminal
MASTER_SITES=	${MASTER_SITE_SAVANNAH:=gap/}

MODULES=	converters/libiconv x11/gnustep
WANTLIB+=	c m util pthread

.include <bsd.port.mk>
