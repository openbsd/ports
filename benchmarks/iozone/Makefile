# $OpenBSD: Makefile,v 1.8 1999/08/08 23:05:13 ho Exp $

DISTNAME=	iozone
PKGNAME=	iozone-3.1
CATEGORIES=	benchmarks
MASTER_SITES=	http://www.iozone.org/src/
EXTRACT_SUFX=	.tar

NEED_VERSION=	1.92

MAINTAINER=	niklas@openbsd.org

MAKEFILE=	makefile
ALL_TARGET=	openbsd

WRKSRC=		${WRKDIR}/src

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/iozone ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/iozone.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
