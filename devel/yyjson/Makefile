COMMENT = 		json library written in ANSI C

V =			0.12.0
PKGNAME =		yyjson-${V}
DIST_TUPLE +=		github ibireme yyjson ${V} .

SHARED_LIBS =		yyjson 0.1 # 0.12.0

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		devel/cmake

COMPILER =		base-clang ports-gcc

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON

.include <bsd.port.mk>


