# $OpenBSD: Makefile,v 1.20 2019/07/12 20:43:53 sthen Exp $

#'atomic_pointer.h: error Please implement AtomicPointer for this platform' on other archs
ONLY_FOR_ARCHS =	i386 amd64

COMMENT =	fast key-value storage library

GH_ACCOUNT =	google
GH_PROJECT =	leveldb
GH_TAGNAME =	v1.20

SHARED_LIBS +=  leveldb                   2.0 # 0.0

CATEGORIES =	databases devel

# BSD3
PERMIT_PACKAGE =	Yes

MAKE_ENV =		CC="${CC}" CXX="${CXX}" OPT="${CXXFLAGS}" \
			SHARED_VERSION_MAJOR=${LIBleveldb_VERSION:R} \
			SHARED_VERSION_MINOR=${LIBleveldb_VERSION:E}

USE_GMAKE =		Yes

TEST_TARGET =		check

DOC =			${PREFIX}/share/doc/leveldb/

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/leveldb
	${INSTALL_DATA} ${WRKSRC}/include/leveldb/* ${PREFIX}/include/leveldb
	${INSTALL_DATA} ${WRKSRC}/out-static/*.a \
		${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/out-shared/libleveldb.so.${LIBleveldb_VERSION} \
		${PREFIX}/lib/libleveldb.so.${LIBleveldb_VERSION}
	${INSTALL_DATA_DIR} ${DOC}
	${INSTALL_DATA} ${WRKSRC}/doc/*.md ${DOC}
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${DOC}

.include <bsd.port.mk>
