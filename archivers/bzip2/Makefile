# $OpenBSD: Makefile,v 1.44 2002/12/29 15:15:18 fgsch Exp $

COMMENT=	"block-sorting file compressor, unencumbered"

DISTNAME=	bzip2-1.0.2
CATEGORIES=	archivers
MASTER_SITES=	${MASTER_SITE_SOURCEWARE:=bzip2/v102/}

HOMEPAGE=	http://sources.redhat.com/bzip2/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BZ2_CFLAGS=	-Wall -Winline
.if ${MACHINE_ARCH} != "sparc64" && ${MACHINE_ARCH} != "m68k"
BZ2_CFLAGS+=	-fomit-frame-pointer -fno-strength-reduce
.endif

# XXX GCC optimization bug temporary workaround
.if ${MACHINE_ARCH:Msparc64}
BZ2_CFLAGS+=	-O0
.endif

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS} ${BZ2_CFLAGS}"
FAKE_FLAGS=	${MAKE_FLAGS} PREFIX="${PREFIX}" DESTDIR="${WRKINST}"
REGRESS_FLAGS=	LD_LIBRARY_PATH="${WRKBUILD}"

REGRESS_TARGET=	test

post-install:
	@cd ${WRKBUILD} && makeinfo --no-split manual.texi
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bzip2
	${INSTALL_DATA} ${WRKBUILD}/*.html ${PREFIX}/share/doc/bzip2
	${INSTALL_DATA} ${WRKBUILD}/bzip2.info ${PREFIX}/info

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
MAKE_ENV+=	NO_SHARED_LIBS=Yes
.endif
