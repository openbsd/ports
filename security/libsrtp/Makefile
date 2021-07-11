# $OpenBSD: Makefile,v 1.14 2021/07/11 11:30:54 landry Exp $

SHARED_LIBS +=  srtp2                     2.1 # 0.0

COMMENT=	secure RTP library

GH_ACCOUNT=	cisco
GH_PROJECT=	libsrtp
GH_TAGNAME=	v2.3.0
REVISION=	2

CATEGORIES=	security telephony

# BSD
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE= gnu

MAKE_FLAGS=	SHAREDLIBVERSION=${LIBsrtp2_VERSION}
DEBUG_PACKAGES=	${BUILD_PACKAGES}

USE_GMAKE=	Yes
ALL_TARGET=	all shared_library
TEST_TARGET=	runtest

post-install:
	rm ${PREFIX}/lib/libsrtp2.so

.include <bsd.port.mk>
