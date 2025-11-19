COMMENT=		alternative formatting library for C and C++

GH_ACCOUNT=		fmtlib
GH_PROJECT=		fmt
GH_TAGNAME=		11.2.0

SHARED_LIBS=		fmt	2.1

CATEGORIES=		devel

# MIT
PERMIT_PACKAGE=	Yes

# C++11
COMPILER=		base-clang ports-gcc

MODULES=		devel/cmake

WANTLIB+=		${COMPILER_LIBCXX} m

CONFIGURE_ARGS+=	-DBUILD_SHARED_LIBS=on

.include <bsd.port.mk>
