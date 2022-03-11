COMMENT=	performance test of sequential file I/O

V =		3.490
DISTNAME=	iozone${V:S/./_/}
PKGNAME=	iozone-$V
CATEGORIES=	benchmarks
MASTER_SITES=	http://www.iozone.org/src/current/
EXTRACT_SUFX=	.tar

HOMEPAGE=	http://www.iozone.org/

PERMIT_PACKAGE=		incomplete/bad license
PERMIT_DISTFILES=	incomplete/bad license

WANTLIB += c pthread

NO_TEST=	Yes

ALL_TARGET=	openbsd-threads

MAKE_FILE=	makefile
MAKE_FLAGS=	CFLAGS="${CFLAGS}" CC="${CC}"

WRKSRC=		${WRKDIST}/src/current

DEBUG_PACKAGES= ${BUILD_PACKAGES}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/iozone ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIST}/docs/iozone.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
