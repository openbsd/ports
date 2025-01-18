COMMENT =	columnar format and toolbox for fast-data interchange

V =		18.1.0
DISTNAME =	apache-arrow-${V}
PKGNAME =	arrow-cpp-${V}

SHARED_LIBS +=	arrow		1.0 # 0.0
SHARED_LIBS +=	arrow_acero	0.0
SHARED_LIBS +=	arrow_dataset	0.0
#SHARED_LIBS +=	arrow_testing	0.0
SHARED_LIBS +=	parquet		0.0

DIST_TUPLE +=	github apache parquet-testing cb7a9674142c137367bf75a01b79c6e214a73199 cpp/submodules/parquet-testing
DIST_TUPLE +=	github apache arrow-testing 4d209492d514c2d3cb2d392681b9aa00e6d8da1c testing

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
		-DARROW_WITH_SNAPPY=ON \
		-DARROW_WITH_UTF8PROC=OFF \
		-DARROW_WITH_RE2=OFF \
		-DARROW_JEMALLOC=OFF

# building tests requires building the static libs
#CONFIGURE_ARGS +=-DARROW_BUILD_TESTS=ON
CONFIGURE_ARGS += -DARROW_BUILD_STATIC=OFF

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
WANTLIB +=	${COMPILER_LIBCXX} c crypto m snappy ssl thrift

.include <bsd.port.mk>
