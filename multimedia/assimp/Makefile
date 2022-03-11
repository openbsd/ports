COMMENT =	open asset import library
CATEGORIES =	multimedia

SHARED_LIBS +=	assimp                    1.0 # 5.0

GH_ACCOUNT =	assimp
GH_PROJECT =	assimp
GH_TAGNAME =	v5.0.0
REVISION =	1

HOMEPAGE =	https://www.assimp.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m z

# C++11
COMPILER =	base-clang ports-gcc

# make sure we dont pickup minizip from ports as its not the same
CONFIGURE_ARGS+=-DASSIMP_BUILD_MINIZIP:bool=true
MODULES =	devel/cmake

BUILD_DEPENDS =	devel/boost

NO_TEST =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/assimpTargets-release.cmake.in \
		${WRKSRC}/assimpTargets-debug.cmake.in

.include <bsd.port.mk>
