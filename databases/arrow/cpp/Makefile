COMMENT =	columnar format and toolbox for fast-data interchange

V =		24.0.0
DISTNAME =	apache-arrow-${V}
PKGNAME =	arrow-cpp-${V}

SHARED_LIBS +=	arrow		2.0 # 0.0
SHARED_LIBS +=	arrow_acero	1.0
SHARED_LIBS +=	arrow_compute	0.0
SHARED_LIBS +=	arrow_dataset	1.0
SHARED_LIBS +=	parquet		1.0

DIST_TUPLE +=	github apache parquet-testing e74785d85a4ecee829e1e405444d6a1b24b8bc9c cpp/submodules/parquet-testing
DIST_TUPLE +=	github apache arrow-testing 249079a810caedda6898464003c7ef8a47efeeae testing

CATEGORIES=	databases

HOMEPAGE=	https://arrow.apache.org

# APACHE 2.0
PERMIT_PACKAGE=	Yes

# C++11
COMPILER =	base-clang ports-gcc
SITES =		https://dlcdn.apache.org/arrow/arrow-${V}/
MODULES =	devel/cmake

WRKSRC=		${WRKDIST}/cpp

# first two simd options removes the need for xsimd dep
CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON \
		-DARROW_SIMD_LEVEL=NONE \
		-DARROW_RUNTIME_SIMD_LEVEL=NONE \
		-DARROW_DATASET=ON \
		-DARROW_PARQUET=ON \
		-DARROW_CSV=ON \
		-DARROW_JSON=ON \
		-DARROW_BUILD_UTILITIES=ON \
		-DARROW_BUILD_STATIC=OFF \
		-DARROW_WITH_SNAPPY=ON \
		-DARROW_WITH_UTF8PROC=OFF \
		-DARROW_WITH_RE2=OFF \
		-DARROW_MIMALLOC=OFF \
		-DARROW_JEMALLOC=OFF

# fix build failures with rapidjson headers
CONFIGURE_ENV +=CXXFLAGS="-I${LOCALBASE}/include"
BUILD_DEPENDS +=textproc/rapidjson \
		devel/gflags
# arrow json headers include rapidjson headers
RUN_DEPENDS =	textproc/rapidjson

# boost and gtest libs are only used by arrow_testing lib, which is @comment'ed
# in the PLIST
BUILD_DEPENDS +=devel/boost \
		devel/gtest

TEST_ENV +=	ARROW_TEST_DATA=${WRKDIST}/testing/data \
		PARQUET_TEST_DATA=${WRKSRC}/submodules/parquet-testing/data

LIB_DEPENDS =	devel/thrift \
		archivers/snappy
WANTLIB +=	${COMPILER_LIBCXX} c crypto m snappy ssl thrift z

# uncomment to run tests
# SHARED_LIBS +=	arrow_testing	0.0
# CONFIGURE_ARGS +=	-DARROW_BUILD_TESTS=ON
# LIB_DEPENDS +=	devel/boost,-md \
# 		devel/gtest
# WANTLIB += boost_atomic-mt boost_context-mt boost_date_time-mt
# WANTLIB += boost_filesystem-mt boost_process-mt gmock gtest
# no way to set the timeout via env vars, defaults to 10000000
# arrow-utility-test.txt timeouts
do-test:
	@${MODCMAKE_TEST_TARGET} --timeout 180

.include <bsd.port.mk>
