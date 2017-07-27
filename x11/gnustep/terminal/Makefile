# $OpenBSD: Makefile,v 1.15 2017/07/27 11:01:33 sthen Exp $

COMMENT=	terminal emulator for GNUstep

REVISION =	9
DISTNAME=	Terminal-0.9.8
PKGNAME=	gnustep-${DISTNAME:L}
CATEGORIES=	sysutils

HOMEPAGE=	http://gap.nongnu.org/terminal
MASTER_SITES=	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
LIB_DEPENDS =	converters/libiconv

WANTLIB += iconv util
WANTLIB += ${COMPILER_LIBCXX}

.include <bsd.port.mk>
