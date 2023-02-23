COMMENT =	client API for Matrix, built on libcurl
CATEGORIES =	devel

SHARED_LIBS +=  matrix_client	2.0

GH_ACCOUNT =	Nheko-Reborn
GH_PROJECT =	mtxclient
GH_TAGNAME =	v0.9.2

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} coeurl crypto m olm re2 spdlog ssl

MODULES =	devel/cmake

BUILD_DEPENDS = devel/libevent2 \
		textproc/nlohmann-json

LIB_DEPENDS =	devel/coeurl>=0.3.0 \
		devel/olm>=3.2.7 \
		devel/spdlog \
		textproc/re2

# C++20
COMPILER =	base-clang ports-gcc

CONFIGURE_ARGS +=	-DBUILD_LIB_EXAMPLES=OFF

# XXX stalls on first test;  reenable if we know how to prepare for/run it
CONFIGURE_ARGS +=	-DBUILD_LIB_TESTS=OFF

TEST_IS_INTERACTIVE =	requires local synapse server

.include <bsd.port.mk>
