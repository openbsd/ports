# $OpenBSD: Makefile,v 1.40 2005/10/30 00:10:39 fgsch Exp $
# Uses pthreads

COMMENT=	"performance test of sequential file I/O"

DISTNAME=	iozone3_203
PKGNAME=	iozone-3.203
CATEGORIES=	benchmarks
MASTER_SITES=	http://www.iozone.org/src/current/
EXTRACT_SUFX=	.tar

HOMEPAGE=	http://www.iozone.org/

PERMIT_PACKAGE_CDROM=	"incomplete/bad license"
PERMIT_PACKAGE_FTP=	"incomplete/bad license"
PERMIT_DISTFILES_CDROM=	"incomplete/bad license"
PERMIT_DISTFILES_FTP=	"incomplete/bad license"
WANTLIB=		c pthread

MAKE_ENV=	CC="${CC}"

NO_REGRESS=	Yes

ALL_TARGET=	openbsd-threads

MAKE_FILE=	makefile

WRKDIST=	${WRKDIR}/src/current

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/iozone ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIR}/docs/iozone.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
