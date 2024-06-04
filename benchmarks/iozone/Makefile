COMMENT=	performance test of sequential file I/O

V =		3.494
DISTNAME=	iozone${V:S/./_/}
PKGNAME=	iozone-$V
CATEGORIES=	benchmarks
SITES=		https://www.iozone.org/src/stable/ \
		https://www.iozone.org/src/current/
# some versions .tar, others .tgz
#EXTRACT_SUFX=	.tar
EXTRACT_SUFX=	.tgz

HOMEPAGE=	https://www.iozone.org/

# in a string in iozone.c, printed with iozone -v
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

NO_TEST=	Yes

ALL_TARGET=	openbsd-threads

MAKE_FILE=	makefile
CFLAGS+=	-Wno-deprecated-non-prototype
MAKE_FLAGS=	CFLAGS="${CFLAGS}" CC="${CC}"

WRKSRC=		${WRKDIST}/src/current

DEBUG_PACKAGES= ${BUILD_PACKAGES}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/iozone ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIST}/docs/iozone.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
