# $OpenBSD: Makefile,v 1.10 2013/03/11 11:37:54 espie Exp $

COMMENT=		filter for removing (La)TeX markup

DISTNAME=		l2a-1.2
CATEGORIES=     	print

PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

MASTER_SITES=		http://monkey.org/~jose/openbsd/ports/

MAKE_FLAGS=		CC='${CC}' OBJ=l2a.o EXE=l2a LLL=-ll

USE_GROFF =		Yes
NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/l2a ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/l2a.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
