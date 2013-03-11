# $OpenBSD: Makefile,v 1.21 2013/03/11 11:23:57 espie Exp $

COMMENT=	distributed memory object caching system

DISTNAME =	memcached-1.4.14
CATEGORIES=	misc

HOMEPAGE=	http://www.memcached.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c event pthread

MASTER_SITES=		http://memcached.googlecode.com/files/
MASTER_SITES0=		${HOMEPAGE}/dist/

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-libevent=/usr \
			--disable-coverage \
			--disable-docs
TEST_TARGET=		test

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/memcached
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${PREFIX}/share/doc/memcached

.include <bsd.port.mk>
