COMMENT =	fast C++ logging library

GH_ACCOUNT =	gabime
GH_PROJECT =	spdlog
GH_TAGNAME =	v1.12.0
CATEGORIES =	devel

SHARED_LIBS =	spdlog	1.0

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =	${COMPILER_LIBCXX} m

MODULES =	devel/cmake

# C++11
COMPILER =	base-clang ports-gcc

CONFIGURE_ARGS+=-DSPDLOG_BUILD_BENCH=OFF \
		-DSPDLOG_BUILD_SHARED=ON

NO_TEST =	Yes

.include <bsd.port.mk>
