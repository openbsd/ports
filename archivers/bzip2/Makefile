# $OpenBSD: Makefile,v 1.75 2019/06/24 14:46:36 sthen Exp $

COMMENT=	block-sorting file compressor, unencumbered

DISTNAME=	bzip2-1.0.6
REVISION=	10

CATEGORIES=	archivers

HOMEPAGE=	https://gitlab.com/federicomenaquintero/bzip2

SHARED_LIBS=	bz2	10.4

# BSD
PERMIT_PACKAGE_CDROM=	Yes

# uses pledge()
WANTLIB += c

# originally at bzip.org, domain expired
MASTER_SITES=	https://spacehopper.org/mirrors/

BZ2_CFLAGS=	-Wall -Winline -fomit-frame-pointer -fno-strength-reduce
MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS} ${BZ2_CFLAGS}" \
		LIBbz2_VERSION=${LIBbz2_VERSION} PREFIX=${TRUEPREFIX}

TEST_FLAGS=	LD_LIBRARY_PATH="${WRKBUILD}" LIBbz2_VERSION=${LIBbz2_VERSION}
TEST_TARGET=	test

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bzip2
	${INSTALL_DATA} ${WRKBUILD}/manual.html ${PREFIX}/share/doc/bzip2

.include <bsd.port.mk>
