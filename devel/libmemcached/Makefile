# $OpenBSD: Makefile,v 1.25 2019/07/12 21:02:14 sthen Exp $

COMMENT=		C C++ API for memcached

VERSION=		1.0.18
REVISION=		3
DISTNAME=		libmemcached-${VERSION}
CATEGORIES=		devel misc

HOMEPAGE=		http://libmemcached.org/
MASTER_SITES=		http://launchpad.net/libmemcached/1.0/${VERSION}/+download/

MAINTAINER=		Sebastian Reitenbach <sebastia@openbsd.org>

SHARED_LIBS +=  memcached                 1.0 # 0.0
SHARED_LIBS +=  hashkit                   1.0 # 0.0
SHARED_LIBS +=  memcachedutil             1.0 # 1.0

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c ${COMPILER_LIBCXX} m pthread sasl2

COMPILER =		base-clang ports-gcc base-gcc

BUILD_DEPENDS=	sysutils/e2fsprogs # detects libuuid in autoconf; only used when building tests
LIB_DEPENDS= 	security/cyrus-sasl2
TEST_DEPENDS=	misc/memcached
USE_GMAKE=	yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV += 	CFLAGS="${CFLAGS} -I${LOCALBASE}/include"
CONFIGURE_ENV +=	CXXFLAGS="${CFLAGS} -I${LOCALBASE}/include"
CONFIGURE_ENV +=	LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

.include "bsd.port.mk"
