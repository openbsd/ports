COMMENT =		guidelines support library
DIST_TUPLE =		github	microsoft	GSL	v5.0.0	.
# must not be gsl-*, devel/gsl already exists
PKGNAME =		microsoft-${DISTNAME:L}
CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# just header files
PKG_ARCH =		*

# NO_BUILD may be set, but cmake gets upset
# C++17
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

BUILD_DEPENDS =		devel/gtest
TEST_DEPENDS =		devel/gtest

# gtest requires >=17
CONFIGURE_ARGS =	-DGSL_CXX_STANDARD=17

# build tests only when running them
NO_BUILD =		Yes

pre-test:
	${MODCMAKE_BUILD_TARGET}

.include <bsd.port.mk>
