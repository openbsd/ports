# $OpenBSD: Makefile,v 1.22 2021/02/28 21:22:22 sthen Exp $

GH_ACCOUNT=		google
GH_PROJECT=		leveldb
GH_TAGNAME=		1.23

COMMENT=		fast key-value storage library
CATEGORIES=		databases devel

SHARED_LIBS=		leveldb	3.0 # 0.0

MAINTAINER=		Ashton Fagg <ashton@fagg.id.au>

# BSD3
PERMIT_PACKAGE=		Yes

WANTLIB=		${COMPILER_LIBCXX} m pthread

# C++11
COMPILER=		base-clang ports-gcc

MODULES=		devel/cmake

CONFIGURE_ARGS+=	-DBUILD_SHARED_LIBS=on \
			-DLEVELDB_INSTALL=on \
			-DLEVELDB_BUILD_TESTS=off \
			-DLEVELDB_BUILD_BENCHMARKS=off

# Tests are broken right now due to googletest weirdness.
NO_TEST=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/leveldb/
	${INSTALL_DATA} ${WRKSRC}/{LICENSE,doc/*.md} \
		${PREFIX}/share/doc/leveldb/

.include <bsd.port.mk>
