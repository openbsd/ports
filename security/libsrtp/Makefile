# $OpenBSD: Makefile,v 1.11 2019/12/24 15:34:21 sthen Exp $

SHARED_LIBS +=  srtp2                     1.0 # 0.0

COMMENT=	secure RTP library

GH_ACCOUNT=	cisco
GH_PROJECT=	libsrtp
GH_TAGNAME=	v2.3.0

CATEGORIES=	security telephony

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

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
