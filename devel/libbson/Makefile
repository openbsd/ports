COMMENT =	BSON utility library

V =		2.1.0
PKGNAME =	libbson-${V}

# libbson is only provided as part of the mongo-c-driver distribution.
# other than libbson have been disabled here.
DIST_TUPLE +=	github mongodb mongo-c-driver ${V} .

SHARED_LIBS +=	bson2                     0.0 # 0.0

CATEGORIES =	devel databases

HOMEPAGE =	https://github.com/mongodb/mongo-c-driver

# Apache-2.0
PERMIT_PACKAGE =	Yes

WANTLIB += m pthread

# uses C++11
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

CONFIGURE_ARGS +=	-DBUILD_TESTING=OFF \
			-DENABLE_EXAMPLES=OFF \
			-DENABLE_ICU=OFF \
			-DENABLE_MONGOC=OFF \
			-DENABLE_TESTS=OFF \
			-DENABLE_UNINSTALL=OFF \
			-DENABLE_ZLIB=OFF \
			-DENABLE_ZSTD=OFF

post-install:
	rm -rf ${PREFIX}/share/mongo-c-driver

.include <bsd.port.mk>
