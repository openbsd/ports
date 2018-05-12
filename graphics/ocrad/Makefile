# $OpenBSD: Makefile,v 1.15 2018/05/12 13:47:14 solene Exp $

COMMENT=	OCR program for pnm files

DISTNAME=	ocrad-0.26

CATEGORIES=	graphics
EXTRACT_SUFX=	.tar.lz

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m ${COMPILER_LIBCXX}

MASTER_SITES=	${MASTER_SITE_GNU:=ocrad/}

CONFIGURE_STYLE=gnu

MAKE_FLAGS=	CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"

post-install:
	${INSTALL_MAN} ${WRKBUILD}/doc/ocrad.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocrad
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/ocrad
	rm ${PREFIX}/include/ocradlib.h ${PREFIX}/lib/libocrad.a

.include <bsd.port.mk>
