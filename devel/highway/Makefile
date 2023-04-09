COMMENT =	length-agnostic SIMD with runtime dispatch

GH_ACCOUNT =	google
GH_PROJECT =	highway
GH_TAGNAME =	1.0.3
REVISION =	0

CATEGORIES =	devel

SHARED_LIBS +=	hwy		0.0 # 0.0
SHARED_LIBS +=	hwy_contrib	0.0 # 0.0
SHARED_LIBS +=	hwy_test	0.0 # 0.0

# Apache-2.0
PERMIT_PACKAGE =	Yes

# C++
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

BUILD_DEPENDS =	devel/gtest

WANTLIB +=	${COMPILER_LIBCXX} m

CONFIGURE_ARGS +=	-DHWY_SYSTEM_GTEST=ON \
			-DBUILD_SHARED_LIBS=ON

.include <bsd.port.mk>
