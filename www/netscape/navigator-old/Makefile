# $OpenBSD: Makefile,v 1.4 2000/09/01 04:24:41 brad Exp $

ONLY_FOR_ARCHS=	sparc
NEED_VERSION=	1.322

PROGRAM_V=	4.61
V2:=		${PROGRAM_V:S/.//}

DISTNAME=	navigator-v${V2}-export.sparc-sun-sunos4.1.3_U1
PKGNAME=	navigator-${PROGRAM_V}
LOCATION=	sunos413/navigator_standalone
DIRNAME=	navigator-v${V2}.sparc-sun-sunos4.1.3_U1

FORTIFY=	Fortify-1.4.6-unix-src
DISTFILES=	${DISTNAME}.tar.gz:0 ${FORTIFY}.tar.gz:1

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS} -I. -I../common" \
		LDFLAGS="" YACC="yacc"

.include <bsd.port.mk>
