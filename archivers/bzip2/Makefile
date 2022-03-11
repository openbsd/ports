COMMENT=	block-sorting file compressor, unencumbered

DISTNAME=	bzip2-1.0.8
REVISION=	0

CATEGORIES=	archivers

HOMEPAGE=	https://sourceware.org/bzip2/

SHARED_LIBS=	bz2	10.4

# BSD
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB += c

MASTER_SITES=	https://sourceware.org/pub/bzip2/

BZ2_CFLAGS=	-Wall -Winline -fomit-frame-pointer
MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS} ${BZ2_CFLAGS}" \
		LIBbz2_VERSION=${LIBbz2_VERSION} PREFIX=${TRUEPREFIX}

DEBUG_PACKAGES=	${BUILD_PACKAGES}

TEST_FLAGS=	LD_LIBRARY_PATH="${WRKBUILD}" LIBbz2_VERSION=${LIBbz2_VERSION}
TEST_TARGET=	test

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bzip2
	${INSTALL_DATA} ${WRKBUILD}/manual.html ${PREFIX}/share/doc/bzip2

.include <bsd.port.mk>
