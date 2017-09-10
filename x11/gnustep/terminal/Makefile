# $OpenBSD: Makefile,v 1.16 2017/09/10 20:26:07 sebastia Exp $

COMMENT=	terminal emulator for GNUstep

DISTNAME=	Terminal-0.9.9
PKGNAME=	gnustep-${DISTNAME:L}
CATEGORIES=	sysutils

HOMEPAGE=	http://gap.nongnu.org/terminal
MASTER_SITES=	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
LIB_DEPENDS =	converters/libiconv

WANTLIB += iconv util
WANTLIB += ${COMPILER_LIBCXX}

.include <bsd.port.mk>
