# $OpenBSD: Makefile,v 1.13 2014/03/21 00:41:18 sthen Exp $

COMMENT=		C C++ API for memcached

VERSION=		0.48
DISTNAME=		libmemcached-${VERSION}
REVISION=		1
CATEGORIES=		devel misc

HOMEPAGE=		http://libmemcached.org/
MASTER_SITES=		http://launchpad.net/libmemcached/1.0/${VERSION}/+download/

MAINTAINER=		Sebastian Reitenbach <sebastia@openbsd.org>

SHARED_LIBS +=  memcached                 0.0 # 0.0
SHARED_LIBS +=  hashkit                   0.0 # 0.0
SHARED_LIBS +=  memcachedprotocol         0.0 # 0.0
SHARED_LIBS +=  memcachedutil             0.0 # 1.0

# BSD
PERMIT_PACKAGE_CDROM=   Yes

USE_GROFF =	Yes
WANTLIB += c event m pthread sasl2
LIB_DEPENDS= 		security/cyrus-sasl2
TEST_DEPENDS=	misc/memcached

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
CONFIGURE_ENV+=		LDFLAGS="-L${LOCALBASE}/lib" 
CONFIGURE_ENV+= 	CFLAGS="-I${LOCALBASE}/include"

.include "bsd.port.mk"
