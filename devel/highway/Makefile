COMMENT =	length-agnostic SIMD with runtime dispatch

GH_ACCOUNT =	google
GH_PROJECT =	highway
GH_TAGNAME =	1.1.0

CATEGORIES =	devel

SHARED_LIBS +=	hwy		0.1 # 0.0
SHARED_LIBS +=	hwy_contrib	0.1 # 0.0
SHARED_LIBS +=	hwy_test	0.1 # 0.0

# Apache-2.0
PERMIT_PACKAGE =	Yes

# C++
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

BUILD_DEPENDS =	devel/gtest

WANTLIB +=	${COMPILER_LIBCXX} m

CONFIGURE_ARGS +=	-DHWY_SYSTEM_GTEST=ON \
			-DBUILD_SHARED_LIBS=ON

# everything except tests
ALL_TARGET =	${SHARED_LIBS:Mhwy*}

# build whatever is left
pre-test:
	@${MODCMAKE_BUILD_TARGET}

.include <bsd.port.mk>
