# $OpenBSD: Makefile,v 1.5 2020/02/03 20:40:38 sthen Exp $

COMMENT=	minimalistic C client for Redis

GH_ACCOUNT=	redis
GH_PROJECT=	hiredis
GH_TAGNAME=	v0.14.0
PKGNAME=	lib${DISTNAME}
REVISION=	0

SHARED_LIBS=	hiredis 0.1 # 0.13

CATEGORIES=	databases devel

# BSD
PERMIT_PACKAGE=	Yes

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
