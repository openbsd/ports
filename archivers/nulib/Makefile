# $OpenBSD: Makefile,v 1.7 1999/09/06 17:25:36 brad Exp $

DISTNAME=	nulib325
PKGNAME=	nulib-3.25
CATEGORIES=	archivers
NO_CDROM=	"NOFEE: Can not sell"
MASTER_SITES=	http://www.freebsd.org/~jseger/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=     angelos@openbsd.org

WRKSRC=		${WRKDIR}/nulib

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nulib ${PREFIX}/bin/nulib
	${INSTALL_MAN} ${WRKSRC}/nulib.1 ${PREFIX}/man/man1/nulib.1

.include <bsd.port.mk>
