# $OpenBSD: Makefile,v 1.25 2014/07/15 18:17:06 giovanni Exp $

COMMENT=	distributed memory object caching system

DISTNAME=	memcached-1.4.20
CATEGORIES=	misc

HOMEPAGE=	http://www.memcached.org/

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c event pthread

MASTER_SITES=		http://memcached.org/files/

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-libevent=/usr \
			--disable-coverage \
			--disable-docs
TEST_TARGET=		test
TEST_DEPENDS=		devel/p5-Test-MockSleep

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/memcached
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${PREFIX}/share/doc/memcached

.include <bsd.port.mk>
