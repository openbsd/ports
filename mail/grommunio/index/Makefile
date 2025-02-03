BROKEN-sparc64 = undefined reference to `std::filesystem::__cxx11::path::*

COMMENT=	FTS indexer for grommunio-web

V=		1.0
DISTNAME=	grommunio-index-${V}

REVISION=	2

GH_ACCOUNT=	grommunio
GH_PROJECT=	grommunio-index
GH_COMMIT=	4e17d7d4227079eb1fdf17e63214d35a6fffbc9e

CATEGORIES=	mail www productivity

MODULES=	devel/cmake

MODCMAKE_LDFLAGS=	-L${LOCALBASE}/lib

# C++
COMPILER=	base-clang ports-gcc

LIB_DEPENDS=	databases/mariadb \
		databases/sqlite3 \
		devel/libHX \
		mail/grommunio/libexmdbpp \
		textproc/libxml

WANTLIB += ${COMPILER_LIBCXX} HX c exmdbpp m mariadb sqlite3 xml2

.include <bsd.port.mk>
