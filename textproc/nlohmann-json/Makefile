COMMENT =	JSON for modern C++

# the "release" contain only json.hpp, and we want tests and CMake config file
V =		3.11.2
GH_ACCOUNT =	nlohmann
GH_PROJECT =	json
GH_TAGNAME =	v${V}
DISTNAME =	nlohmann-json-${V}

CATEGORIES =	devel textproc

HOMEPAGE =	https://nlohmann.github.io/json/

# MIT
PERMIT_PACKAGE =	Yes

# C++11
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

# only tests are built, defer compilation to running tests
NO_BUILD =		Yes
# only 4 tests that try to git clone fail
pre-test:
	@${MODCMAKE_BUILD_TARGET}

.include <bsd.port.mk>
