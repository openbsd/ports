# $OpenBSD: Makefile,v 1.3 2020/09/17 01:38:30 bcallah Exp $

COMMENT	=	eventing, networking & crypto for async applications
PKGNAME =	${DISTNAME:L}
CATEGORIES =	net

SHARED_LIBS =	usockets 1.0

GH_ACCOUNT =	uNetworking
GH_PROJECT =	uSockets
GH_TAGNAME =	v0.6.0

MAINTAINER =	Aisha Tammy <openbsd@aisha.cc>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} crypto ssl uv

# C11 C++17
COMPILER =	base-clang ports-gcc

LIB_DEPENDS =	devel/libuv

USE_GMAKE =	Yes
ALL_TARGET =	default
MAKE_FLAGS =	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib" \
		CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" \
		LIBusockets_VERSION="${LIBusockets_VERSION}" \
		WITH_OPENSSL=1 WITH_LIBUV=1

NO_TEST =	Yes

.include <bsd.port.mk>
