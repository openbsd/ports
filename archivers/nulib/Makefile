# $OpenBSD: Makefile,v 1.30 2019/07/14 02:16:50 naddy Exp $

COMMENT=	NuFX archiver

DISTNAME=	nulib325
PKGNAME=	nulib-3.25
REVISION=	1
CATEGORIES=	archivers
MASTER_SITES=	https://people.freebsd.org/~jseger/
EXTRACT_SUFX=	.tar.Z

# Restrictive
PERMIT_PACKAGE=		no terms
PERMIT_DISTFILES=	Yes

WANTLIB=	c

MAKE_FLAGS=	CC="${CC}" OPTIMIZE="${CFLAGS}"

NO_TEST=	Yes

WRKDIST=	${WRKDIR}/nulib

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nulib ${PREFIX}/bin/nulib
	${INSTALL_MAN} ${WRKSRC}/nulib.1 ${PREFIX}/man/man1/nulib.1

.include <bsd.port.mk>
