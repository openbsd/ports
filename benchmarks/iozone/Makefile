# $OpenBSD: Makefile,v 1.21 2000/09/24 07:04:02 brad Exp $

DISTNAME=	iozone3_24
PKGNAME=	iozone-3.24
CATEGORIES=	benchmarks
NEED_VERSION=	1.330
MASTER_SITES=	http://www.iozone.org/src/current/
EXTRACT_SUFX=	.tar

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=	Yes

MAKE_FILE=	makefile
ALL_TARGET=	openbsd

WRKDIST=	${WRKDIR}/src/current

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/iozone ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/iozone.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
