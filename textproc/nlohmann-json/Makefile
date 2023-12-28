COMMENT =	JSON for modern C++

# the "release" contain only json.hpp, and we want tests and CMake config file
V =		3.11.2
DIST_TUPLE =	github	nlohmann	json	v${V}	.
PKGNAME =	nlohmann-json-${V}

TEST_DATA_DIR =	tests/test_data
DIST_TUPLE +=	github	nlohmann	json_test_data	v3.1.0	${TEST_DATA_DIR}

CATEGORIES =	devel textproc

HOMEPAGE =	https://nlohmann.github.io/json/

# MIT
PERMIT_PACKAGE =	Yes

# C++11
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

CONFIGURE_ARGS =	-DJSON_TestDataDirectory=${WRKSRC}/${TEST_DATA_DIR}

# only tests are built, defer compilation to running tests
NO_BUILD =		Yes

pre-test:
	@${MODCMAKE_BUILD_TARGET}

# overwrite target, devel/cmake MODULE cannot pass ctest(1) arguments
do-test:
	# skip known to tail tests
	@${MODCMAKE_TEST_TARGET} -LE git_required

.include <bsd.port.mk>
