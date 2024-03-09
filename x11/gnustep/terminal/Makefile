COMMENT=	terminal emulator for GNUstep

DISTNAME=	Terminal-0.9.9
PKGNAME=	gnustep-${DISTNAME:L}
REVISION=	7
CATEGORIES=	sysutils

HOMEPAGE=	http://gap.nongnu.org/terminal
SITES=	${SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
LIB_DEPENDS =	converters/libiconv

WANTLIB += iconv util
WANTLIB += ${COMPILER_LIBCXX}

.include <bsd.port.mk>
