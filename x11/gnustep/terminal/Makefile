# $OpenBSD: Makefile,v 1.20 2019/10/20 08:03:05 ajacoutot Exp $

COMMENT=	terminal emulator for GNUstep

DISTNAME=	Terminal-0.9.9
PKGNAME=	gnustep-${DISTNAME:L}
REVISION=	3
CATEGORIES=	sysutils

HOMEPAGE=	http://gap.nongnu.org/terminal
MASTER_SITES=	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
LIB_DEPENDS =	converters/libiconv

WANTLIB += iconv util
WANTLIB += ${COMPILER_LIBCXX}

.include <bsd.port.mk>
