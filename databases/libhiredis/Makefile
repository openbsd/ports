# $OpenBSD: Makefile,v 1.6 2020/05/29 13:02:29 sthen Exp $

COMMENT=	minimalistic C client for Redis

GH_ACCOUNT=	redis
GH_PROJECT=	hiredis
GH_TAGNAME=	v0.14.1
PKGNAME=	lib${DISTNAME}

SHARED_LIBS=	hiredis		0.2

CATEGORIES=	databases devel

# BSD
PERMIT_PACKAGE=	Yes

DEBUG_PACKAGES=	${BUILD_PACKAGES}

LIBV=		HIREDIS_MAJOR=${LIBhiredis_VERSION:R} \
		HIREDIS_MINOR=${LIBhiredis_VERSION:E} \
		HIREDIS_SONAME=${LIBhiredis_VERSION}
MAKE_FLAGS=	OPTIMIZATION= DEBUG= ${LIBV}
FAKE_FLAGS=	INSTALL="cp -r" PREFIX="${TRUEPREFIX}" ${LIBV}

USE_GMAKE=	Yes

# needs redis to be running for some tests
TEST_IS_INTERACTIVE= Yes

post-install:
	rm -f ${PREFIX}/lib/libhiredis.so

.include <bsd.port.mk>
