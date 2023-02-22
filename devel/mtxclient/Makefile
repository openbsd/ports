COMMENT =	client API for Matrix, built on libcurl
CATEGORIES =	devel

SHARED_LIBS +=  matrix_client	1.0

GH_ACCOUNT =	Nheko-Reborn
GH_PROJECT =	mtxclient
GH_TAGNAME =	v0.8.2

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} coeurl crypto m olm ssl

MODULES =	devel/cmake

BUILD_DEPENDS = devel/libevent2 \
		devel/spdlog \
		textproc/nlohmann-json

LIB_DEPENDS =	devel/coeurl \
		devel/olm>=3.2.7

# C++17
COMPILER =	base-clang ports-gcc

CONFIGURE_ARGS +=	-DBUILD_LIB_EXAMPLES=OFF

# XXX stalls on first test;  reenable if we know how to prepare for/run it
CONFIGURE_ARGS +=	-DBUILD_LIB_TESTS=OFF

TEST_IS_INTERACTIVE =	requires local synapse server

.include <bsd.port.mk>
