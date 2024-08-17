COMMENT=	FTS indexer for grommunio-web

V=		1.0
DISTNAME=	grommunio-index-${V}

REVISION=	0

GH_ACCOUNT=	grommunio
GH_PROJECT=	grommunio-index
GH_COMMIT=	61c82069e423d79115bf74ab094341d5f1e6e423

CATEGORIES=	mail www productivity

MODULES=	devel/cmake

MODCMAKE_LDFLAGS=	-L${LOCALBASE}/lib

# C++
COMPILER=	base-clang ports-gcc

LIB_DEPENDS=	databases/mariadb \
		databases/sqlite3 \
		devel/libHX \
		mail/grommunio/libexmdbpp

WANTLIB += ${COMPILER_LIBCXX} HX c exmdbpp m mariadb sqlite3

.include <bsd.port.mk>
