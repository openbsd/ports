# $OpenBSD: Makefile,v 1.37 2003/09/22 22:53:36 pvalchev Exp $
# Uses pthreads

COMMENT=	"performance test of sequential file I/O"

DISTNAME=	iozone3_185
PKGNAME=	iozone-3.185
CATEGORIES=	benchmarks
MASTER_SITES=	http://www.iozone.org/src/current/
EXTRACT_SUFX=	.tar

HOMEPAGE=	http://www.iozone.org/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	"incomplete/bad license"
PERMIT_PACKAGE_FTP=	"incomplete/bad license"
PERMIT_DISTFILES_CDROM=	"incomplete/bad license"
PERMIT_DISTFILES_FTP=	"incomplete/bad license"

MAKE_ENV=	CC="${CC}"

NO_REGRESS=	Yes

ALL_TARGET=	openbsd-threads

MAKE_FILE=	makefile

WRKDIST=	${WRKDIR}/src/current

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/iozone ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIR}/docs/iozone.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
