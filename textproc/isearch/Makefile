# $OpenBSD: Makefile,v 1.26 2017/07/23 09:26:29 espie Exp $

COMMENT=	text search engine by CNIDR

DISTNAME=	Isearch-1.14
PKGNAME=	${DISTNAME:L}
REVISION =	1
CATEGORIES=	textproc databases

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m ${COMPILER_LIBCXX} 

MASTER_SITES=	ftp://ftp.cnidr.org/pub/software/Isearch/

CONFIGURE_STYLE=	gnu
MAKE_FLAGS=		CC="${CXX}" CFLAGS="${CXXFLAGS} -DUNIX"
FAKE_FLAGS=		INSTALL=${WRKINST}${PREFIX}/bin

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/Isearch
	${INSTALL_DATA} ${WRKSRC}/html/*.html ${PREFIX}/share/doc/Isearch

.include <bsd.port.mk>
