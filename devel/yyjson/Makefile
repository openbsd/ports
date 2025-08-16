COMMENT = 		json library written in ANSI C

V =			0.11.1
PKGNAME =		yyjson-${V}
DIST_TUPLE +=		github ibireme yyjson ${V} .
REVISION =		0

SHARED_LIBS =		yyjson 0.0 # 0.11.1

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		devel/cmake

COMPILER =		base-clang ports-gcc

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON

.include <bsd.port.mk>


