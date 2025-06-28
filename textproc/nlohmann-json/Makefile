COMMENT =	JSON for modern C++

# the "release" contain only json.hpp, and we want tests and CMake config file
V =		3.12.0
DIST_TUPLE =	github	nlohmann	json	v${V}	.
PKGNAME =	nlohmann-json-${V}

TEST_DATA_DIR =	tests/test_data
DIST_TUPLE +=	github	nlohmann	json_test_data	v3.1.0	${TEST_DATA_DIR}

CATEGORIES =	devel textproc

HOMEPAGE =	https://nlohmann.github.io/json/

# MIT
PERMIT_PACKAGE =	Yes

# C++11 header only lib
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

CONFIGURE_ARGS =	-DJSON_TestDataDirectory=${WRKSRC}/${TEST_DATA_DIR}

# only tests are built, defer compilation to running tests
NO_BUILD =		Yes

pre-test:
	@${MODCMAKE_BUILD_TARGET}

# One test fails due to lack of LC_NUMERIC support in OpenBSD:
# 49: /usr/ports/pobj/nlohmann-json-3.12.0/json-3.12.0/tests/src/unit-locale-cpp.cpp:134:
# 49: TEST CASE:  locale-dependent test (LC_NUMERIC=de_DE)
# 49:   check if locale is properly set
# 49:
# 49: /usr/ports/pobj/nlohmann-json-3.12.0/json-3.12.0/tests/src/unit-locale-cpp.cpp:142: ERROR: CHECK( std::string(buffer.data()) == "12,34" ) is NOT correct!
# 49:   values: CHECK( 12.34 == 12,34 )

# overwrite target, devel/cmake MODULE cannot pass ctest(1) arguments
do-test:
	# skip known to tail tests
	@${MODCMAKE_TEST_TARGET} -LE git_required

.include <bsd.port.mk>
