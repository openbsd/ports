# $OpenBSD: Makefile,v 1.1.1.1 2018/04/26 15:02:32 sthen Exp $

COMMENT=	PHP interface to memcached via libmemcached

DISTNAME=	memcached-2.2.0
REVISION=	3

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c memcached memcachedutil pthread sasl2 z

MODULES=	lang/php/pecl
MODPECL_V=	5.6
LIB_DEPENDS=	devel/libmemcached

CONFIGURE_STYLE= gnu

CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib ${LDFLAGS}"

TEST_DEPENDS=	misc/memcached
TEST_IS_INTERACTIVE= ensure that memcached is running first

.include <bsd.port.mk>
