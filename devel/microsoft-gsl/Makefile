COMMENT =		guidelines support library
GH_ACCOUNT =		microsoft
GH_PROJECT =		GSL
V =			4.0.0
GH_TAGNAME =		v${V}
DISTNAME =		microsoft-gsl-${V}
CATEGORIES =		devel
REVISION =		0

# MIT
PERMIT_PACKAGE =	Yes

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# just header files
PKG_ARCH =		*

MODULES =		devel/cmake

BUILD_DEPENDS =		devel/gtest
TEST_DEPENDS =		devel/gtest

# build tests only when running them
NO_BUILD =		Yes

pre-test:
	#
	${MODCMAKE_BUILD_TARGET}

.include <bsd.port.mk>
