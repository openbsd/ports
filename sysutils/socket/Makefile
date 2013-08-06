# $OpenBSD: Makefile,v 1.20 2013/08/06 18:43:15 naddy Exp $

COMMENT=	create tcp socket and connect to stdin/out

DISTNAME=	socket-1.1
CATEGORIES=	sysutils net
MASTER_SITES=	https://people.freebsd.org/~wosch/src/

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

MAKE_FLAGS=	CC="${CC}" SWITCHES="-DHAVE_SYS_PARAM_H" \
		CFLAGS='$${SWITCHES} ${CFLAGS}'

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/socket ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/socket.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
