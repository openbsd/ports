# $OpenBSD: Makefile,v 1.77 2019/08/21 21:39:38 naddy Exp $

COMMENT=	block-sorting file compressor, unencumbered

DISTNAME=	bzip2-1.0.8

CATEGORIES=	archivers

HOMEPAGE=	https://sourceware.org/bzip2/

SHARED_LIBS=	bz2	10.4

# BSD
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB += c

MASTER_SITES=	https://sourceware.org/pub/bzip2/

BZ2_CFLAGS=	-Wall -Winline -fomit-frame-pointer -fno-strength-reduce
MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS} ${BZ2_CFLAGS}" \
		LIBbz2_VERSION=${LIBbz2_VERSION} PREFIX=${TRUEPREFIX}

TEST_FLAGS=	LD_LIBRARY_PATH="${WRKBUILD}" LIBbz2_VERSION=${LIBbz2_VERSION}
TEST_TARGET=	test

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bzip2
	${INSTALL_DATA} ${WRKBUILD}/manual.html ${PREFIX}/share/doc/bzip2

.include <bsd.port.mk>
