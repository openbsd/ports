# $OpenBSD: Makefile,v 1.22 2003/06/04 22:16:22 jolan Exp $

COMMENT=	"NuFX archiver"

DISTNAME=	nulib325
PKGNAME=	nulib-3.25
CATEGORIES=	archivers
MASTER_SITES=	http://people.freebsd.org/~jseger/
EXTRACT_SUFX=	.tar.Z

# Restrictive
PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	"no terms"
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CC="${CC}" OPTIMIZE="${CFLAGS}"

WRKDIST=	${WRKDIR}/nulib

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nulib ${PREFIX}/bin/nulib
	${INSTALL_MAN} ${WRKSRC}/nulib.1 ${PREFIX}/man/man1/nulib.1

NO_REGRESS=	Yes

.include <bsd.port.mk>
