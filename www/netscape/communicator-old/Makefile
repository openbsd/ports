# $OpenBSD: Makefile,v 1.8 2002/03/21 21:25:54 espie Exp $

COMMENT=	"Netscape Communicator"

NEED_VERSION=	1.515

PROGRAM_V=	4.61
V2:=		${PROGRAM_V:S/.//}
EMUL_TYPE=	sunos

DISTNAME=	communicator-v${V2}-export.sparc-sun-sunos4.1.3_U1
PKGNAME=	communicator-${PROGRAM_V}p1
LOCATION=	sunos413/complete_install
DIRNAME=	communicator-v${V2}.sparc-sun-sunos4.1.3_U1

FORTIFY=	Fortify-1.4.6-unix-src
DISTFILES=	${DISTNAME}.tar.gz:0 ${FORTIFY}.tar.gz:1

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS} -I. -I../common" \
		LDFLAGS="" YACC="yacc"

.include <bsd.port.mk>
