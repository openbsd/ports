# $OpenBSD: Makefile,v 1.6 2001/05/06 04:22:50 lebel Exp $

COMMENT=	"Netscape Communicator WWW browser with 128-bit encryption"

ONLY_FOR_ARCHS=	sparc
NEED_VERSION=	1.402

PROGRAM_V=	4.61
V2:=		${PROGRAM_V:S/.//}

DISTNAME=	communicator-v${V2}-export.sparc-sun-sunos4.1.3_U1
PKGNAME=	communicator-${PROGRAM_V}p1
LOCATION=	sunos413/complete_install
DIRNAME=	communicator-v${V2}.sparc-sun-sunos4.1.3_U1

FORTIFY=	Fortify-1.4.6-unix-src
DISTFILES=	${DISTNAME}.tar.gz:0 ${FORTIFY}.tar.gz:1

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS} -I. -I../common" \
		LDFLAGS="" YACC="yacc"

.include <bsd.port.mk>
