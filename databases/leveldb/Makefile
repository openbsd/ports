# $OpenBSD: Makefile,v 1.2 2011/10/22 18:10:32 ajacoutot Exp $

BROKEN-powerpc=	atomic_pointer.h: error Please implement AtomicPointer for this platform

COMMENT=	fast and lightweight key/value database library

# svn rev 48, use a small version to allow seemless updating when the
# project releases a tarball.
DISTNAME=	leveldb-0.0.48
SHARED_LIBS=	leveldb 0.0
CATEGORIES=	databases

HOMEPAGE=	http://leveldb.googlecode.com/

# BSD3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://distfiles.nl/

WANTLIB += m stdc++

USE_GMAKE=	Yes
MAKE_ENV+=	CC=c++ OPT="${CXXFLAGS}" \
		SONAME_MAJOR=${LIBleveldb_VERSION:R} \
		SONAME_MINOR=${LIBleveldb_VERSION:E}

REGRESS_TARGET= check

DOC=		${PREFIX}/share/doc/leveldb/

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/libleveldb.{a,so.${LIBleveldb_VERSION}} \
		${PREFIX}/lib/
	${INSTALL_DATA_DIR} ${DOC}
	cd ${WRKSRC}/doc/ && tar cf - . | tar xf - -C ${DOC}

.include <bsd.port.mk>
