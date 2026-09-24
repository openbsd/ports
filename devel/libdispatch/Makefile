COMMENT =	support for concurrent code execution on multicore hardware

PKGNAME =	libdispatch-$V
V =		6.4.0
REVISION =	1

GH_ACCOUNT =	apple
GH_PROJECT =	swift-corelibs-libdispatch
GH_TAGNAME =	swift-$V-RELEASE

SHARED_LIBS +=	BlocksRuntime	0.0
SHARED_LIBS +=	dispatch	0.0

CATEGORIES =	devel

# Apache 2.0
PERMIT_PACKAGE = Yes

# C++11 (gnu++11)
WANTLIB += ${COMPILER_LIBCXX} m

COMPILER =	ports-clang base-gcc

MODULES =	devel/cmake

.include <bsd.port.mk>
