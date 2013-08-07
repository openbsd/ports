# $OpenBSD: Makefile,v 1.23 2013/08/07 21:32:11 naddy Exp $

COMMENT=	distributed memory object caching system

DISTNAME =	memcached-1.4.14
REVISION =	0
CATEGORIES=	misc

HOMEPAGE=	http://www.memcached.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c event pthread

MASTER_SITES=		https://memcached.googlecode.com/files/
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
