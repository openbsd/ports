COMMENT =		guidelines support library
DISTNAME =		microsoft-gsl-$V
GH_ACCOUNT =		microsoft
GH_PROJECT =		GSL
V =			4.2.1
GH_TAGNAME =		v$V
CATEGORIES =		devel
REVISION =		0

# MIT
PERMIT_PACKAGE =	Yes

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# just header files
PKG_ARCH =		*

# NO_BUILD may be set, but cmake gets upset
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

BUILD_DEPENDS =		devel/gtest
TEST_DEPENDS =		devel/gtest

# build tests only when running them
NO_BUILD =		Yes

pre-test:
	${MODCMAKE_BUILD_TARGET}

.include <bsd.port.mk>
