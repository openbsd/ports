# $OpenBSD: Makefile,v 1.21 2020/08/16 20:35:21 sebastia Exp $

COMMENT=	terminal emulator for GNUstep

DISTNAME=	Terminal-0.9.9
PKGNAME=	gnustep-${DISTNAME:L}
REVISION=	4
CATEGORIES=	sysutils

HOMEPAGE=	http://gap.nongnu.org/terminal
MASTER_SITES=	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
LIB_DEPENDS =	converters/libiconv

WANTLIB += iconv util
WANTLIB += ${COMPILER_LIBCXX}

.include <bsd.port.mk>
