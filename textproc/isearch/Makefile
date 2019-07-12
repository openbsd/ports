# $OpenBSD: Makefile,v 1.29 2019/07/12 20:50:00 sthen Exp $

COMMENT=	text search engine by CNIDR

DISTNAME=	Isearch-1.14
PKGNAME=	${DISTNAME:L}
REVISION =	3
CATEGORIES=	textproc databases

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=		c m ${COMPILER_LIBCXX} 

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	ftp://ftp.cnidr.org/pub/software/Isearch/

CONFIGURE_STYLE=	gnu
MAKE_FLAGS=		CC="${CXX}" CFLAGS="${CXXFLAGS} -DUNIX"
FAKE_FLAGS=		INSTALL=${WRKINST}${PREFIX}/bin

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/Isearch
	${INSTALL_DATA} ${WRKSRC}/html/*.html ${PREFIX}/share/doc/Isearch

.include <bsd.port.mk>
