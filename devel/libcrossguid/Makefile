BROKEN-sparc64=	SIBGUS in std::_Hashtable

COMMENT=	minimal and cross platform C++ GUID library

DISTNAME=	libcrossguid-0.2.3.20211002
GH_ACCOUNT=	graeme-hill
GH_PROJECT=	crossguid
GH_COMMIT=	ca1bf4b810e2d188d04cb6286f957008ee1b7681
CATEGORIES=	devel

SHARED_LIBS=	crossguid	0.0

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB=	${COMPILER_LIBCXX} c m

MODULES=	devel/cmake

# C++17
COMPILER=	base-clang ports-gcc

CONFIGURE_ARGS+=-DBUILD_SHARED_LIBS=On

do-test:
	${WRKBUILD}/crossguid-test

.include <bsd.port.mk>
