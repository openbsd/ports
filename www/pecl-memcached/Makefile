# $OpenBSD: Makefile,v 1.9 2018/12/12 23:46:18 sthen Exp $

COMMENT=	PHP interface to memcached via libmemcached

DISTNAME=	memcached-3.0.4
REVISION=	0

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c memcached memcachedutil pthread sasl2 z

MODULES=	lang/php/pecl
LIB_DEPENDS=	devel/libmemcached

CONFIGURE_STYLE= gnu

CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib ${LDFLAGS}"

TEST_DEPENDS=	misc/memcached
TEST_IS_INTERACTIVE= ensure that memcached is running first

.include <bsd.port.mk>
