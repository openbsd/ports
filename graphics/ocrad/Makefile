# $OpenBSD: Makefile,v 1.17 2018/10/24 14:28:06 sthen Exp $

COMMENT=	OCR program for pnm files

DISTNAME=	ocrad-0.26
REVISION=	0

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

post-install:
	${INSTALL_MAN} ${WRKBUILD}/doc/ocrad.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocrad
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/ocrad
	rm ${PREFIX}/include/ocradlib.h ${PREFIX}/lib/libocrad.a

.include <bsd.port.mk>
