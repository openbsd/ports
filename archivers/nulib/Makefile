# $OpenBSD: Makefile,v 1.29 2018/05/12 09:22:27 espie Exp $

COMMENT=	NuFX archiver

DISTNAME=	nulib325
PKGNAME=	nulib-3.25
REVISION=	1
CATEGORIES=	archivers
MASTER_SITES=	https://people.freebsd.org/~jseger/
EXTRACT_SUFX=	.tar.Z

# Restrictive
PERMIT_PACKAGE_CDROM=	no fee
PERMIT_PACKAGE_FTP=	no terms
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c

MAKE_FLAGS=	CC="${CC}" OPTIMIZE="${CFLAGS}"

NO_TEST=	Yes

WRKDIST=	${WRKDIR}/nulib

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nulib ${PREFIX}/bin/nulib
	${INSTALL_MAN} ${WRKSRC}/nulib.1 ${PREFIX}/man/man1/nulib.1

.include <bsd.port.mk>
