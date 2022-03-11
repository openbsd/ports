COMMENT=	distributed memory object caching system

DISTNAME=	memcached-1.6.9
CATEGORIES=	misc

HOMEPAGE=	https://www.memcached.org/

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB += c crypto event pthread ssl event_core

FLAVOR?=
FLAVORS=	sasl

MASTER_SITES=		http://memcached.org/files/

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=		--disable-coverage \
			--disable-docs \
			--enable-tls
TEST_TARGET=		test
TEST_DEPENDS=		devel/p5-Test-MockSleep
LIB_DEPENDS=		devel/libevent2

.if ${FLAVOR:Msasl}
CONFIGURE_ARGS+=	--enable-sasl
LIB_DEPENDS+=		security/cyrus-sasl2
WANTLIB+=		sasl2
.else
CONFIGURE_ARGS+=	--disable-sasl
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/memcached
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${PREFIX}/share/doc/memcached
	${INSTALL_SCRIPT} ${WRKSRC}/scripts/memcached-tool ${PREFIX}/bin/memcached-tool
	${INSTALL_DATA} ${WRKSRC}/scripts/memcached-tool.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
