# $OpenBSD: Makefile,v 1.5 2020/12/11 22:34:51 sthen Exp $

COMMENT	=	eventing, networking & crypto for async applications
CATEGORIES =	net

VERSION =	0.6.0
REVISION =	1

DISTNAME =	usockets-${VERSION}
PKGNAME =	${DISTNAME:L}

SHARED_LIBS =	usockets 1.0

GH_ACCOUNT =	uNetworking
GH_PROJECT =	uSockets
#GH_TAGNAME =	v0.6.0
# cstdlib include error
GH_COMMIT =	7683672d87067cd75b854f4e36b9820f4809a4be


MAINTAINER =	Aisha Tammy <openbsd@aisha.cc>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} crypto ssl uv

# C11 C++17
COMPILER =	base-clang ports-gcc

LIB_DEPENDS =	devel/libuv

USE_GMAKE =	Yes
MAKE_FLAGS =	CFLAGS="${CFLAGS}" CXXFLAGS="${CXXFLAGS}" \
		CC="${CC}" CXX="${CXX}" \
		LIBusockets_VERSION="${LIBusockets_VERSION}"

NO_TEST =	Yes

.include <bsd.port.mk>
