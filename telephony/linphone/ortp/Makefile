COMMENT =	library implementing the RTP protocol

MODULE =	ortp

SHARED_LIBS +=  ortp 0.0 # 15

CONFIGURE_ARGS= -DENABLE_STATIC=NO \
		-DENABLE_TESTS=NO \
		-DENABLE_DOC=NO

LIB_DEPENDS =	telephony/linphone/bctoolbox

WANTLIB += ${COMPILER_LIBCXX} bctoolbox m

post-install:
	rm -Rf ${PREFIX}/share/doc/ortp*

.include <bsd.port.mk>
