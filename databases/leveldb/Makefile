# $OpenBSD: Makefile,v 1.7 2012/08/21 00:28:34 jmatthew Exp $

#'atomic_pointer.h: error Please implement AtomicPointer for this platform' on other archs
ONLY_FOR_ARCHS=	i386 amd64 arm

COMMENT=	fast and lightweight key/value database library

DISTNAME=	leveldb-1.5.0
SHARED_LIBS=	leveldb 1.0
CATEGORIES=	databases

HOMEPAGE=	http://leveldb.googlecode.com/

# BSD3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://leveldb.googlecode.com/files/

WANTLIB += m stdc++

USE_GMAKE=	Yes
MAKE_ENV+=	CC=c++ OPT="${CXXFLAGS}" \
		SHARED_MAJOR=${LIBleveldb_VERSION:R} \
		SHARED_MINOR=${LIBleveldb_VERSION:E}

REGRESS_TARGET= check

DOC=		${PREFIX}/share/doc/leveldb/

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/libleveldb.{a,so.${LIBleveldb_VERSION}} \
		${PREFIX}/lib/
	${INSTALL_DATA_DIR} ${DOC}
	cd ${WRKSRC}/doc/ && tar cf - . | tar xf - -C ${DOC}
	${INSTALL_DATA_DIR} ${PREFIX}/include/leveldb/
	cd ${WRKSRC}/include/ && tar cf - . | tar xf - -C ${PREFIX}/include/

.include <bsd.port.mk>
