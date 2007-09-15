# $OpenBSD: Makefile,v 1.19 2007/09/15 20:59:38 merdely Exp $

COMMENT=	text search engine by CNIDR

#BROKEN=		C++ syntax errors, index.cxx:533: ANSI C++ forbids declaration PhraseLength with no type

DISTNAME=	Isearch-1.14
PKGNAME=	${DISTNAME:L}
CATEGORIES=	textproc databases

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m stdc++ 

MASTER_SITES=	ftp://ftp.cnidr.org/pub/software/Isearch/

CONFIGURE_STYLE=	gnu
MAKE_FLAGS=		CC="${CXX}" CFLAGS="${CXXFLAGS} -DUNIX"
FAKE_FLAGS=		INSTALL=${WRKINST}${PREFIX}/bin

NO_REGRESS=	Yes

post-install:
	strip ${PREFIX}/bin/Isearch
	strip ${PREFIX}/bin/Iindex
	strip ${PREFIX}/bin/Iutil
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/Isearch
	${INSTALL_DATA} ${WRKSRC}/html/*.html ${PREFIX}/share/doc/Isearch

.include <bsd.port.mk>
