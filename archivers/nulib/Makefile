# $OpenBSD: Makefile,v 1.9 2000/02/11 00:37:15 espie Exp $

DISTNAME=	nulib325
PKGNAME=	nulib-3.25
CATEGORIES=	archivers
MASTER_SITES=	http://www.freebsd.org/~jseger/
EXTRACT_SUFX=	.tar.Z

NO_CDROM=	"NOFEE: Can not sell"

MAINTAINER=     angelos@openbsd.org

NEED_VERSION=	1.191
WRKDIST=		${WRKDIR}/nulib

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nulib ${PREFIX}/bin/nulib
	${INSTALL_MAN} ${WRKSRC}/nulib.1 ${PREFIX}/man/man1/nulib.1

.include <bsd.port.mk>
