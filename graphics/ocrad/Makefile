# $OpenBSD: Makefile,v 1.18 2019/02/18 06:09:30 pamela Exp $

COMMENT=	OCR program for pnm files

DISTNAME=	ocrad-0.27

CATEGORIES=	graphics
EXTRACT_SUFX=	.tar.lz

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	${MASTER_SITE_GNU:=ocrad/}

CONFIGURE_STYLE=simple

MAKE_FLAGS=	CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"
FAKE_FLAGS=	infodir="${PREFIX}/info" \
		mandir="${PREFIX}/man"

TEST_TARGET =	check

post-install:
	${INSTALL_MAN} ${WRKBUILD}/doc/ocrad.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocrad
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/ocrad
	rm ${PREFIX}/include/ocradlib.h ${PREFIX}/lib/libocrad.a

.include <bsd.port.mk>
