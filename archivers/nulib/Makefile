# $OpenBSD: Makefile,v 1.16 2001/03/29 15:01:58 brad Exp $

COMMENT=	"NuFX archiver"

DISTNAME=	nulib325
PKGNAME=	nulib-3.25
CATEGORIES=	archivers
NEED_VERSION=	1.364
MASTER_SITES=	http://people.freebsd.org/~jseger/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=     Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	"May not sell"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"May not sell"
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CC="${CC}" OPTIMIZE="${CFLAGS}"

WRKDIST=	${WRKDIR}/nulib

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nulib ${PREFIX}/bin/nulib
	${INSTALL_MAN} ${WRKSRC}/nulib.1 ${PREFIX}/man/man1/nulib.1

.include <bsd.port.mk>
