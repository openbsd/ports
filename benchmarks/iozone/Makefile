# $OpenBSD: Makefile,v 1.35 2002/12/29 19:32:37 fgsch Exp $
# Uses pthreads

COMMENT=	"performance test of sequential file I/O"

DISTNAME=	iozone3_83
PKGNAME=	iozone-3.83
CATEGORIES=	benchmarks
MASTER_SITES=	http://www.iozone.org/src/current/
EXTRACT_SUFX=	.tar

HOMEPAGE=	http://www.iozone.org/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV=	CC="${CC}"

NO_REGRESS=	Yes

ALL_TARGET=	openbsd-threads

MAKE_FILE=	makefile

WRKDIST=	${WRKDIR}/src/current

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/iozone ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIR}/docs/iozone.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
