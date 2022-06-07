COMMENT=		alternative formatting library for C and C++

GH_ACCOUNT=		fmtlib
GH_PROJECT=		fmt
GH_TAGNAME=		8.1.1

SHARED_LIBS=		fmt	1.1

CATEGORIES=		devel

# MIT
PERMIT_PACKAGE=	Yes

# C++11
COMPILER=		base-clang ports-gcc
MODULES=		devel/cmake
WANTLIB+=		${COMPILER_LIBCXX}


CONFIGURE_ARGS+=	-DBUILD_SHARED_LIBS=on

# Fix undefined references to pthread_* symbols on clang+ld.bfd archs by
# disabling -Wl,--as-needed.
.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mlld} && ${PROPERTIES:Mclang}
CONFIGURE_ARGS+=	-DAS_NEEDED=off
.endif

.include <bsd.port.mk>
