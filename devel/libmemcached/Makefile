# $OpenBSD: Makefile,v 1.16 2015/11/10 08:43:36 sebastia Exp $

COMMENT=		C C++ API for memcached

VERSION=		1.0.18
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
LIB_DEPENDS= 		security/cyrus-sasl2
TEST_DEPENDS=	misc/memcached
USE_GMAKE =	yes

# XXX Build memslap (benchmark tool) only on systems with GCC atomic built-ins. 
.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386" || \
    ${MACHINE_ARCH} == "sparc64"
PKG_ARGS+=		-Datomic=1
.else
PKG_ARGS+=		-Datomic=0
pre-configure:
	@perl -pi -e 's|am__EXEEXT_1 |#am__EXEEXT_1 |g' ${WRKSRC}/Makefile.in
.endif

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV += 	CFLAGS="${CFLAGS} -I${LOCALBASE}/include"
CONFIGURE_ENV +=	CXXFLAGS="${CFLAGS} -I${LOCALBASE}/include"
CONFIGURE_ENV +=	LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

.include "bsd.port.mk"
