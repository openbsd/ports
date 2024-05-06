COMMENT =	redux for C++

GH_ACCOUNT =	arximboldi
GH_PROJECT =	lager
GH_TAGNAME =	v0.1.1
REVISION =	0

CATEGORIES =	devel

HOMEPAGE =	https://sinusoid.es/lager

# BSL-1.0
PERMIT_PACKAGE =	Yes

# C++14
COMPILER =		base-clang ports-clang ports-gcc

MODULES =		devel/cmake \
			lang/python

NO_BUILD =		Yes

BUILD_DEPENDS =		devel/catch2 \
			devel/boost \
			devel/immer \
			devel/zug

CONFIGURE_ARGS =	-Dlager_BUILD_FAILURE_TESTS=OFF \
			-Dlager_BUILD_EXAMPLES=OFF \
			-Dlager_BUILD_DEBUGGER_EXAMPLES=OFF

# Depends on Qt5
CONFIGURE_ARGS +=	-Dlager_BUILD_TESTS=OFF

.include <bsd.port.mk>
