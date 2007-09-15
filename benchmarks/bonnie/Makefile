# $OpenBSD: Makefile,v 1.14 2007/09/15 21:30:26 simon Exp $

COMMENT=	performance test of filesystem I/O

DISTNAME=	Bonnie
PKGNAME=	bonnie-1.0
CATEGORIES=	benchmarks

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
NO_REGRESS=	Yes

do-build:
	${CC} ${CFLAGS} -o ${WRKBUILD}/bonnie.o -c ${WRKSRC}/Bonnie.c
	cd ${WRKBUILD}; ${CC} -static -o bonnie bonnie.o

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/bin
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_PROGRAM} ${WRKBUILD}/bonnie ${PREFIX}/bin
	${INSTALL_MAN} ${FILESDIR}/bonnie.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
