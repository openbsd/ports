# $OpenBSD: Makefile,v 1.11 2000/03/24 22:11:33 espie Exp $

DISTNAME=	nulib325
PKGNAME=	nulib-3.25
CATEGORIES=	archivers
NEED_VERSION=	1.191
MASTER_SITES=	http://www.freebsd.org/~jseger/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=     angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	"May not sell"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"May not sell"
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=		${WRKDIR}/nulib

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nulib ${PREFIX}/bin/nulib
	${INSTALL_MAN} ${WRKSRC}/nulib.1 ${PREFIX}/man/man1/nulib.1

.include <bsd.port.mk>
