# $OpenBSD: Makefile,v 1.6 1999/04/01 02:16:38 brad Exp $

DISTNAME=	nulib325
PKGNAME=	nulib-3.25
CATEGORIES=	archivers

NO_CDROM=	"NOFEE: Can not sell"

MAINTAINER=     angelos@openbsd.org

MASTER_SITES=	http://www.freebsd.org/~jseger/
EXTRACT_SUFX=	.tar.Z

WRKSRC=		${WRKDIR}/nulib

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nulib ${PREFIX}/bin/nulib
	${INSTALL_MAN} ${WRKSRC}/nulib.1 ${PREFIX}/man/man1/nulib.1

.include <bsd.port.mk>
