COMMENT =	fast C++ logging library

GH_ACCOUNT =	gabime
GH_PROJECT =	spdlog
GH_TAGNAME =	v1.13.0
CATEGORIES =	devel

SHARED_LIBS =	spdlog	1.1

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =	${COMPILER_LIBCXX} fmt m

MODULES =	devel/cmake

LIB_DEPENDS +=	devel/fmt>=10.2.1

# C++11
COMPILER =	base-clang ports-gcc

CONFIGURE_ARGS+=-DSPDLOG_BUILD_BENCH=OFF \
		-DSPDLOG_BUILD_SHARED=ON \
		-DSPDLOG_FMT_EXTERNAL=ON

NO_TEST =	Yes

.include <bsd.port.mk>
