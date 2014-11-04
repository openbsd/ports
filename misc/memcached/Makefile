# $OpenBSD: Makefile,v 1.26 2014/11/04 15:11:05 giovanni Exp $

COMMENT=	distributed memory object caching system

DISTNAME=	memcached-1.4.21
CATEGORIES=	misc

HOMEPAGE=	http://www.memcached.org/

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

LIB_DEPENDS=		security/cyrus-sasl2
WANTLIB=		c event pthread sasl2

MASTER_SITES=		http://memcached.org/files/

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=		--with-libevent=/usr \
			--disable-coverage \
			--disable-docs \
			--enable-sasl
TEST_TARGET=		test
TEST_DEPENDS=		devel/p5-Test-MockSleep

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/memcached
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${PREFIX}/share/doc/memcached

.include <bsd.port.mk>
