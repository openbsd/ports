# $OpenBSD: Makefile,v 1.25 2001/01/19 15:01:09 brad Exp $

DISTNAME=	iozone3_51
PKGNAME=	iozone-3.51
CATEGORIES=	benchmarks
NEED_VERSION=	1.336
MASTER_SITES=	http://www.iozone.org/src/current/
EXTRACT_SUFX=	.tar

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=	threads
FLAVOR?=

.if ${FLAVOR:L} == "threads"
ALL_TARGET=	openbsd-threads
.else
ALL_TARGET=	openbsd
.endif

MAKE_FILE=	makefile

WRKDIST=	${WRKDIR}/src/current

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/iozone ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIR}/docs/iozone.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
