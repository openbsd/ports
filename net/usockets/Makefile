COMMENT	=	eventing, networking & crypto for async applications
PKGNAME =	${DISTNAME:L}

CATEGORIES =	net

SHARED_LIBS =	usockets 2.0

GH_ACCOUNT =	uNetworking
GH_PROJECT =	uSockets
GH_TAGNAME =	v0.8.1

MAINTAINER =	Aisha Tammy <openbsd@aisha.cc>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=	${COMPILER_LIBCXX} crypto m ssl uv

# C11 C++17
COMPILER =	base-clang ports-gcc

LIB_DEPENDS =	devel/libuv

MAKE_ENV =	LIBusockets_VERSION="${LIBusockets_VERSION}"

# tests need A LOT of file desrciptors ~5000-6000

post-patch:
	cp "${FILESDIR}"/{Makefile,libusockets.pc.in,localhost.conf} "${WRKSRC}"

.include <bsd.port.mk>
