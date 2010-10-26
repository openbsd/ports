# $OpenBSD: Makefile,v 1.2 2010/10/26 12:39:57 sebastia Exp $

COMMENT=	a terminal emulator for GNUstep

DISTNAME=	Terminal-0.9.7
REVISION=	0
PKGNAME=	gnustep-${DISTNAME:L}
CATEGORIES=	sysutils

HOMEPAGE=	http://gap.nongnu.org/terminal
MASTER_SITES=	http://savannah.nongnu.org/download/gap/

MODULES=	converters/libiconv x11/gnustep
WANTLIB+=	c m util pthread

.include <bsd.port.mk>
