# $OpenBSD: Makefile,v 1.1.1.1 2021/07/10 12:03:20 landry Exp $

COMMENT =	library implementing the RTP protocol

V =		4.5.15
MODULE =	ortp

SHARED_LIBS +=  ortp 0.0 # 15

CONFIGURE_ARGS= -DENABLE_STATIC=NO \
		-DENABLE_TESTS=NO \
		-DENABLE_DOC=NO

LIB_DEPENDS =	telephony/linphone/bctoolbox

WANTLIB += ${COMPILER_LIBCXX} bctoolbox m

pre-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

post-install:
	rm -Rf ${PREFIX}/share/doc/ortp*

.include <bsd.port.mk>
