# $OpenBSD: Makefile,v 1.1.1.1 2021/07/10 12:03:19 landry Exp $

COMMENT =	language recognition library

V =		4.5.15
MODULE =	belr

SHARED_LIBS +=	belr 0.0 # 1

CONFIGURE_ARGS =-DENABLE_STATIC=NO \
		-DENABLE_TESTS=NO

LIB_DEPENDS =	telephony/linphone/bctoolbox
WANTLIB +=	${COMPILER_LIBCXX} bctoolbox c m

FIX_CRLF_FILES =	CMakeLists.txt

pre-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
