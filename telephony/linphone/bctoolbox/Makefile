# $OpenBSD: Makefile,v 1.1.1.1 2021/07/10 12:03:19 landry Exp $

COMMENT =	utilities library used by linphone stack

V =		4.5.15
MODULE =	bctoolbox

SHARED_LIBS +=	bctoolbox 0.0 # 1
#SHARED_LIBS +=	bctoolbox-tester 0.0 # 1

CONFIGURE_ARGS =-DENABLE_STATIC=NO
CONFIGURE_ARGS +=-DENABLE_TESTS=NO
CONFIGURE_ARGS +=-DENABLE_TESTS_COMPONENT=NO
MAKE_FLAGS +=CPPFLAGS=-I${LOCALBASE}/include

LIB_DEPENDS =	security/polarssl \
		converters/libiconv

MODCMAKE_DEBUG=Yes
WANTLIB +=	${COMPILER_LIBCXX} iconv m mbedcrypto mbedtls mbedx509
# regen PLIST if building with tests
#LIB_DEPENDS +=	telephony/linphone/bcunit
#WANTLIB +=	bcunit

pre-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt ${WRKSRC}/src/CMakeLists.txt

#do-test:
#	${WRKBUILD}/tester/bctoolbox_tester --verbose

.include <bsd.port.mk>
