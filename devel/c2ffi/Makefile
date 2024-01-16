COMMENT =	extract FFI definitions from C, C++, and Objective C

DISTNAME =	c2ffi-16.0.0.0

GH_ACCOUNT =	rpav
GH_PROJECT =	c2ffi
GH_COMMIT =	097cbe61ca02dc79ea60859aa056975131a9d985

CATEGORIES =	devel

HOMEPAGE =	https://github.com/rpav/c2ffi

MAINTAINER =	Sebastien Marie <semarie@kapouay.eu.org>

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB +=	${COMPILER_LIBCXX}
WANTLIB +=	llvm${MODCLANG_VERSION}/lib/clang-cpp
WANTLIB +=	c m execinfo z

SITES =		${SITES_GITHUB}

# C++ port
COMPILER =	base-clang ports-gcc base-gcc

MODULES =	devel/cmake \
		lang/clang

# c2ffi has branches for each llvm version, so stick to the targeted one
MODCLANG_VERSION =	16

BUILD_DEPENDS +=	devel/llvm/${MODCLANG_VERSION}
LIB_DEPENDS +=		${MODCLANG_LIB_DEPENDS}

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	cmake
CONFIGURE_ARGS +=	\
	-DClang_DIR=${LOCALBASE}/llvm${MODCLANG_VERSION}/lib/cmake/clang

.include <bsd.port.mk>
