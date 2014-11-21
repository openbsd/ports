# $OpenBSD: Makefile,v 1.10 2014/11/21 18:21:22 sebastia Exp $

COMMENT=	terminal emulator for GNUstep

DISTNAME=	Terminal-0.9.8
REVISION =	4
PKGNAME=	gnustep-${DISTNAME:L}
CATEGORIES=	sysutils

HOMEPAGE=	http://gap.nongnu.org/terminal
MASTER_SITES=	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	converters/libiconv x11/gnustep
WANTLIB +=	util ${MODLIBICONV_WANTLIB}

.include <bsd.port.mk>
