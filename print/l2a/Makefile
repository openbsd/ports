# $OpenBSD: Makefile,v 1.12 2019/07/12 20:48:55 sthen Exp $

COMMENT=		filter for removing (La)TeX markup

DISTNAME=		l2a-1.2
REVISION=		0
CATEGORIES=     	print

PERMIT_PACKAGE=	Yes
WANTLIB=		c

MASTER_SITES=		http://monkey.org/~jose/openbsd/ports/

MAKE_FLAGS=		CC='${CC}' OBJ=l2a.o EXE=l2a LLL=-ll

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/l2a ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/l2a.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
