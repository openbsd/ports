# $OpenBSD: Makefile,v 1.11 2001/08/30 02:05:14 brad Exp $

COMMENT=	"performance test of filesystem I/O"

DISTNAME=	Bonnie
PKGNAME=	bonnie-1.0
CATEGORIES=	benchmarks
NEED_VERSION=	1.435
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
