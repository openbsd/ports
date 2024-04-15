COMMENT=	FTS indexer for grommunio-web

V=		1.0
DISTNAME=	grommunio-index-${V}

GH_ACCOUNT=	grommunio
GH_PROJECT=	grommunio-index
GH_COMMIT=	b782c514b8d2a754d11b62ea01b5028db6e6b6e8

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
