# $OpenBSD: Makefile,v 1.23 2019/07/12 20:49:52 sthen Exp $

COMMENT=	create tcp socket and connect to stdin/out

DISTNAME=	socket-1.2
CATEGORIES=	sysutils net
MASTER_SITES=	https://people.freebsd.org/~wosch/src/

PERMIT_PACKAGE=	Yes

WANTLIB=	c

MAKE_FLAGS=	CC="${CC}" SWITCHES="-DHAVE_SYS_PARAM_H" \
		CFLAGS='$${SWITCHES} ${CFLAGS}'

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/socket ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/socket.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
