# $OpenBSD: Makefile,v 1.18 2016/02/17 12:42:21 sthen Exp $

COMMENT=		C C++ API for memcached

VERSION=		1.0.18
REVISION=		0
DISTNAME=		libmemcached-${VERSION}
CATEGORIES=		devel misc

HOMEPAGE=		http://libmemcached.org/
MASTER_SITES=		http://launchpad.net/libmemcached/1.0/${VERSION}/+download/

MAINTAINER=		Sebastian Reitenbach <sebastia@openbsd.org>

SHARED_LIBS +=  memcached                 1.0 # 0.0
SHARED_LIBS +=  hashkit                   1.0 # 0.0
SHARED_LIBS +=  memcachedutil             1.0 # 1.0

# BSD
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += c stdc++ m pthread sasl2

LIB_DEPENDS= 	security/cyrus-sasl2
TEST_DEPENDS=	misc/memcached
USE_GMAKE=	yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV += 	CFLAGS="${CFLAGS} -I${LOCALBASE}/include"
CONFIGURE_ENV +=	CXXFLAGS="${CFLAGS} -I${LOCALBASE}/include"
CONFIGURE_ENV +=	LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

.include "bsd.port.mk"
