# $OpenBSD: Makefile,v 1.15 2000/02/22 17:08:36 espie Exp $

DISTNAME=	iozone3_9
PKGNAME=	iozone-3.9
CATEGORIES=	benchmarks
MASTER_SITES=	http://www.iozone.org/src/stable/
EXTRACT_SUFX=	.tar
NEED_VERSION=	1.210


MAINTAINER=	brad@openbsd.org

MAKE_FILE=	makefile
ALL_TARGET=	openbsd

WRKDIST=		${WRKDIR}/src

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/iozone ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/iozone.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
