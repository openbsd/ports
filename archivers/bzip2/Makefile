# $OpenBSD: Makefile,v 1.50 2005/05/16 23:00:59 naddy Exp $

COMMENT=	"block-sorting file compressor, unencumbered"

VERSION=	1.0.3
DISTNAME=	bzip2-${VERSION}
CATEGORIES=	archivers
MASTER_SITES=	${HOMEPAGE}${VERSION}/

HOMEPAGE=	http://www.bzip.org/

MAINTAINER=	Brad Smith <brad@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	c

BZ2_CFLAGS=	-Wall -Winline
.if ${MACHINE_ARCH} != "m68k"
BZ2_CFLAGS+=	-fomit-frame-pointer -fno-strength-reduce
.endif

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS} ${BZ2_CFLAGS}"
FAKE_FLAGS=	${MAKE_FLAGS} PREFIX="${PREFIX}" DESTDIR="${WRKINST}"
REGRESS_FLAGS=	LD_LIBRARY_PATH="${WRKBUILD}"

REGRESS_TARGET=	test

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bzip2
	${INSTALL_DATA} ${WRKBUILD}/manual.html ${PREFIX}/share/doc/bzip2

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
MAKE_ENV+=	NO_SHARED_LIBS=Yes
.endif
