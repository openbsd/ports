COMMENT=	asynchronous resolver library

V=		1.34.9
DISTNAME=	c-ares-${V}
PKGNAME=	libcares-${V}
CATEGORIES=	net devel
SITES=		https://github.com/c-ares/c-ares/releases/download/v${V}/

SHARED_LIBS +=  cares                4.5      # 2.19.7

HOMEPAGE=	https://c-ares.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB+=	pthread

MODULES=	devel/cmake

# C++ in tests
COMPILER=	base-clang ports-gcc

BUILD_DEPENDS+=	devel/gtest

CONFIGURE_ARGS+=-DCARES_BUILD_TESTS=ON \
		-DCARES_BUILD_TOOLS=OFF \
		-DCARES_SYMBOL_HIDING=ON

# XXX octeon C++ test build failure prevents packaging built C library
# ares-test-mock.cc:(.text+0x58): relocation truncated to fit: R_MIPS_*

# everything except tests
ALL_TARGET=	libcares.so

# build whatever is left (37 C++ test files)
pre-test:
	${MODCMAKE_BUILD_TARGET}

.include <bsd.port.mk>
