# $OpenBSD: Makefile,v 1.63 2014/03/19 13:40:59 jasper Exp $

COMMENT=	block-sorting file compressor, unencumbered

VERSION=	1.0.6
DISTNAME=	bzip2-${VERSION}
REVISION=	0
CATEGORIES=	archivers
MASTER_SITES=	${HOMEPAGE}${VERSION}/
SHARED_LIBS=	bz2	10.4

HOMEPAGE=	http://www.bzip.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=	c

BZ2_CFLAGS=	-Wall -Winline -fomit-frame-pointer -fno-strength-reduce

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS} ${BZ2_CFLAGS}" \
		LIBbz2_VERSION=${LIBbz2_VERSION} PREFIX=${TRUEPREFIX}
TEST_FLAGS=	LD_LIBRARY_PATH="${WRKBUILD}" LIBbz2_VERSION=${LIBbz2_VERSION}

TEST_TARGET=	test

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bzip2
	${INSTALL_DATA} ${WRKBUILD}/manual.html ${PREFIX}/share/doc/bzip2

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
MAKE_ENV+=	NO_SHARED_LIBS=Yes
.endif
