# $OpenBSD: Makefile,v 1.19 2013/03/11 11:41:32 espie Exp $

COMMENT=	create tcp socket and connect to stdin/out

DISTNAME=	socket-1.1
CATEGORIES=	sysutils net
MASTER_SITES=	http://people.freebsd.org/~wosch/src/

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

MAKE_FLAGS=	CC="${CC}" SWITCHES="-DHAVE_SYS_PARAM_H" \
		CFLAGS='$${SWITCHES} ${CFLAGS}'

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/socket ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/socket.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
