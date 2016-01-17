# $OpenBSD: Makefile,v 1.4 2016/01/17 17:29:10 sthen Exp $

COMMENT=	PHP interface to memcached via libmemcached

DISTNAME=	memcached-2.2.0
REVISION=	1

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += memcached memcachedutil pthread sasl2 z

MODULES=	lang/php/pecl
LIB_DEPENDS=	devel/libmemcached

CONFIGURE_STYLE= gnu

CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib ${LDFLAGS}"

TEST_DEPENDS=	misc/memcached
TEST_IS_INTERACTIVE= ensure that memcached is running first

.include <bsd.port.mk>
