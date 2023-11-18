COMMENT =	utilities library used by linphone stack

MODULE =	bctoolbox
REVISION =	0

SHARED_LIBS +=	bctoolbox 0.3 # 1
SHARED_LIBS +=	bctoolbox-tester 0.0 # 1

CONFIGURE_ARGS =-DENABLE_STATIC=NO
CONFIGURE_ARGS +=-DENABLE_TESTS=YES
CONFIGURE_ARGS +=-DENABLE_TESTS_COMPONENT=YES
MAKE_FLAGS +=CPPFLAGS=-I${LOCALBASE}/include

LIB_DEPENDS =	security/polarssl \
		telephony/linphone/bcunit \
		converters/libiconv

MODCMAKE_DEBUG=Yes
WANTLIB +=	${COMPILER_LIBCXX} c bcunit execinfo iconv m mbedcrypto mbedtls mbedx509

do-test:
	${WRKBUILD}/tester/bctoolbox_tester --verbose

.include <bsd.port.mk>
