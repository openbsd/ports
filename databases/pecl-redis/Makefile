COMMENT=	PHP interface to redis

DISTNAME=	redis-6.3.0

CATEGORIES=	databases

# PHP
PERMIT_PACKAGE=	Yes

# needs __BYTE_ORDER__
COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB=	c

MODULES=	lang/php/pecl

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-redis

.include <bsd.port.mk>
