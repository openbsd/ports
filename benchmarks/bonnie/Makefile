# $OpenBSD: Makefile,v 1.10 2001/06/20 01:43:11 pvalchev Exp $

COMMENT=	"performance test of filesystem I/O"
DISTNAME=       Bonnie
PKGNAME=	bonnie-1.0
CATEGORIES=	benchmarks

MAINTAINER=	Niklas Hallqvist <niklas@openbsd.org>

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
FAKE_FLAGS=		PREFIX=${WRKINST}${PREFIX}

MASTER_SITES=   ftp://ftp.sunet.se/pub/benchmark/Bonnie/ \
		ftp://swedishchef.lerc.nasa.gov/drlabs/io/
EXTRACT_SUFX=   .tar.Z

MAKE_FLAGS=CFLAGS='${CFLAGS} -static'

do-install:
	@${INSTALL_PROGRAM_DIR} ${PREFIX}/bin
	@${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_PROGRAM} ${WRKBUILD}/Bonnie ${PREFIX}/bin/bonnie
	${INSTALL_MAN} ${FILESDIR}/bonnie.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
