# $OpenBSD: Makefile,v 1.12 1999/09/20 20:38:13 brad Exp $

DISTNAME=	iozone
PKGNAME=	iozone-3.9
CATEGORIES=	benchmarks
MASTER_SITES=	http://www.iozone.org/src/
EXTRACT_SUFX=	.tar

NEED_VERSION=	1.92

MAINTAINER=	brad@openbsd.org

MAKEFILE=	makefile
ALL_TARGET=	openbsd

WRKSRC=		${WRKDIR}/src

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/iozone ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/iozone.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
