# $OpenBSD: Makefile,v 1.17 2000/03/24 22:11:35 espie Exp $

DISTNAME=	iozone3_9
PKGNAME=	iozone-3.9
CATEGORIES=	benchmarks
NEED_VERSION=	1.210
MASTER_SITES=	http://www.iozone.org/src/stable/
EXTRACT_SUFX=	.tar

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FILE=	makefile
ALL_TARGET=	openbsd

WRKDIST=		${WRKDIR}/src

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/iozone ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/iozone.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
