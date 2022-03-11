COMMENT =	C++ library to parse/format/validate phone numbers

GH_ACCOUNT =	google
GH_PROJECT =	libphonenumber
GH_TAGNAME =	v8.12.28

SHARED_LIBS +=  geocoding                 0.0 # 8.12
SHARED_LIBS +=  phonenumber               0.0 # 8.12

CATEGORIES =	productivity devel

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} boost_atomic-mt boost_chrono-mt
WANTLIB += boost_date_time-mt boost_system-mt boost_thread-mt
WANTLIB += icui18n icuuc m protobuf

MODULES =		devel/cmake

COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		devel/gtest

LIB_DEPENDS =		devel/boost \
			devel/protobuf \
			textproc/icu4c

CONFIGURE_ARGS =	-DUSE_STD_MAP=ON \
			-DREGENERATE_METADATA=OFF

WRKSRC =		${WRKDIST}/cpp

TEST_TARGET =		tests

.include <bsd.port.mk>
