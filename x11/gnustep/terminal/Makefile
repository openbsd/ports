# $OpenBSD: Makefile,v 1.13 2016/06/03 11:57:58 sebastia Exp $

COMMENT=	terminal emulator for GNUstep

REVISION =	7
DISTNAME=	Terminal-0.9.8
PKGNAME=	gnustep-${DISTNAME:L}
CATEGORIES=	sysutils

HOMEPAGE=	http://gap.nongnu.org/terminal
MASTER_SITES=	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	converters/libiconv x11/gnustep
WANTLIB +=	util ${MODLIBICONV_WANTLIB}

.include <bsd.port.mk>
