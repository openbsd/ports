BROKEN-sparc64 = error libdispatch requires C11 with stdatomic.h

COMMENT =	Grand Central Dispatch

PKGNAME =	libdispatch-$V
V =		5.5
REVISION =	2

GH_ACCOUNT =	apple
GH_PROJECT =	swift-corelibs-libdispatch
GH_TAGNAME =	swift-$V-RELEASE

SHARED_LIBS +=	BlocksRuntime	0.0
SHARED_LIBS +=	dispatch	0.0

CATEGORIES =	devel

# Apache 2.0
PERMIT_PACKAGE =	Yes

# C++11 (gnu++11)
WANTLIB += ${COMPILER_LIBCXX} m

MODULES =		devel/cmake

# evertyhing except tests
ALL_TARGET =		BlocksRuntime dispatch

# build whatever is left (ca. 35 C++ test files)
pre-test:
	@${MODCMAKE_BUILD_TARGET}

.include <bsd.port.mk>
