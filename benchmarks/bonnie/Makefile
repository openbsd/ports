# $OpenBSD: Makefile,v 1.12 2002/03/21 20:35:43 espie Exp $

COMMENT=	"performance test of filesystem I/O"

DISTNAME=	Bonnie
PKGNAME=	bonnie-1.0
CATEGORIES=	benchmarks
NEED_VERSION=	1.515
MASTER_SITES=	ftp://ftp.sunet.se/pub/benchmark/Bonnie/ \
		ftp://swedishchef.lerc.nasa.gov/drlabs/io/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	Niklas Hallqvist <niklas@openbsd.org>

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent

do-build:
	${CC} ${CFLAGS} -o ${WRKBUILD}/bonnie.o -c ${WRKSRC}/Bonnie.c
	cd ${WRKBUILD}; ${CC} -static -o bonnie bonnie.o

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/bin
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_PROGRAM} ${WRKBUILD}/bonnie ${PREFIX}/bin
	${INSTALL_MAN} ${FILESDIR}/bonnie.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
