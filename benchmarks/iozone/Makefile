# $OpenBSD: Makefile,v 1.14 2000/02/11 00:37:18 espie Exp $

DISTNAME=	iozone3_9
PKGNAME=	iozone-3.9
CATEGORIES=	benchmarks
MASTER_SITES=	http://www.iozone.org/src/stable/
EXTRACT_SUFX=	.tar
NEED_VERSION=	1.191


MAINTAINER=	brad@openbsd.org

MAKEFILE=	makefile
ALL_TARGET=	openbsd

WRKDIST=		${WRKDIR}/src

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/iozone ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/iozone.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
