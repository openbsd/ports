BROKEN-sparc64 = undefined reference to `std::filesystem::__cxx11::path::*

COMMENT=	FTS indexer for grommunio-web

V=		1.6
DISTNAME=	grommunio-index-${V}

GH_ACCOUNT=	grommunio
GH_PROJECT=	grommunio-index
GH_COMMIT=	cc521317642ac9c36fe85d1c3079b1a4386a36a6

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
