# $OpenBSD: Makefile,v 1.11 2015/10/26 11:53:15 sebastia Exp $

COMMENT=	terminal emulator for GNUstep

REVISION =	5
DISTNAME=	Terminal-0.9.8
PKGNAME=	gnustep-${DISTNAME:L}
CATEGORIES=	sysutils

HOMEPAGE=	http://gap.nongnu.org/terminal
MASTER_SITES=	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	converters/libiconv x11/gnustep
WANTLIB +=	util ${MODLIBICONV_WANTLIB}

.include <bsd.port.mk>
