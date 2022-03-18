COMMENT =	utilities library used by linphone stack

MODULE =	bctoolbox
REVISION =	0

SHARED_LIBS +=	bctoolbox 0.0 # 1
#SHARED_LIBS +=	bctoolbox-tester 0.0 # 1

CONFIGURE_ARGS =-DENABLE_STATIC=NO
CONFIGURE_ARGS +=-DENABLE_TESTS=NO
CONFIGURE_ARGS +=-DENABLE_TESTS_COMPONENT=NO
MAKE_FLAGS +=CPPFLAGS=-I${LOCALBASE}/include

LIB_DEPENDS =	security/polarssl \
		converters/libiconv

MODCMAKE_DEBUG=Yes
WANTLIB +=	${COMPILER_LIBCXX} execinfo iconv m mbedcrypto mbedtls mbedx509
# regen PLIST if building with tests
#LIB_DEPENDS +=	telephony/linphone/bcunit
#WANTLIB +=	bcunit

#do-test:
#	${WRKBUILD}/tester/bctoolbox_tester --verbose

.include <bsd.port.mk>
