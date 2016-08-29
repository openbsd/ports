# $OpenBSD: Makefile,v 1.14 2016/08/29 09:11:22 jca Exp $

COMMENT=	terminal emulator for GNUstep

REVISION =	8
DISTNAME=	Terminal-0.9.8
PKGNAME=	gnustep-${DISTNAME:L}
CATEGORIES=	sysutils

HOMEPAGE=	http://gap.nongnu.org/terminal
MASTER_SITES=	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
LIB_DEPENDS =	converters/libiconv

WANTLIB += iconv util

.include <bsd.port.mk>
