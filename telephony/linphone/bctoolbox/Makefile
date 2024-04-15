COMMENT =	utilities library used by linphone stack

MODULE =	bctoolbox

SHARED_LIBS +=	bctoolbox 1.0 # 1
SHARED_LIBS +=	bctoolbox-tester 0.0 # 1

CONFIGURE_ARGS =-DBUILD_SHARED_LIBS=YES
CONFIGURE_ARGS +=-DENABLE_TESTS=YES
CONFIGURE_ARGS +=-DENABLE_TESTS_COMPONENT=YES
MAKE_FLAGS +=CPPFLAGS=-I${LOCALBASE}/include

# links statically
BUILD_DEPENDS =	telephony/linphone/bcunit
LIB_DEPENDS =	security/polarssl \
		converters/libiconv

MODCMAKE_DEBUG=Yes
WANTLIB +=	${COMPILER_LIBCXX} c execinfo iconv m mbedcrypto mbedtls mbedx509

do-test:
	${WRKBUILD}/tester/bctoolbox-tester --verbose

post-build:
	# fix nonsens in generated stuff containing INTERFACE_INCLUDE_DIRECTORIES "/include;${_IMPORT_PREFIX}/include"
	sed -i -e 's#/include;##' ${WRKBUILD}/CMakeFiles/Export/683763752a6b42e2dc2c34fc570251c6/BCToolboxTargets.cmake

.include <bsd.port.mk>
